import { readFileSync } from "node:fs";
import { describe, expect, it } from "vitest";
import { buildUnifiedDiff } from "../src/diff";
import { formatMarkdown } from "../src/formatter";
import { lintMarkdown } from "../src/lint";
import { shouldFormatVaultPath } from "../src/targets";
import { DEFAULT_FORMATTER_OPTIONS } from "../src/types";

function fixture(name: string): string {
  return readFileSync(new URL(`./fixtures/${name}`, import.meta.url), "utf8");
}

describe("formatMarkdown", () => {
  it("is idempotent for the E.1.2-style fixture", () => {
    const source = fixture("already-formatted.md");
    const once = formatMarkdown(source).text;
    const twice = formatMarkdown(once).text;

    expect(once).toBe(source);
    expect(twice).toBe(once);
  });

  it("normalizes conservative Markdown and display math formatting", () => {
    const input = fixture("mixed-input.md");
    const expected = fixture("mixed-expected.md");

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("removes trailing whitespace from ordinary Markdown lines", () => {
    expect(formatMarkdown("Paragraph with trailing spaces.   \n").text).toBe("Paragraph with trailing spaces.\n");
  });

  it("capitalizes lowercase English sentence starts", () => {
    const input = "first sentence. second sentence! is this third? yes.\n";
    const expected = "First sentence. Second sentence! Is this third? Yes.\n";

    expect(formatMarkdown(input).text).toBe(expected);
    expect(formatMarkdown(expected).text).toBe(expected);
  });

  it("capitalizes major words in ATX and Setext headings", () => {
    const input = [
      "# symplectic geometry in AdS and quantum field theory",
      "",
      "a state-of-the-art review of off-shell p-form symmetries and follow-up checks",
      "--------------------------------------------------",
      ""
    ].join("\n");
    const expected = [
      "# Symplectic Geometry in AdS and Quantum Field Theory",
      "",
      "A State-of-the-Art Review of Off-Shell P-Form Symmetries and Follow-Up Checks",
      "--------------------------------------------------",
      ""
    ].join("\n");

    expect(formatMarkdown(input).text).toBe(expected);
    expect(formatMarkdown(expected).text).toBe(expected);
  });

  it("preserves math and technical spans while title-casing surrounding words", () => {
    const input = [
      String.raw`# dynamics of $p$-forms and \(q\)-forms in $AdS_{d+1}$`,
      "## pAQFT with xAct: [gauge theory](https://example.com/lower.case)",
      "### `lower code` and [[lowercase target]] with #lower-tag ^lower-id",
      "#### notes from README.md and src/prose.ts by author@example.com [@lower-key]",
      "##### [convergence of α and θ.md](Convergence%20of%20%CE%B1%20and%20%CE%B8.md)",
      ""
    ].join("\n");
    const expected = [
      String.raw`# Dynamics of $p$-Forms and $q$-Forms in $AdS_{d+1}$`,
      "",
      "## pAQFT with xAct: [Gauge Theory](https://example.com/lower.case)",
      "",
      "### `lower code` and [[lowercase target]] with #lower-tag ^lower-id",
      "",
      "#### Notes from README.md and src/prose.ts by author@example.com [@lower-key]",
      "",
      "##### [Convergence of α and θ.md](Convergence%20of%20%CE%B1%20and%20%CE%B8.md)",
      ""
    ].join("\n");

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("preserves existing acronyms, mixed case, identifiers, and closing heading markers", () => {
    const input = [
      "# pAQFT and BRST in AdS with H_0 and 2d fields ###",
      "# d'alembert operators in QFT",
      "> ## pAQFT examples, e.g. from README.md",
      ""
    ].join("\n");
    const expected = [
      "# pAQFT and BRST in AdS with H_0 and 2d Fields ###",
      "",
      "# D'Alembert Operators in QFT",
      "",
      "> ## pAQFT Examples, e.g. from README.md",
      ""
    ].join("\n");

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("can disable title-word capitalization independently", () => {
    const input = "# lower heading with major words\n";

    expect(
      formatMarkdown(input, {
        capitalizeSentenceStarts: false,
        capitalizeTitleWords: false
      }).text
    ).toBe(input);
  });

  it("preserves list item starts while capitalizing headings, footnotes, and prose sentences", () => {
    const input = [
      "# lower heading",
      "",
      "- first item. second sentence.",
      "2) numbered item",
      "- [ ] unfinished task",
      "[^1]: footnote text",
      "",
      "> [!note] lower callout title",
      "> quoted sentence. another sentence.",
      ""
    ].join("\n");
    const expected = [
      "# Lower Heading",
      "",
      "- first item. Second sentence.",
      "2. numbered item",
      "- [ ] unfinished task",
      "[^1]: Footnote text",
      "",
      "> [!note] Lower callout title",
      "> Quoted sentence. Another sentence.",
      ""
    ].join("\n");

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("joins source-only prose line breaks while preserving sentence state", () => {
    const input = "this sentence wraps\nonto another source line. next starts here.\n";
    const expected = "This sentence wraps onto another source line. Next starts here.\n";

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("keeps blank lines as paragraph boundaries while joining inline-math prose", () => {
    const input = [
      "the first short line",
      String.raw`continues with \(E=mc^2\) inline.`,
      "",
      "the second paragraph",
      "continues separately.",
      ""
    ].join("\n");
    const expected = [
      "The first short line continues with $E=mc^2$ inline.",
      "",
      "The second paragraph continues separately.",
      ""
    ].join("\n");

    expect(formatMarkdown(input).text).toBe(expected);
    expect(formatMarkdown(expected).text).toBe(expected);
  });

  it("preserves lists and all contiguous list continuation lines", () => {
    const input = [
      "- first item",
      "lazy continuation stays separate",
      "- second item",
      "  indented continuation stays separate",
      "",
      "[1] first reference entry",
      "[2] second reference entry",
      "",
      "ordinary prose",
      "joins after the list.",
      ""
    ].join("\n");
    const expected = [
      "- first item",
      "lazy continuation stays separate",
      "- second item",
      "  indented continuation stays separate",
      "",
      "[1] first reference entry",
      "[2] second reference entry",
      "",
      "Ordinary prose joins after the list.",
      ""
    ].join("\n");

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("does not join display math, standalone math, tables, blockquotes, code, or hard breaks", () => {
    const input = [
      "prose before math",
      "continues here.",
      "",
      "$x=y$",
      "",
      "| heading | value |",
      "| --- | --- |",
      "| a | b |",
      "",
      "> quoted line",
      "> remains separate",
      "",
      "```md",
      "code",
      "stays split",
      "```",
      "",
      "\\begin{equation}",
      "x=y",
      "z=w",
      "\\end{equation}",
      "",
      "\\(",
      "x+y",
      "\\)",
      "",
      "**Status**: draft",
      "**Author**: example",
      "",
      "where the metric is",
      "= -dt^2 + dx^2",
      "\\sqrt{g}=1",
      "",
      "##",
      "not merged into a heading",
      ":z:::::",
      "not merged into plugin syntax",
      "",
      "explicit hard break\\",
      "stays on the next source line",
      ""
    ].join("\n");
    const expected = [
      "Prose before math continues here.",
      "",
      "$x=y$",
      "",
      "| heading | value |",
      "| --- | --- |",
      "| a | b |",
      "",
      "> Quoted line",
      "> Remains separate",
      "",
      "```md",
      "code",
      "stays split",
      "```",
      "",
      "\\begin{equation}",
      "x=y",
      "z=w",
      "\\end{equation}",
      "",
      "\\(",
      "x+y",
      "\\)",
      "",
      "**Status**: draft",
      "**Author**: example",
      "",
      "Where the metric is",
      "= -dt^2 + dx^2",
      "\\sqrt{g}=1",
      "",
      "##",
      "Not merged into a heading",
      ":z:::::",
      "not merged into plugin syntax",
      "",
      "Explicit hard break\\",
      "stays on the next source line",
      ""
    ].join("\n");

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("can disable prose-line joining independently", () => {
    const input = "keep this source line\nseparate from this one\n";

    expect(
      formatMarkdown(input, {
        capitalizeSentenceStarts: false,
        joinProseLines: false
      }).text
    ).toBe(input);
  });

  it("uses display-math punctuation to continue or end a sentence", () => {
    const input = [
      "we obtain",
      "",
      "$$",
      "x=y,",
      "$$",
      "",
      "where both sides agree. next, we also have",
      "",
      "$$",
      "z=1.",
      "$$",
      "",
      "therefore the claim follows.",
      ""
    ].join("\n");
    const expected = [
      "We obtain",
      "",
      "$$\\begin{align}",
      "x=y,",
      "\\end{align}$$",
      "",
      "where both sides agree. Next, we also have",
      "",
      "$$\\begin{align}",
      "z=1.",
      "\\end{align}$$",
      "",
      "Therefore the claim follows.",
      ""
    ].join("\n");

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("preserves protected inline content while capitalizing surrounding prose", () => {
    const input = [
      "use $lower$ and `lower code`. next sentence.",
      "read [the docs](https://example.com/lower.case). then continue.",
      "[[lowercase page]] stays linked. next sentence.",
      "![lower alt](images/lower.png) appears first. next sentence.",
      ""
    ].join("\n");
    const expected =
      "Use $lower$ and `lower code`. Next sentence. Read [the docs](https://example.com/lower.case). Then continue. " +
      "[[lowercase page]] stays linked. Next sentence. ![lower alt](images/lower.png) appears first. Next sentence.\n";

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("does not split sentences at common abbreviations or decimal points", () => {
    const input = "fig. 2 follows e.g. this convention used by smith et al. here at 3.14 units. next sentence.\n";
    const expected = "Fig. 2 follows e.g. this convention used by smith et al. here at 3.14 units. Next sentence.\n";

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("preserves list-item starts and Markdown table cells", () => {
    const input = [
      "- lower fragment",
      "- lower fragment. next sentence.",
      "",
      "| lower heading | another heading |",
      "| --- | --- |",
      "| lower value | another value |",
      ""
    ].join("\n");
    const expected = input.replace("next sentence.", "Next sentence.");

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("can disable sentence-start capitalization", () => {
    const input = "leave this lowercase. and this too.\n";

    expect(formatMarkdown(input, { capitalizeSentenceStarts: false }).text).toBe(input);
  });

  it("normalizes inline math delimiters", () => {
    const input = String.raw`Use \(E=mc^2\), then \(\omega^2=k^2+m^2\).` + "\n";
    const expected = String.raw`Use $E=mc^2$, then $\omega^2=k^2+m^2$.` + "\n";

    expect(formatMarkdown(input).text).toBe(expected);
    expect(formatMarkdown(expected).text).toBe(expected);
  });

  it("preserves inline math delimiters in protected Markdown regions", () => {
    const input = [
      "---",
      String.raw`example: \(frontmatter\)`,
      "---",
      "",
      "Text \\(change\\), but keep `\\(inline code\\)` and ``\\(code with two ticks\\)``.",
      "",
      "```md",
      String.raw`\(fenced code\)`,
      "```",
      ""
    ].join("\n");
    const expected = input.replace(String.raw`Text \(change\)`, String.raw`Text $change$`);

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("leaves unmatched and escaped inline delimiters unchanged", () => {
    const input = String.raw`Keep \(unclosed and \\(escaped\\), but convert \(x\).` + "\n";
    const expected = String.raw`Keep \(unclosed and \\(escaped\\), but convert $x$.` + "\n";

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("can disable inline math delimiter normalization", () => {
    const input = String.raw`Keep \(x\).` + "\n";

    expect(formatMarkdown(input, { normalizeMathDelimiters: false }).text).toBe(input);
  });

  it("preserves ordered list numbers while normalizing the delimiter", () => {
    const input = "1. first\n2) second\n10. tenth\n";
    const expected = "1. first\n2. second\n10. tenth\n";

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("can format a selection without changing text outside the selection", () => {
    const prefix = "before\n\n";
    const selection = "\\[\nx=y\n\\]";
    const suffix = "\n\nafter\n";
    const result = `${prefix}${formatMarkdown(selection).text.trimEnd()}${suffix}`;

    expect(result).toBe(`${prefix}$$\\begin{align}\nx=y\n\\end{align}$$${suffix}`);
  });

  it("splits single-line align rows at LaTeX row breaks", () => {
    const input = String.raw`$$\begin{align} a &= b \\ c &= d \end{align}$$` + "\n";
    const expected =
      String.raw`$$\begin{align}
a &= b \\
c &= d
\end{align}$$` + "\n";

    expect(formatMarkdown(input).text).toBe(expected);
    expect(formatMarkdown(expected).text).toBe(expected);
  });

  it("splits simple display math at LaTeX row breaks before wrapping in align", () => {
    const input =
      String.raw`\[
a &= b \\ c &= d
\]` + "\n";
    const expected =
      String.raw`$$\begin{align}
a &= b \\
c &= d
\end{align}$$` + "\n";

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("merges source-only line breaks inside display math rows", () => {
    const input =
      String.raw`$$\begin{align}
a &= b
  + c
  + d \\
e &= f
\end{align}$$` + "\n";
    const expected =
      String.raw`$$\begin{align}
a &= b + c + d \\
e &= f
\end{align}$$` + "\n";

    expect(formatMarkdown(input).text).toBe(expected);
    expect(formatMarkdown(expected).text).toBe(expected);
  });

  it("does not merge a likely new align row when a row break is missing", () => {
    const input =
      String.raw`$$\begin{align}
a &= b
c &= d
\end{align}$$` + "\n";

    expect(formatMarkdown(input).text).toBe(input);
    expect(lintMarkdown(input).map((warning) => warning.code)).toContain("align-row-missing-break");
  });

  it("merges source-only breaks after spacing commands", () => {
    const input =
      String.raw`$$\begin{align}
\mathbf L_\lambda[\phi], \qquad
\lambda\in I.
\end{align}$$` + "\n";
    const expected =
      String.raw`$$\begin{align}
\mathbf L_\lambda[\phi], \qquad \lambda\in I.
\end{align}$$` + "\n";

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("merges source-only breaks before the relation in one math row", () => {
    const input =
      String.raw`$$\begin{align}
(\partial_\lambda+\mathcal L_{Y_\lambda})
\Omega_{\Sigma,\lambda} =0.
\end{align}$$` + "\n";
    const expected =
      String.raw`$$\begin{align}
(\partial_\lambda+\mathcal L_{Y_\lambda}) \Omega_{\Sigma,\lambda} =0.
\end{align}$$` + "\n";

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("merges obvious continuation rows even when they contain a relation", () => {
    const input =
      String.raw`$$\begin{align}
a=b
+c=d
\end{align}$$` + "\n";
    const expected =
      String.raw`$$\begin{align}
a=b +c=d
\end{align}$$` + "\n";

    expect(formatMarkdown(input).text).toBe(expected);
  });

  it("merges relation RHS factors split across source lines", () => {
    const input =
      String.raw`$$\begin{align}
R_{n,m}^{(\mathrm{alt})}(r) &=r^{|m|}(1+r^{2})^{-(|m|+\Delta)/2}
{}_2F_{1}\left(-n,\Delta+|m|+n;1+|m|;\frac{r^{2}}{1+r^{2}}\right)\\
&\propto r^{|m|}(1+r^{2})^{-(|m|+\Delta)/2}
P_{n}^{(\Delta-1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right),
\end{align}$$` + "\n";
    const expected =
      String.raw`$$\begin{align}
R_{n,m}^{(\mathrm{alt})}(r) &=r^{|m|}(1+r^{2})^{-(|m|+\Delta)/2} {}_2F_{1}\left(-n,\Delta+|m|+n;1+|m|;\frac{r^{2}}{1+r^{2}}\right)\\
&\propto r^{|m|}(1+r^{2})^{-(|m|+\Delta)/2} P_{n}^{(\Delta-1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right),
\end{align}$$` + "\n";

    expect(formatMarkdown(input).text).toBe(expected);
    expect(formatMarkdown(expected).text).toBe(expected);
  });

  it("merges arrow chains split across source lines", () => {
    const input =
      String.raw`$$\begin{align}
\pi_2(S^{2n+1}) \to \pi_2(\mathbb{CP}^n)
\to \pi_1(U(1)) \to \pi_1(S^{2n+1})
\to \pi_1(\mathbb{CP}^n)\to \pi_0(U(1)).
\end{align}$$` + "\n";
    const expected =
      String.raw`$$\begin{align}
\pi_2(S^{2n+1}) \to \pi_2(\mathbb{CP}^n) \to \pi_1(U(1)) \to \pi_1(S^{2n+1}) \to \pi_1(\mathbb{CP}^n)\to \pi_0(U(1)).
\end{align}$$` + "\n";

    expect(formatMarkdown(input).text).toBe(expected);
    expect(formatMarkdown(expected).text).toBe(expected);
  });

  it("keeps distinct relation rows separate when the row break is missing", () => {
    const input =
      String.raw`$$\begin{align}
\partial_\lambda H_\lambda=\iota_XB_{\Sigma,\lambda}
\partial_\lambda\Omega_{\Sigma,\lambda} =\delta B_{\Sigma,\lambda}
\end{align}$$` + "\n";

    expect(formatMarkdown(input).text).toBe(input);
  });
});

describe("lintMarkdown", () => {
  it("reports delimiter, heading, row-break, and complex-environment warnings", () => {
    const source = [
      "# One",
      "### Three",
      "",
      "\\[",
      "a=b",
      "\\]",
      "",
      "$$\\begin{align}",
      "a &= b",
      "c &= d",
      "\\end{align}$$",
      "",
      "\\begin{align}",
      "x=y",
      "\\end{align}",
      "",
      "$$",
      "\\begin{equation}",
      "E=mc^2",
      "\\end{equation}",
      "$$",
      ""
    ].join("\n");

    const warnings = lintMarkdown(source);
    expect(warnings.map((warning) => warning.code)).toEqual(
      expect.arrayContaining([
        "heading-level-jump",
        "mixed-math-delimiter",
        "align-row-missing-break",
        "naked-latex-environment",
        "complex-math-environment"
      ])
    );
  });
});

describe("buildUnifiedDiff", () => {
  it("shows no changed lines when text is identical", () => {
    const diff = buildUnifiedDiff("a\n", "a\n");

    expect(diff).not.toContain("-a");
    expect(diff).not.toContain("+a");
  });
});

describe("defaults and targets", () => {
  it("uses aggressive defaults for open/manual formatting", () => {
    expect(DEFAULT_FORMATTER_OPTIONS.formatOnOpen).toBe(true);
    expect(DEFAULT_FORMATTER_OPTIONS.confirmManualFormat).toBe(false);
    expect(DEFAULT_FORMATTER_OPTIONS.formatOnSave).toBe(false);
    expect(DEFAULT_FORMATTER_OPTIONS.capitalizeSentenceStarts).toBe(true);
    expect(DEFAULT_FORMATTER_OPTIONS.capitalizeTitleWords).toBe(true);
    expect(DEFAULT_FORMATTER_OPTIONS.joinProseLines).toBe(true);
  });

  it("formats ordinary Markdown notes and skips plugin or non-Markdown files", () => {
    expect(shouldFormatVaultPath("Articles/Quantization in AdS/Proca/E.1.2.md")).toBe(true);
    expect(shouldFormatVaultPath("tools/obsidian-md-formatter/README.md")).toBe(false);
    expect(shouldFormatVaultPath(".obsidian/plugins/koishi-markdown-formatter/README.md")).toBe(false);
    expect(shouldFormatVaultPath("Articles/example.tex")).toBe(false);
  });
});
