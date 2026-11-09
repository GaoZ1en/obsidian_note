import { describe, expect, it } from "vitest";
import { formatMarkdown } from "../src/formatter";

const root = "/Users/koishi/Documents/Note";
const sourcePath = "Literature Notes/arxiv/2026/11/09/paper.md";
const options = {
  capitalizeSentenceStarts: false,
  capitalizeTitleWords: false,
  joinProseLines: false,
  normalizeMathDelimiters: false
};

function format(source: string, note = sourcePath, vault = root): string {
  return formatMarkdown(source, options, { vaultBasePath: vault, sourcePath: note }).text;
}

describe("absolute Markdown links", () => {
  it("covers the reported literature-note link without inventing a replacement anchor", () => {
    const source = `[the vault formalism](<${root}/Articles/Quantization in AdS/perturbation/formalism.md#L7-L27>)\n`;
    const expected = "[the vault formalism](<../../../../../Articles/Quantization%20in%20AdS/perturbation/formalism.md#L7-L27>)\n";
    expect(format(source)).toBe(expected);
    expect(format(expected)).toBe(expected);
  });

  it.each([
    ["[label]", "note.md", ""],
    ["![image]", "plot.png", "#^block"],
    ["[label]", "中文.md", "#标题"],
    ["[**label**]", "note.md", "?mode=1#Heading"],
    ["[nested [label]]", "note.md", "#Section"]
  ])("preserves Markdown label and suffix: %s %s %s", (label, target, suffix) => {
    expect(format(`${label}(${root}/a/${target}${suffix})\n`, "a/source.md"))
      .toBe(`${label}(${encodeURIComponent(target)}${suffix})\n`);
  });

  it.each([
    ["/a/source.md", "a/target.md"],
    ["/a/source.md", "b/target.md"],
    ["/source.md", "a/target.md"]
  ])("computes relative paths from each source directory: %s -> %s", (note, target) => {
    const context = note.slice(1);
    const expected = note === "/source.md" ? "a/target.md" : target.startsWith("a/") ? "target.md" : "../b/target.md";
    expect(format(`[x](${root}/${target})\n`, context)).toBe(`[x](${expected})\n`);
  });

  it.each([' "a title"', " 'a title'", ' "a ) title [[/Users/koishi/Documents/Note/no.md]]"', " (a title)"])(
    "retains optional titles verbatim: %s", (title) => {
      const source = `[label](<${root}/a/with space.md>${title})\n`;
      expect(format(source, "a/source.md")).toBe(`[label](<with%20space.md>${title})\n`);
    }
  );

  it.each([
    ["note(v1).md", "note%28v1%29.md"],
    [String.raw`note\(v1\).md`, "note%28v1%29.md"],
    ["a%20b.md", "a%20b.md"],
    ["a%23b.md", "a%23b.md"],
    ["100%25.md", "100%25.md"]
  ])("handles nested parentheses, Markdown escaping and URL encoding: %s", (path, encoded) => {
    expect(format(`[label](${root}/a/${path})\n`, "a/source.md")).toBe(`[label](${encoded})\n`);
  });

  it("handles parentheses inside angle-wrapped destinations", () => {
    expect(format(`[label](<${root}/a/unmatched(.md>)\n`, "a/source.md"))
      .toBe("[label](<unmatched%28.md>)\n");
  });

  it("normalizes reference definitions and leaves their use unchanged", () => {
    const source = `[label][ref]\n\n[ref]: <${root}/a/with space.md#Heading> "title"\n`;
    expect(format(source, "a/source.md")).toBe('[label][ref]\n\n[ref]: <with%20space.md#Heading> "title"\n');
  });

  it("supports local file URLs and Windows vaults", () => {
    expect(format(`[label](file://${root}/a/note.md)\n`, "a/source.md")).toBe("[label](note.md)\n");
    expect(format("[label](<C:/Note/a/note.md>)\n", "a/source.md", "C:/Note"))
      .toBe("[label](<note.md>)\n");
  });

  it.each([
    "https://example.com/a.md", "https://example.com/[[/Users/koishi/Documents/Note/a.md]]",
    "/Users/koishi/Documents/Notebook/a.md", "/outside/a.md", `${root}/../Other/a.md`,
    "../a.md", "#Heading", "mailto:person@example.com", `${root}/bad%ZZ.md`
  ])("preserves external, already-relative and malformed destinations: %s", (destination) => {
    const input = `[label](<${destination}>)\n`;
    expect(format(input)).toBe(input);
  });

  it("does not guess the source directory, and each link option is independent", () => {
    const source = `[label](${root}/a/note.md) and [[${root}/a/note.md]]\n`;
    expect(formatMarkdown(source, options, { vaultBasePath: root }).text)
      .toBe(`[label](${root}/a/note.md) and [[a/note.md]]\n`);
    expect(formatMarkdown(source, { ...options, normalizeAbsoluteWikiLinks: false }, { vaultBasePath: root, sourcePath: "a/source.md" }).text)
      .toBe(`[label](note.md) and [[${root}/a/note.md]]\n`);
    expect(formatMarkdown(source, { ...options, normalizeAbsoluteMarkdownLinks: false }, { vaultBasePath: root, sourcePath: "a/source.md" }).text)
      .toBe(`[label](${root}/a/note.md) and [[a/note.md]]\n`);
    expect(format(source, "../outside/source.md")).toBe(`[label](${root}/a/note.md) and [[a/note.md]]\n`);
  });

  it("keeps code, math, comments and YAML protected with a source note context", () => {
    const link = `[label](<${root}/a/note.md>)`;
    const source = [
      "---", `sample: '${link}'`, "---", "",
      "```md", link, "```", "",
      `Keep \`${link}\` and $${link}$ and \\(${link}\\).`, "",
      `<!-- ${link} -->`, `%% ${link} %%`, "",
      `    ${link}`, "",
      `<code>${link}</code>`, "",
      `> ~~~`, `> ${link}`, "> ~~~", ""
    ].join("\n");
    expect(format(source)).toBe(source);
  });
});
