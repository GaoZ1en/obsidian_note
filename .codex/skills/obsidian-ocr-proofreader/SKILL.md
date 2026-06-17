---
name: obsidian-ocr-proofreader
description: Proofread OCR-imported or copy-pasted Obsidian Markdown notes in the Note vault, especially course homework, lecture, exam, and formula-heavy physics notes under Lecture/courses/**. Use when normalizing LaTeX math delimiters to $...$ and $$...$$, cleaning OCR artifacts and abnormal line separator characters, repairing Markdown list hierarchy, or doing light Chinese/English terminology proofreading without changing formula meaning, solving assignments, or rewriting derivations.
---

# Obsidian OCR Proofreader

## Workflow

- Read the vault root `AGENTS.md`, the nearest relevant local `AGENTS.md`, and the target note before editing.
- If the user gives a directory, first list Markdown files in that directory. If the directory is empty but a sibling Markdown file such as `homework.md` exists, report that finding and use the sibling file only when it is the clear intended target.
- Preserve the note language, assignment or lecture content, numbering, notation, and mathematical meaning.
- Before editing, state the exact target file and the planned proofreading scope.
- Keep changes incremental and local. Do not add tags, wiki-links, frontmatter normalization, answers, derivations, or new explanatory content unless explicitly requested.

## Proofreading Scope

- Normalize math delimiters:
  - Use `$...$` for inline math.
  - Use `$$...$$` for display math.
  - Convert bare LaTeX formulas into the appropriate inline or display math environment.
- Clean formatting artifacts:
  - Remove abnormal line separators such as `U+2028`, `U+2029`, and NBSP when they interfere with Markdown rendering.
  - Fix Markdown list indentation so formulas and subquestions remain inside the intended numbered item.
  - Keep heading hierarchy, problem numbering, lecture numbering, and assignment separators intact.
- Lightly proofread prose:
  - Keep Chinese wording concise and consistent.
  - Keep English technical terms such as `Fokker-Planck`, `Diffusion`, `RWA`, `Lindblad`, and `h.c.` consistently formatted.
  - Normalize punctuation only when it improves Markdown or math readability.

## Formula Safety

- Do not change formula meaning, signs, coefficients, operators, indices, assumptions, or boundary conditions as part of proofreading.
- If a suspected mathematical or physical error is found, report it separately instead of silently editing it.
- If the user explicitly asks to fix a formula or derivation, follow the vault formula-verification rules and use Mathematica or xAct when the change is computationally checkable.
- Do not describe a formula edit as correct unless it was verified or the unchanged semantic scope is explicit.

## Verification

After editing, run the narrow static checks relevant to the target note:

- Count `$$` delimiters and single `$` delimiters; both counts must be even.
- Check that display math mode closes by the end of the file.
- Check that `U+2028`, `U+2029`, and NBSP counts are zero unless intentionally preserved.
- Strip inline and display math from the text and search for remaining LaTeX commands outside math environments.
- Inspect the first section, at least one middle section, and the final section or modified regions to confirm problem numbering, lecture numbering, and subquestion hierarchy remain intact.

Report verification with compact entries for what was checked and what was not checked. State explicitly that physics or derivation correctness was not reviewed when the task was proofreading only.
