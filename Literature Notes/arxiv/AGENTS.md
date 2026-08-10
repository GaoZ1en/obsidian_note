# AGENTS.md — arXiv Literature Workflow

These instructions apply to work under `Literature Notes/arxiv/`. They complement the vault root `AGENTS.md`.

## Authority And Scope

- Read `Literature Notes/arxiv/profile.md` before screening or ranking papers. It is authoritative for categories, priority tiers, author signals, reason codes, missed-paper corrections, breakdown depth, long-paper policy, and computation-check expectations.
- Use this file for operational workflow, file-writing rules, safety boundaries, and orchestration. If it conflicts with `profile.md` on research relevance, follow `profile.md`; if it conflicts on orchestration or output safety, follow this file.
- Keep technical relevance separate from author signal. Source reading is `Source-derived`, not independent verification.

## Daily arXiv Workflow

### Preflight And Sources

1. Use the Beijing run date for `Literature Notes/arxiv/YYYY/MM/DD/` and screen the latest official arXiv `/new` issue available before run time. Treat the official list date/title as authoritative.
2. On a fresh run, create the dated directory and run:

   ```sh
   python3 scripts/arxiv_daily_inventory.py --categories hep-th gr-qc math-ph --format markdown --output Literature\ Notes/arxiv/YYYY/MM/DD/YYYY_MM_DD_inventory.md
   ```

3. Use the generated inventory as the primary substrate for deduplication, counts, and candidate discovery. Do not reason from raw arXiv listing HTML when the helper succeeds. If it fails or partially succeeds, record the command and exact failure under `Source queries`, then use official arXiv pages as fallback.
4. Cover `hep-th`, `gr-qc`, and `math-ph`, deduplicate by arXiv id, and preserve primary and cross-list categories. Use official arXiv sources for metadata and selected-paper content.

### Output And Safety

- Always create `YYYY_MM_DD_overview.md` on a fresh run, even when no paper is recommended or arXiv is delayed, unavailable, or on a holiday schedule. Keep `YYYY_MM_DD_inventory.md` when inventory generation succeeds.
- Do not edit older daily overviews or literature notes. Do not commit.
- Keep PDFs, TeX sources, rendered pages, and other retrieval artifacts in a temporary directory outside the vault. Do not create or link new PDF attachments.
- Wiki-links are permitted only between that day's overview and that day's detailed notes. Do not add unrelated wiki-links or tags.

The overview must contain, in this order:

1. `Today at a glance`
2. `Complete screened arXiv list`
3. `High-priority recommendations`
4. `Medium-priority technical candidates`
5. `Secondary candidates`
6. `Author-signal watchlist`
7. `Updated versions of tracked papers`
8. `Reading order`
9. `Why these match my current projects`
10. `Retrospective context`
11. `Skipped nearby papers`
12. `Source queries`
13. `Missed-paper correction follow-up`

In `Today at a glance`, state the Beijing run date and official list date/title. In `Complete screened arXiv list`, point to the inventory, report the deduplicated total and compact status/placement counts, and do not duplicate the full inventory table unless inventory generation failed.

Attach profile reason codes to recommended, watched, skipped-nearby, and version-update items. Record categories and URLs queried, helper status, retrieval failures, deduplication decisions, author matches, version checks, reason-code decisions, and close-paper exclusions. For tracked-version updates, record the local note path, old and latest versions, source URL, and whether abstract/comments changes alter priority; do not rewrite the old note.

### Selection And Note Depth

- Do not force a fixed number of detailed notes or impose a maximum.
- Every selected high-priority paper must receive a completed same-day deep note when full source access is sufficient. Page count changes ordinary versus monograph mode, not the required depth. A `preliminary source map` is explicitly unfinished and must be reported as such in the overview.
- Every medium-priority paper needs at least a compact technical overview treatment: source claim, mechanism, central formula or construction when identifiable, likely use, and why it is not high priority. Create a lighter detailed note when its method, formula, or reference value is reusable.
- Before the first high-priority note, inspect `Literature Notes/Charges of supergravity (2604.09928v1).md` as the deep calibration. For medium detailed notes, use `Literature Notes/Covariant phase space approach to noncommutativity in tensile and tensionless open strings (2604.13163v1).md` as the light calibration.
- Use paper-specific technical headings and the paper's own symbols, equations, section logic, and conventions. Do not substitute a generic checklist or expanded abstract for a reconstruction. Apply all acceptance criteria and monograph-mode requirements from `profile.md`.

Name detailed notes `Paper Title (arXivIDvN).md` and use this frontmatter shape:

```yaml
---
paper id: 2604.09928v1
title: Paper Title Here
authors:
  - Author One
  - Author Two
publication date: 2026-04-10T22:03
abstract: |-
  Source abstract text or a faithful source-derived abstract summary.
comments: "26 pages"
url: https://arxiv.org/abs/2604.09928v1
summary: "One-sentence note-specific summary of why this paper matters here."
tags: []
---
```

Do not add a `pdf` field unless a matching attachment already exists.

### Strictly Sequential No-Subagent Execution

- Do not create, spawn, delegate to, or use subagents for inventory screening, paper decomposition, section clustering, verification, drafting, or validation.
- After inventory screening and final selection, establish a deterministic queue: high-priority papers in reading order, then medium-priority papers requiring detailed notes, then any remaining selected technical treatments.
- Process exactly one paper at a time in the main agent. Complete source retrieval and full-structure inspection, notation mapping, technical reconstruction, feasible verification, note or overview writing, evidence labels, links/audit entries, and file validation before starting another paper.
- Do not interleave reading, decomposition, verification, drafting, or section work across papers. For monograph mode, process section clusters sequentially within the same paper and finish the master note before advancing.
- Advance after completion or after a concrete irreparable `Blocked`/`Failed` boundary has been documented and all usable work saved. Continue until every queued paper has been processed.

### Verification And Validation

- For formula-heavy high-priority papers, reconstruct the source chain first, then attempt every feasible Mathematica, xAct, Sage, or comparable check in source order. Use PDF rendering when formulas, labels, tables, or layout are unreliable in extracted text or HTML.
- `Checked` is only for independently reproduced content. Put source inspection in the technical exposition or `Source-derived`; state exact missing inputs or tool obstructions under `Blocked`; record irreparable contradictions with source location under `Failed` and do not rely on dependent claims.
- Finish with the narrow relevant content checks, including required headings, frontmatter, same-day wiki-links, inventory counts, verification-log labels, trailing whitespace, final newlines, and `git diff --check` for tracked changes. Remember that `git diff --check` does not inspect untracked files, so scan new Markdown files directly.

## Weekly Digest Boundary

Weekly digest runs may read daily overviews and `profile.md`, but must not apply the daily same-day output structure. They must not modify daily overviews, detailed notes, `profile.md`, protected vault paths, or commit unless explicitly authorized. Follow the weekly automation's own dated-output and missing-workweek rules.
