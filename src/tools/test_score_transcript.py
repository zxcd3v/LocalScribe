import itertools
import unittest
from score_transcript import Segment, best_mapping, diarization, distance, words


class MetricsTest(unittest.TestCase):
    def test_permuted_speakers_are_not_errors(self):
        reference = [Segment("a", 0, 1000, "Привет, мир!"), Segment("b", 1000, 2000, "Да")]
        hypothesis = [Segment("y", 0, 1000, "привет мир"), Segment("x", 1000, 2000, "да")]
        self.assertEqual((2000, 0, 0, 0), diarization(reference, hypothesis))
        self.assertEqual(0, distance(words(reference), words(hypothesis)))

    def test_overlap_counts_speaker_time_and_miss(self):
        reference = [Segment("a", 0, 2000, ""), Segment("b", 1000, 2000, "")]
        hypothesis = [Segment("x", 0, 2000, "")]
        self.assertEqual((3000, 1000, 0, 0), diarization(reference, hypothesis))

    def test_false_alarm_outside_reference_is_scored(self):
        self.assertEqual((1000, 0, 1000, 0), diarization(
            [Segment("a", 1000, 2000, "")], [Segment("x", 0, 2000, "")]))

    def test_switching_one_identity_creates_confusion(self):
        self.assertEqual((2000, 0, 0, 1000), diarization(
            [Segment("a", 0, 2000, "")],
            [Segment("x", 0, 1000, ""), Segment("y", 1000, 2000, "")]))

    def test_optimal_assignment_matches_exhaustive_search(self):
        reference, hypothesis = list("abc"), list("xyz")
        weights = {(a, b): ((i * 7 + j * 11 + i * j * 5) % 19)
                   for i, a in enumerate(reference) for j, b in enumerate(hypothesis)}
        mapping = best_mapping(reference, hypothesis, weights)
        score = sum(weights[a, b] for b, a in mapping.items())
        oracle = max(sum(weights[a, b] for a, b in zip(reference, order))
                     for order in itertools.permutations(hypothesis))
        self.assertEqual(oracle, score)

    def test_word_insert_delete_substitute(self):
        self.assertEqual(3, distance("а б в г".split(), "а д е".split()))


if __name__ == "__main__":
    unittest.main()
