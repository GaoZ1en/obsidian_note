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
  });

  it("formats ordinary Markdown notes and skips plugin or non-Markdown files", () => {
    expect(shouldFormatVaultPath("Articles/Quantization in AdS/Proca/E.1.2.md")).toBe(true);
    expect(shouldFormatVaultPath("tools/obsidian-md-formatter/README.md")).toBe(false);
    expect(shouldFormatVaultPath(".obsidian/plugins/koishi-markdown-formatter/README.md")).toBe(false);
    expect(shouldFormatVaultPath("Articles/example.tex")).toBe(false);
  });
});
