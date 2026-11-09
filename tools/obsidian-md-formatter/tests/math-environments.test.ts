import { describe, expect, it } from "vitest";
import { formatMarkdown } from "../src/formatter";

function environments(source: string): string[] {
  return [...source.matchAll(/\\(?:begin|end)\{[^}]+\}/g)].map((match) => match[0]);
}

const arrowChain = String.raw`\text{falloffs}
\Longrightarrow
\text{charges}
\Longrightarrow
\text{extension}
\Longrightarrow \mathcal H = \mathcal H_a\otimes\mathcal H_b.`;

function assertStable(source: string): string {
  const once = formatMarkdown(source).text;
  const twice = formatMarkdown(once).text;
  expect(environments(once)).toEqual(environments(source));
  expect(twice).toBe(once);
  // Source-line joining may change whitespace, never the mathematical tokens.
  expect(once.replace(/\s/g, "")).toBe(source.replace(/\s/g, ""));
  return once;
}

describe("math environment preservation", () => {
  it.each(["align", "align*", "aligned"])("does not serialize stale closing indices for %s", (name) => {
    const source = `$$\\begin{${name}}\n${arrowChain}\n\\end{${name}}$$\n`;
    assertStable(source);
  });

  it("normalizes long chains in one pass rather than consuming one boundary per pass", () => {
    const chain = Array.from({ length: 30 }, (_, index) => String.raw`\text{step ${index}}` + "\n" + String.raw`\Longrightarrow`)
      .join("\n") + " x=y";
    assertStable(`$$\\begin{align}\n${chain}\n\\end{align}$$\n`);
  });

  it("preserves nested environments and explicit LaTeX row breaks", () => {
    const source = String.raw`$$\begin{align}
A &= \begin{aligned}
a &= b \\
c &= d
\end{aligned} \\
B &= C
\end{align}$$` + "\n";
    assertStable(source);
  });

  it("keeps multiple display blocks independently paired", () => {
    const first = `$$\\begin{align}\n${arrowChain}\n\\end{align}$$`;
    const source = `${first}\n\nProse.\n\n$$\\begin{align*}\nx=y\n\\end{align*}$$\n`;
    assertStable(source);
  });

  it("also stabilizes simple display math without an align wrapper", () => {
    const source = `$$\n${arrowChain}\n$$\n`;
    const options = { wrapSimpleDisplayMathInAlign: false };
    const once = formatMarkdown(source, options).text;
    expect(formatMarkdown(once, options).text).toBe(once);
    expect(once.replace(/\s/g, "")).toBe(source.replace(/\s/g, ""));
  });
});
