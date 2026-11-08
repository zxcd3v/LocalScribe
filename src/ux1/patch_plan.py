"""Produce bounded line edits; the editor applies them with backups."""
from pathlib import Path
import json
import re
import difflib

root = Path(__file__).resolve().parent / 'fullcode'
plans = {}

def edit_method(relative, method, transform):
    path = root / relative
    text = path.read_text(encoding='utf-8')
    match = next((m for m in re.finditer(r'^\.method [^\n]+\n[\s\S]*?^\.end method', text, re.M)
                  if method in m.group().split('\n')[0]), None)
    assert match, (relative, method)
    original = match.group()
    updated = transform(original)
    assert updated != original, (relative, method, 'unchanged')
    start = text.count('\n', 0, match.start()) + 1
    before, after = original.splitlines(), updated.splitlines()
    for tag, i1, i2, j1, j2 in difflib.SequenceMatcher(None, before, after, autojunk=False).get_opcodes():
        if tag == 'equal':
            continue
        content = after[j1:j2]
        if tag == 'insert':
            # Replace the following context line to make insertion semantics explicit.
            if i1 < len(before):
                content += [before[i1]]
                i2 = i1 + 1
            else:
                i1 -= 1
                content = [before[i1]] + content
        plans.setdefault(str(path), []).append(dict(type='replace', startLine=start+i1,
                        endLine=start+i2-1, content='\n'.join(content)))

def once(text, old, new):
    assert text.count(old) == 1, (old, text.count(old))
    return text.replace(old, new)

main = 'smali_classes6/ru/localscribe/MainActivityKt.smali'

def processing(text):
    calls = list(re.finditer(r'^    invoke-static/range \{v31 \.\. v56\}, Landroidx/compose/material3/TextKt;->Text[^\n]+', text, re.M))
    assert len(calls) == 3, len(calls)
    point = calls[1].start()
    return text[:point] + ('    invoke-static/range {p1 .. p2}, Lru/localscribe/ux/UxPatch;->progressLabel(Ljava/lang/String;F)Ljava/lang/String;\n'
                          '    move-result-object v31\n\n') + text[point:]

edit_method(main, ' ProcessingScreen(', processing)
edit_method(main, ' ResultScreen$lambda$65(', lambda s: once(s, '    return v0',
    '    invoke-static {v0}, Lru/localscribe/ux/UxPatch;->following(Z)Z\n\n    move-result v0\n\n    return v0'))

def action(text):
    text = once(text, '    new-array v1, v13, [Ljava/lang/String;',
        '    const/4 v1, 0x5\n\n    new-array v1, v1, [Ljava/lang/String;')
    needle = '    aput-object v17, v1, v16'
    # Only the first state set; the later resume-recording set stays unchanged.
    at = text.index(needle) + len(needle)
    text = text[:at] + '\n\n    const-string v2, "recorded"\n\n    aput-object v2, v1, v13' + text[at:]
    needle = '    invoke-static/range {v1 .. v8}, Lru/localscribe/ui/HexButtonsKt;->HexButton('
    at = text.index(needle)
    text = text[:at] + (
        '    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;\n'
        '    check-cast v2, Landroidx/compose/ui/Modifier;\n'
        '    const/high16 v3, 0x3f800000\n'
        '    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;\n'
        '    move-result-object v2\n'
        '    const/4 v3, 0x1\n'
        '    const/16 v8, 0x8\n\n') + text[at:]
    return text

edit_method(main, ' ResultScreen$lambda$72$4$0$1$0(', action)

def label(text):
    old = ''.join(c if ord(c) < 128 else '\\u%04x' % ord(c) for c in 'Обработать файл')
    new = ''.join(c if ord(c) < 128 else '\\u%04x' % ord(c) for c in 'Обработать запись')
    return once(text, old, new)
edit_method(main, ' ResultScreen$lambda$72$4$0$1$0$0(', label)

follow = 'smali_classes6/ru/localscribe/MainActivityKt$ResultScreen$19$1.smali'
def scroll(text):
    needle = '    :goto_2\n    nop\n\n    nop'
    return once(text, needle, '    :goto_2\n'
        '    iget-object v5, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$listState:Landroidx/compose/foundation/lazy/LazyListState;\n'
        '    invoke-static {v5, v6}, Lru/localscribe/ux/UxFollow;->shouldScroll(Landroidx/compose/foundation/lazy/LazyListState;I)Z\n'
        '    move-result v4\n'
        '    if-eqz v4, :cond_6\n'
        '    nop')
edit_method(follow, ' invokeSuspend(', scroll)

edit_method('smali_classes12/ru/localscribe/TranscriptAutoFollow.smali',
    ' attachFromExisting$lambda$0(', lambda s: once(s, '    const/4 v0, 0x0',
        '    invoke-static {}, Lru/localscribe/ux/UxPatch;->pauseFollowing()V\n\n    const/4 v0, 0x0'))

controls = 'smali_classes11/ru/localscribe/integration/ControlsActivity.smali'
edit_method(controls, ' button(', lambda s: once(s, '    new-instance v0, Landroid/widget/Button;',
    '    invoke-static {p0, p1, p2, p3}, Lru/localscribe/ux/UxPatch;->overlayButton(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;\n'
    '    move-result-object v0\n'
    '    if-eqz v0, :ux_original_button\n'
    '    return-object v0\n'
    '    :ux_original_button\n'
    '    new-instance v0, Landroid/widget/Button;'))
edit_method(controls, ' onResume(', lambda s: once(s, '    invoke-super {p0}, Landroid/app/Activity;->onResume()V',
    '    invoke-super {p0}, Landroid/app/Activity;->onResume()V\n\n'
    '    invoke-static {}, Lru/localscribe/ux/UxPatch;->refreshOverlay()V'))

overlay = 'smali_classes11/ru/localscribe/integration/OverlayService.smali'
edit_method(overlay, ' attach(', lambda s: once(s,
    '    iput-boolean v1, p0, Lru/localscribe/integration/OverlayService;->attached:Z',
    '    iput-boolean v1, p0, Lru/localscribe/integration/OverlayService;->attached:Z\n\n'
    '    invoke-static {v1}, Lru/localscribe/ux/UxPatch;->overlayAttached(Z)V'))
edit_method(overlay, ' onDestroy(', lambda s: once(s, '    return-void',
    '    const/4 v0, 0x0\n\n    invoke-static {v0}, Lru/localscribe/ux/UxPatch;->overlayAttached(Z)V\n\n    return-void'))

edit_method('smali_classes5/ru/localscribe/service/ProcessingService.smali', ' onDestroy(',
    lambda s: once(s, '    return-void',
        '    invoke-static {p0}, Lru/localscribe/ux/UxRefresh;->finished(Landroid/content/Context;)V\n\n'
        '    invoke-static {}, Lru/localscribe/ux/UxPatch;->resetProgress()V\n\n    return-void'))

print(json.dumps([dict(path=path, operations=ops) for path, ops in plans.items()], ensure_ascii=True))
