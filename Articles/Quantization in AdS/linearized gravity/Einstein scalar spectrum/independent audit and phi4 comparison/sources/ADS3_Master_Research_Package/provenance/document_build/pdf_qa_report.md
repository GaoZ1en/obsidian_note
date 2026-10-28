# PDF visual QA report

**Result: passes layout QA, with one optional bibliography paragraph-break refinement.**

The reviewed PDF has **190 A4 pages**, is **1,247,985 bytes**, and has SHA-256:

`18a8e40aef4b8c479937e6ed66839ec7a6924a70a93420949106be09721e1e6d`

All 190 pages were visually inspected using 16 complete-page contact sheets. Twenty-eight selected pages were additionally inspected at 144 dpi: 1, 2, 3, 4, 5, 6, 8, 9, 32, 33, 34, 46, 47, 52, 54, 55, 64, 73, 75, 78, 80, 102, 160, 185, 186, 187, 189, 190. These include the front and complete contents, notation table, worked examples, Chapter 7 theorem interfaces, stable and universal theorems, dense tables, the wide matrix (B.48), verification record, and both reference pages.

## Revision verification

The initial TOC L.6 entry on page 5 crowded its page number. The integrator widened the page-number reservation; the corrected entry now has a clear visible gap before 133. All five revised contents pages were inspected at full size. A pixel comparison of all pages at 72 dpi found changes **only on pages 2–6**; the front page and every body page 7–190 are identical to the previously inspected version.

## Automated and visual findings

- All 190 pages contain text.
- No word bounding box extends outside the page or the 18 pt safety rectangle.
- No Unicode replacement characters were found.
- Raster ink lies within x = 71–520 pt and y = 83–752 pt on the A4 page.
- Four approximately 3 pt bold heading/hyphen protrusions were checked visually and are harmless.
- No clipped equation, missing glyph, overlapping text, or cut-off table was found. Long tables repeat their headers at page breaks.
- The 6 × 6 matrix (B.48), worked-example matrices, Fredholm/Gamma displays, and long coefficient tables remain readable.

## Optional typography note

The DerkachovManashov1996 reference begins with one line at the bottom of page 189 and continues on page 190. It is fully readable and unambiguous. Keeping that paragraph together would improve the break, but this is not a delivery blocker.

## Scope and evidence

This was a read-only review. No manuscript, TeX source, or compiled PDF was edited by the reviewer. Every page received contact-sheet inspection; full-size inspection was selective as stated above. Text and raster bounds supplement the visual review and do not establish mathematical correctness.

The complete machine-readable record is `pdf_qa_report.json`; the initial page inventory and final raster comparison are `visual_inventory.json` and `revised/revision_comparison.json`. All QA files are under `master_work/pdf_qa`.
