import { describe, expect, it } from "vitest";
import { formatMarkdown } from "../src/formatter";
import { DEFAULT_FORMATTER_OPTIONS } from "../src/types";

const root = "/Users/koishi/Documents/Note";
const options = {
  capitalizeSentenceStarts: false,
  capitalizeTitleWords: false,
  joinProseLines: false,
  normalizeMathDelimiters: false
};

function format(source: string, vaultBasePath: string = root): string {
  return formatMarkdown(source, options, { vaultBasePath }).text;
}

describe("absolute Wiki links", () => {
  it.each([
    ["Articles/example", ""],
    ["Articles/example.md", "#Section|a label"],
    ["Literature Notes/量子引力.md", "#^block-id|中文别名"],
    ["images/plot.png", "|300"],
    ["Articles/example.md", "|label #not-an-anchor"],
    ["Articles/example.md", "#Section#Subsection"]
  ])("converts a vault path and preserves the suffix: %s%s", (path, suffix) => {
    for (const prefix of ["", "!"]) {
      const source = `${prefix}[[${root}/${path}${suffix}]]\n`;
      const expected = `${prefix}[[${path}${suffix}]]\n`;
      expect(format(source)).toBe(expected);
      expect(format(expected)).toBe(expected);
    }
  });

  it("handles multiple links in headings, callouts, tables and prose", () => {
    const input = [
      `# [[${root}/Articles/a.md|title]]`, "",
      `> [!note] [[${root}/Articles/b#Heading]]`, "",
      `| [[${root}/Articles/c]] | [[${root}/Articles/d]] |`, "",
      `See [[${root}/Articles/e]] and ![[${root}/images/f.png]].`, ""
    ].join("\n");
    expect(format(input)).toBe(input.replaceAll(`${root}/`, ""));
  });

  it.each([
    "/Users/koishi/Documents/Notebook/a.md",
    "/Users/koishi/Documents/Other/a.md",
    `${root}/../Other/a.md`,
    root,
    `${root}/`,
    "Articles/a.md", "../a.md", "#Heading", "#^block", "https://example.com/a",
    "C:\\Other\\a.md", "~/Documents/Note/a.md"
  ])("preserves links not strictly inside the known vault: %s", (path) => {
    const source = `[[${path}|label]]\n`;
    expect(format(source)).toBe(source);
  });

  it("normalizes dot segments and a trailing slash on the vault root", () => {
    expect(format(`[[${root}/Articles/./sub/../a.md]]\n`, `${root}/`)).toBe("[[Articles/a.md]]\n");
  });

  it("does not persist or guess a root when unavailable, and can be disabled", () => {
    const source = `[[${root}/Articles/a.md]]\n`;
    expect(formatMarkdown(source, options).text).toBe(source);
    expect(format(source, "relative/root")).toBe(source);
    expect(formatMarkdown(source, { ...options, normalizeAbsoluteWikiLinks: false }, { vaultBasePath: root }).text).toBe(source);
    expect(DEFAULT_FORMATTER_OPTIONS.normalizeAbsoluteWikiLinks).toBe(true);
  });

  it.each([
    ["C:\\Users\\koishi\\Note", "c:\\Users\\koishi\\Note\\Articles\\a.md"],
    ["C:/Users/koishi/Note/", "C:/Users/koishi/Note/Articles/a.md"],
    ["\\\\server\\share\\Note", "\\\\server\\share\\Note\\Articles\\a.md"],
    ["//server/share/Note", "//server/share/Note/Articles/a.md"]
  ])("supports Windows roots: %s", (vault, target) => {
    expect(format(`[[${target}#^block|alias]]\n`, vault)).toBe("[[Articles/a.md#^block|alias]]\n");
  });

  it.each([
    "D:/Users/koishi/Note/a.md", "C:/Users/koishi/Notebook/a.md",
    "//server/other/Note/a.md", "//other/share/Note/a.md"
  ])("preserves other Windows drives, shares and sibling roots: %s", (target) => {
    const vault = target.startsWith("//") ? "//server/share/Note" : "C:/Users/koishi/Note";
    expect(format(`[[${target}]]\n`, vault)).toBe(`[[${target}]]\n`);
  });

  it("supports local file URLs without decoding literal filesystem paths", () => {
    expect(format(`[[file://${root}/Literature%20Notes/%E9%87%8F%E5%AD%90.md#Heading|alias]]\n`))
      .toBe("[[Literature Notes/量子.md#Heading|alias]]\n");
    expect(format("[[file:///C:/Note/Articles/a.md]]\n", "C:/Note")).toBe("[[Articles/a.md]]\n");
    expect(format(`[[${root}/literal%20name.md]]\n`)).toBe("[[literal%20name.md]]\n");
  });

  it.each([
    `file://remote${root}/a.md`, `file://${root}/bad%ZZ.md`,
    `file://${root}/encoded%23heading.md`, `file://${root}/a.md?query=1`,
    `file://${root}/encoded%7Calias.md`, `file://${root}/encoded%0Aline.md`
  ])("leaves unsafe or unsupported file URLs untouched: %s", (url) => {
    expect(format(`[[${url}]]\n`)).toBe(`[[${url}]]\n`);
  });

  it.each([
    "    [[/vault/note.md]]",
    "\t[[/vault/note.md]]",
    "> ~~~\n> [[/vault/note.md]]\n> ~~~",
    "> ```md\n> [[/vault/note.md]]\n> ```",
    '<code class="language-md">[[/vault/note.md]]</code>',
    "<pre>\n[[/vault/note.md]]\n</pre>",
    "[[wrong [[/vault/note.md]]]]",
    "[[[/vault/note.md]]]",
    "[link](https://example.com/[[/vault/note.md]])",
    '[link](https://example.com "[[/vault/note.md]]")',
    "![alt](https://example.com/[[/vault/note.md]])",
    '[ref]: https://example.com "[[/vault/note.md]]"'
  ])("preserves literal or malformed Wiki-looking content: %s", (input) => {
    expect(format(`${input}\n`, "/vault")).toBe(`${input}\n`);
  });

  it("continues after unmatched currency delimiters and escaped opening brackets", () => {
    expect(format(`Cost: $5.\n\n[[${root}/a.md]]\n`)).toBe("Cost: $5.\n\n[[a.md]]\n");
    expect(format(`Keep \\[[${root}/a.md]]. Then [[${root}/b.md]].\n`))
      .toBe(`Keep \\[[${root}/a.md]]. Then [[b.md]].\n`);
  });

  it("preserves escaped table alias separators on Windows", () => {
    expect(format(String.raw`| [[C:\Note\a.md\|alias]] |` + "\n", "C:/Note"))
      .toBe(String.raw`| [[a.md\|alias]] |` + "\n");
  });

  it("preserves frontmatter, fenced code, inline code, math, comments and escaped brackets", () => {
    const link = `[[${root}/Articles/a.md]]`;
    const input = [
      "---", `example: '${link}'`, "---", "",
      "```md", link, "```", "",
      "~~~md", link, "~~~", "",
      `Keep \`${link}\` and \`\`a \` ${link}\`\`.`, "",
      `\`multiline`, link, "code\`", "",
      `$${link}$ and \\(${link}\\).`, "",
      "$$", link, "$$", "",
      `<!-- ${link} -->`, `%% ${link} %%`, "",
      `Keep \\${link}`, "",
      `Convert ${link}.`, ""
    ].join("\n");
    expect(format(input)).toBe(input.replace(`Convert ${link}.`, "Convert [[Articles/a.md]]."));
  });
});
