"""Score one recording from UTF-8 TSV: speaker_id, start_ms, end_ms, text.

WER: NFKC/casefold, Unicode words, punctuation ignored, ё retained.
Simultaneous turns require a consistent text order in both TSV files.
DER: exact interval sweep, zero collar, overlap included, optimal one-to-one
speaker mapping. No audio inference; results depend on supplied annotations.
"""

import argparse
import csv
from collections import Counter, defaultdict
from dataclasses import dataclass
from pathlib import Path
import re
import unicodedata


@dataclass(frozen=True)
class Segment:
    speaker: str
    start: int
    end: int
    text: str


def read_tsv(path):
    with Path(path).open(encoding="utf-8-sig", newline="") as stream:
        rows = csv.DictReader(stream, delimiter="\t")
        required = {"speaker_id", "start_ms", "end_ms", "text"}
        if not required.issubset(rows.fieldnames or ()):
            raise ValueError(f"{path}: required columns {sorted(required)}")
        result = []
        for row in rows:
            segment = Segment(row["speaker_id"], int(row["start_ms"]),
                              int(row["end_ms"]), row["text"])
            if not segment.speaker or not 0 <= segment.start < segment.end:
                raise ValueError(f"{path}: invalid interval or speaker at row {rows.line_num}")
            result.append(segment)
    # Stable input order resolves equal-time turns; arbitrary speaker labels must not order text.
    return sorted(result, key=lambda item: (item.start, item.end))


def words(segments):
    text = " ".join(item.text for item in segments)
    return re.findall(r"[^\W_]+", unicodedata.normalize("NFKC", text).casefold())


def distance(reference, hypothesis):
    previous = list(range(len(hypothesis) + 1))
    for i, expected in enumerate(reference, 1):
        current = [i]
        for j, actual in enumerate(hypothesis, 1):
            current.append(min(current[-1] + 1, previous[j] + 1,
                               previous[j - 1] + (expected != actual)))
        previous = current
    return previous[-1]


def best_mapping(reference_ids, hypothesis_ids, weights):
    """Hungarian assignment with zero-weight dummy speakers, O(speakers**3)."""
    size = max(len(reference_ids), len(hypothesis_ids))
    if not size:
        return {}
    costs = [[-weights.get((reference_ids[i], hypothesis_ids[j]), 0)
              if i < len(reference_ids) and j < len(hypothesis_ids) else 0
              for j in range(size)] for i in range(size)]
    u, v, matched, way = ([0] * (size + 1) for _ in range(4))
    for row in range(1, size + 1):
        matched[0] = row
        minimum = [float("inf")] * (size + 1)
        used = [False] * (size + 1)
        column = 0
        while True:
            used[column] = True
            source = matched[column]
            delta, following = float("inf"), 0
            for candidate in range(1, size + 1):
                if not used[candidate]:
                    cost = costs[source - 1][candidate - 1] - u[source] - v[candidate]
                    if cost < minimum[candidate]:
                        minimum[candidate], way[candidate] = cost, column
                    if minimum[candidate] < delta:
                        delta, following = minimum[candidate], candidate
            for candidate in range(size + 1):
                if used[candidate]:
                    u[matched[candidate]] += delta
                    v[candidate] -= delta
                else:
                    minimum[candidate] -= delta
            column = following
            if matched[column] == 0:
                break
        while column:
            previous = way[column]
            matched[column] = matched[previous]
            column = previous
    return {hypothesis_ids[column - 1]: reference_ids[matched[column] - 1]
            for column in range(1, size + 1)
            if column <= len(hypothesis_ids) and 1 <= matched[column] <= len(reference_ids)}


def diarization(reference, hypothesis):
    events = defaultdict(list)
    for side, segments in enumerate((reference, hypothesis)):
        for segment in segments:
            events[segment.start].append((side, segment.speaker, 1))
            events[segment.end].append((side, segment.speaker, -1))
    active = [Counter(), Counter()]
    intervals, weights = [], Counter()
    previous = 0
    for time in sorted(events):
        if time > previous:
            expected, actual = (frozenset(key for key, count in group.items() if count > 0)
                                for group in active)
            duration = time - previous
            intervals.append((duration, expected, actual))
            for left in expected:
                for right in actual:
                    weights[left, right] += duration
        for side, speaker, change in events[time]:
            active[side][speaker] += change
        previous = time
    mapping = best_mapping(sorted({s.speaker for s in reference}),
                           sorted({s.speaker for s in hypothesis}), weights)
    total = miss = false_alarm = confusion = 0
    for duration, expected, actual in intervals:
        correct = sum(mapping.get(speaker) in expected for speaker in actual)
        total += len(expected) * duration
        miss += max(0, len(expected) - len(actual)) * duration
        false_alarm += max(0, len(actual) - len(expected)) * duration
        confusion += (min(len(expected), len(actual)) - correct) * duration
    return total, miss, false_alarm, confusion


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("reference")
    parser.add_argument("hypothesis")
    args = parser.parse_args()
    reference, hypothesis = read_tsv(args.reference), read_tsv(args.hypothesis)
    expected, actual = words(reference), words(hypothesis)
    errors = distance(expected, actual)
    total, miss, false_alarm, confusion = diarization(reference, hypothesis)
    print(f"word_errors={errors} reference_words={len(expected)}")
    print(f"WER={errors / len(expected):.6f}" if expected else "WER=N/A (empty reference)")
    print(f"reference_speaker_ms={total} miss_ms={miss} false_alarm_ms={false_alarm} confusion_ms={confusion}")
    print(f"DER={(miss + false_alarm + confusion) / total:.6f}" if total else "DER=N/A (no reference speech)")
    print("protocol=zero collar; overlap included; optimal permutation; single recording")


if __name__ == "__main__":
    main()
