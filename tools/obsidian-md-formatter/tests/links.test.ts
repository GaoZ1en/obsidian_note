import { describe, expect, it } from "vitest";
import { formatMarkdown } from "../src/formatter";
import { relativizeVaultLinks } from "../src/links";
import type { VaultLinkContext } from "../src/links";

const context: VaultLinkContext = {
  vaultBasePath: "/Users/koishi/Documents/Note",
  notePath: "Literature Notes/arxiv/2026/11/09/2026_11_09_overview.md"
};
const root = "/Users/koishi/Documents/Note";

describe("portable vault-internal links", () => {
  it("makes same-folder Markdown targets explicitly relative", () => {
    const input = "[inventory](<" + root + "/Literature Notes/arxiv/2026/11/09/2026_11_09_inventory.md>)";
    const expected = "[inventory](<./2026_11_09_inventory.md>)";
    expect(relativizeVaultLinks(input, context)).toBe(expected);
    expect(relativizeVaultLinks(expected, context)).toBe(expected);
  });

  it("crosses folders without changing fragments, link titles, or spaces", () => {
    const input = "[formalism](<" + root + "/Articles/Quantization in AdS/perturbation/formalism.md#L7-L27> \"source\")";
    const expected = "[formalism](<../../../../../Articles/Quantization in AdS/perturbation/formalism.md#L7-L27> \"source\")";
    expect(relativizeVaultLinks(input, context)).toBe(expected);
  });

  it("retains percent encoding for bare links and image destinations", () => {
    const input = "![figure](" + root + "/Literature%20Notes/arxiv/2026/11/09/Fig%20A.png#view)";
    expect(relativizeVaultLinks(input, context)).toBe("![figure](./Fig%20A.png#view)");
  });

  it("rewrites Wiki links using vault-relative targets", () => {
    const input = "[[" + root + "/Articles/example.md#Heading|custom label]]";
    expect(relativizeVaultLinks(input, context)).toBe("[[Articles/example.md#Heading|custom label]]");
  });

  it("rewrites reference-style destinations and file URLs", () => {
    const input = "[source]: <file://" + root + "/Articles/test file.md> \"title\"";
    expect(relativizeVaultLinks(input, context)).toBe("[source]: <../../../../../Articles/test file.md> \"title\"");
  });

  it("leaves external links, lookalike roots, and escaping paths unchanged", () => {
    const input = [
      "[external](https://example.com/Users/koishi/Documents/Note/a.md)",
      "[other](</Users/koishi/Documents/Note-elsewhere/a.md>)",
      "[traversal](</Users/koishi/Documents/Note/../private/a.md>)"
    ].join(" ");
    expect(relativizeVaultLinks(input, context)).toBe(input);
  });

  it("preserves code spans and inline math", () => {
    const target = "[a](<" + root + "/Articles/a.md>)";
    const tick = String.fromCharCode(96);
    const input = tick + target + tick + " $" + target + "$ \\(" + target + "\\) " + target;
    expect(relativizeVaultLinks(input, context))
      .toBe(tick + target + tick + " $" + target + "$ \\(" + target + "\\) [a](<../../../../../Articles/a.md>)");
  });

  it("supports case-insensitive Windows roots and backslashes", () => {
    const win: VaultLinkContext = {
      vaultBasePath: "C:\\Users\\Koishi\\Note",
      notePath: "article.md"
    };
    const input = "[article](<c:\\users\\koishi\\NOTE\\Figures\\Fig A.png>)";
    expect(relativizeVaultLinks(input, win)).toBe("[article](<./Figures/Fig A.png>)");
  });

  it("is opt-out, requires a note context, and protects code and frontmatter", () => {
    const target = "[a](<" + root + "/Articles/a.md>)";
    const fence = String.fromCharCode(96).repeat(3);
    const source = ["---", "path: " + target, "---", "", fence + "md", target, fence, "", target, ""].join("\n");
    const opts = { capitalizeSentenceStarts: false, capitalizeTitleWords: false, joinProseLines: false };
    expect(formatMarkdown(target + "\n", opts).text).toBe(target + "\n");
    expect(formatMarkdown(target + "\n", { ...opts, relativizeAbsoluteVaultLinks: false }, context).text)
      .toBe(target + "\n");
    const result = formatMarkdown(source, opts, context).text;
    expect(result).toContain("path: " + target);
    expect(result).toContain(fence + "md\n" + target + "\n" + fence);
    expect(result).toContain("[a](<../../../../../Articles/a.md>)");
  });
});
