# AGENTS.md — arXiv Literature Workflow

These instructions apply to work under `Literature Notes/arxiv/`. They complement the vault root `AGENTS.md`.

## Authority And Scope

- Read `Literature Notes/arxiv/profile.md` before screening or ranking papers. It is authoritative for categories, priority tiers, author signals, reason codes, missed-paper corrections, breakdown depth, long-paper policy, and computation-check expectations.
- Use this file for operational workflow, file-writing rules, safety boundaries, and orchestration. If it conflicts with `profile.md` on research relevance, follow `profile.md`; if it conflicts on orchestration or output safety, follow this file.
- Keep technical relevance separate from author signal. Explain which results come from the paper and which calculations have been independently reproduced; use labels only when they help.

## Daily arXiv Workflow

### Preflight And Sources

1. Use the Beijing run date for `Literature Notes/arxiv/YYYY/MM/DD/` and screen the latest official arXiv `/new` issue available before run time. Treat the official list date/title as authoritative.
2. On a fresh run, create the dated directory and run:

   ```sh
   python3 scripts/arxiv_daily_inventory.py --categories hep-th gr-qc math-ph --format markdown --output Literature\ Notes/arxiv/YYYY/MM/DD/YYYY_MM_DD_inventory.md
   ```

3. Use the generated inventory to find papers, remove duplicates, and count the list. If the helper fails or returns an incomplete list, briefly explain the missing coverage and use official arXiv pages to fill the gap.
4. Cover `hep-th`, `gr-qc`, and `math-ph`, deduplicate by arXiv id, and preserve primary and cross-list categories. Use official arXiv sources for metadata and selected-paper content.

### Dates And Repeated Runs

- Read the official list date from the retrieved issue. The inventory helper already uses a fresh query parameter; do not routinely repeat its requests or inspect cache headers, RSS feeds, and the status page.
- Investigate further when official dates or IDs disagree, an issue is unexpectedly old for the announcement schedule, or another concrete sign suggests missing papers. Use the additional source needed to resolve that question and stop checking once it is resolved. If it remains unresolved, state the gap without claiming complete coverage.
- If today's results are complete and there is no newer issue, briefly report that there is nothing to add. Do not routinely compute hashes, download material already available, or repeat checks whose inputs have not changed.
- On an explicitly requested same-day refresh, back up the stale dated outputs outside the vault and replace only that day's package; retain the strict serial queue and all older-note protections.

### Output And Safety

- Always create `YYYY_MM_DD_overview.md` on a fresh run, even when no paper is recommended or arXiv is delayed, unavailable, or on a holiday schedule. Keep `YYYY_MM_DD_inventory.md` when inventory generation succeeds.
- Do not edit older daily overviews or literature notes. Do not commit.
- Keep PDFs, TeX sources, rendered pages, and other retrieval artifacts in a temporary directory outside the vault. Do not create or link new PDF attachments.
- Wiki-links are permitted only between that day's overview and that day's detailed notes. Do not add unrelated wiki-links or tags.

Organize the overview around the day's useful content. Include the Beijing run date, official list date/title, a link to the inventory and its deduplicated total, the recommendations, and a suggested reading order. Explain why the recommendations matter for current research. Do not duplicate the full inventory table unless inventory generation failed.

Add unread candidates, author observations, version updates, or missed-paper corrections when there is something useful to report; omit empty sections. Explain recommendation reasons in ordinary prose. Reason codes are optional, and routine searches and selection decisions do not need a separate log. Record retrieval problems when they affect coverage or the interpretation of a paper.

For tracked-version updates, give the local note path, old and latest versions, source URL, and any apparent change in relevance from the abstract or comments. Do not rewrite the old note or routinely reread the updated paper.

### Selection And Note Depth

- Follow the profile's daily workload targets: normally 3–5 high-priority deep notes and around 10 medium-priority sketches. Do not pad the selection; defer overflow and explain any exceptional excess in the overview.
- Every selected high-priority paper must receive a completed same-day deep note when full source access is sufficient. Page count changes ordinary versus monograph mode, not the required depth. A `preliminary source map` is explicitly unfinished and must be reported as such in the overview.
- Every selected medium-priority paper receives a brief sketch in the overview, following the profile's sketch scope. Targeted official source reading is allowed; full decomposition, routine derivation/CAS checks, and separate detailed notes are not the default. Record unprocessed overflow as metadata-only deferred candidates.
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

### One Paper At A Time

- Work in the main agent without subagents. Read the high-priority papers first, then write the selected medium-priority sketches.
- Finish each paper's reading, explanation, appropriate calculations, and note before starting the next. For medium papers, finish the short sketch without expanding it into a full technical treatment. Work through long papers one part at a time and finish the main note before moving on.
- If a paper cannot be completed, save the useful work, explain the specific missing source or unresolved calculation, and continue with the remaining papers.

### Verification And Validation

- For formula-heavy high-priority papers, reconstruct the source chain first, then attempt every feasible Mathematica, xAct, Sage, or comparable check in source order. Use PDF rendering when formulas, labels, tables, or layout are unreliable in extracted text or HTML.
- Explain the paper's claims, independently reproduced calculations, and unresolved issues where they matter in the note. Labels from `profile.md` are optional. If a check contradicts a source claim, give the source location and assumptions and explain which later conclusions are affected. Write a readable research note rather than an audit report.
- Finish with one focused review of the new notes: confirm the files were written, references and formulas have no obvious transcription errors, and the overview accurately describes what was covered. Check frontmatter, links, and formatting once; `git diff --check` can check tracked changes, while new files need a direct read. Recheck only after a relevant change or a concrete problem. Do not create a separate validation report for routine successful checks.

## Weekly Digest Boundary

Weekly digest runs may read daily overviews and `profile.md`, but must not apply the daily same-day output structure. They must not modify daily overviews, detailed notes, `profile.md`, protected vault paths, or commit unless explicitly authorized. Follow the weekly automation's own dated-output and missing-workweek rules.
