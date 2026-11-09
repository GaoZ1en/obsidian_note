import type { Segment } from "./segments";

interface AbsolutePath {
  volume: string;
  parts: string[];
  windows: boolean;
}

export interface LinkNormalizationOptions {
  wikiLinks: boolean;
  markdownLinks: boolean;
  /** Vault-relative path of the source note, required for Markdown destinations. */
  sourcePath?: string;
}

/** Only line segments contain links: never rewrite YAML, fenced code or display math. */
export function normalizeVaultLinks(segments: Segment[], vaultBasePath: string, options: LinkNormalizationOptions): Segment[] {
  const root = parseAbsolutePath(vaultBasePath);
  if (root === null) {
    return segments;
  }

  const output: Segment[] = [];
  for (let index = 0; index < segments.length;) {
    const segment = segments[index];
    if (segment.kind !== "line") {
      output.push(segment);
      index += 1;
      continue;
    }

    const start = index;
    while (index < segments.length && segments[index].kind === "line") {
      index += 1;
    }
    // Process adjacent lines together so multiline inline code/math stays protected.
    const lines = normalizeLinksInText(segments.slice(start, index).map((item) => item.lines[0]).join("\n"), root, options).split("\n");
    for (let offset = 0; offset < lines.length; offset += 1) {
      output.push({ ...segments[start + offset], lines: [lines[offset]] });
    }
  }
  return output;
}

function normalizeLinksInText(text: string, root: AbsolutePath, options: LinkNormalizationOptions): string {
  const output: string[] = [];
  let cursor = 0;
  while (cursor < text.length) {
    const protectedEnd = readProtectedEnd(text, cursor);
    if (protectedEnd !== null) {
      const protectedText = text.slice(cursor, protectedEnd);
      const reference = (cursor === 0 || text[cursor - 1] === "\n")
        ? protectedText.match(/^ {0,3}\[[^\]\n]+\]:[ \t]*/)
        : null;
      if (options.markdownLinks && options.sourcePath && (text.startsWith("](", cursor) || reference !== null)) {
        const destinationStart = reference?.[0].length ?? 2;
        output.push(normalizeMarkdownDestination(protectedText, destinationStart, root, options.sourcePath));
      } else {
        output.push(protectedText);
      }
      cursor = protectedEnd;
      continue;
    }

    if (text.startsWith("[[", cursor)) {
      const end = text.indexOf("]]", cursor + 2);
      if (end !== -1) {
        const body = text.slice(cursor + 2, end);
        if (/[\r\n\[\]]/.test(body)) {
          output.push(text.slice(cursor, end + 2));
          cursor = end + 2;
          continue;
        }
        // Tables escape alias separators as \|; keep the escape with the suffix.
        const suffixStart = body.search(/#|\\?\|/);
        const target = suffixStart === -1 ? body : body.slice(0, suffixStart);
        const suffix = suffixStart === -1 ? "" : body.slice(suffixStart);
        const relative = options.wikiLinks ? relativeToVault(target, root) : null;
        output.push(relative === null ? text.slice(cursor, end + 2) : `[[${relative}${suffix}]]`);
        cursor = end + 2;
        continue;
      }
    }

    output.push(text[cursor]);
    cursor += 1;
  }
  return output.join("");
}

/** Rewrite only the destination, retaining the label, angle brackets and optional title. */
function normalizeMarkdownDestination(text: string, offset: number, root: AbsolutePath, sourcePath: string): string {
  while (/\s/.test(text[offset] ?? "") && offset < text.length) {
    offset += 1;
  }
  const angled = text[offset] === "<";
  const start = offset + (angled ? 1 : 0);
  let end = start;
  let depth = 0;
  while (end < text.length) {
    const character = text[end];
    if (angled ? character === ">" : /\s/.test(character) || character === ")" && depth === 0) {
      break;
    }
    if (character === "\\" && /[()<> ]/.test(text[end + 1] ?? "")) {
      end += 2;
      continue;
    }
    if (!angled && character === "(") {
      depth += 1;
    } else if (!angled && character === ")") {
      depth -= 1;
    }
    end += 1;
  }
  if (end === start || angled && text[end] !== ">") {
    return text;
  }
  const destination = text.slice(start, end);
  const suffixStart = destination.search(/[?#]/);
  const path = suffixStart === -1 ? destination : destination.slice(0, suffixStart);
  const suffix = suffixStart === -1 ? "" : destination.slice(suffixStart);
  let decoded: string;
  try {
    // File URLs are decoded by relativeToVault; ordinary Markdown URLs need decoding here.
    decoded = /^file:\/\//i.test(path) ? path : decodeURIComponent(path.replace(/\\([()<> ])/g, "$1"));
  } catch {
    return text;
  }
  const target = relativeToVault(decoded, root);
  if (target === null || /[\r\n\u0000]/.test(target) || /^(?:\/|[A-Za-z]:|\\)/.test(sourcePath)) {
    return text;
  }
  const sourceParts = sourcePath.split("/");
  if (sourceParts.some((part) => part === ".." || part === "." || part === "")) {
    return text;
  }
  sourceParts.pop();
  const targetParts = target.split("/");
  let common = 0;
  while (common < sourceParts.length && common < targetParts.length && sourceParts[common] === targetParts[common]) {
    common += 1;
  }
  const relative = [...sourceParts.slice(common).map(() => ".."), ...targetParts.slice(common)]
    .map((part) => encodeURIComponent(part).replace(/[!'()*]/g, (character) => `%${character.charCodeAt(0).toString(16).toUpperCase()}`))
    .join("/");
  return `${text.slice(0, start)}${relative}${suffix}${text.slice(end)}`;
}

function relativeToVault(target: string, root: AbsolutePath): string | null {
  let path = target;
  if (/^file:\/\//i.test(path)) {
    try {
      const url = new URL(path);
      if (url.host !== "" && url.host !== "localhost" || url.search !== "") {
        return null;
      }
      path = decodeURIComponent(url.pathname);
      if (/^\/[A-Za-z]:\//.test(path)) {
        path = path.slice(1);
      }
      // Decoding must not introduce Wiki-link syntax or additional lines.
      if (/[#|\[\]\r\n]/.test(path)) {
        return null;
      }
    } catch {
      return null;
    }
  }

  const absolute = parseAbsolutePath(path);
  if (absolute === null || absolute.windows !== root.windows || absolute.volume !== root.volume) {
    return null;
  }
  const compare = (part: string): string => root.windows ? part.toLowerCase() : part;
  if (absolute.parts.length <= root.parts.length || root.parts.some((part, index) => compare(part) !== compare(absolute.parts[index]))) {
    return null;
  }
  return absolute.parts.slice(root.parts.length).join("/");
}

function parseAbsolutePath(path: string): AbsolutePath | null {
  let volume = "/";
  let rest = path;
  let windows = false;
  if (/^[A-Za-z]:[\\/]/.test(path)) {
    volume = path.slice(0, 2).toLowerCase();
    rest = path.slice(3).replace(/\\/g, "/");
    windows = true;
  } else if (/^(?:\\\\|\/\/)/.test(path)) {
    const unc = path.replace(/\\/g, "/").match(/^\/\/([^/]+)\/([^/]+)(?:\/|$)/);
    if (unc === null) {
      return null;
    }
    volume = `//${unc[1]}/${unc[2]}`.toLowerCase();
    rest = path.replace(/\\/g, "/").slice(unc[0].length);
    windows = true;
  } else if (path.startsWith("/")) {
    rest = path.slice(1);
  } else {
    return null;
  }

  const parts: string[] = [];
  for (const part of rest.split("/")) {
    if (part === "" || part === ".") {
      continue;
    }
    if (part === "..") {
      if (parts.pop() === undefined) {
        return null;
      }
    } else {
      parts.push(part);
    }
  }
  return { volume, parts, windows };
}

/** Skip inline code, math, comments and escaped opening brackets. */
function readProtectedEnd(text: string, start: number): number | null {
  if ((start === 0 || text[start - 1] === "\n") && /^(?: {4}|\t)/.test(text.slice(start))) {
    const end = text.indexOf("\n", start);
    return end === -1 ? text.length : end;
  }
  if (start === 0 || text[start - 1] === "\n") {
    const rest = text.slice(start);
    if (/^ {0,3}\[[^\]\n]+\]:/.test(rest)) {
      const end = text.indexOf("\n", start);
      return end === -1 ? text.length : end;
    }
    const quotedFence = rest.match(/^[ \t]*(?:>[ \t]*)+(`{3,}|~{3,})[^\n]*/);
    if (quotedFence !== null) {
      const fence = quotedFence[1];
      const closing = new RegExp(`\\n[ \\t]*(?:>[ \\t]*)+${fence[0]}{${fence.length},}[ \\t]*(?=\\n|$)`);
      const tail = rest.slice(quotedFence[0].length);
      const match = tail.match(closing);
      return match?.index === undefined ? text.length : start + quotedFence[0].length + match.index + match[0].length;
    }
  }
  if (text.startsWith("\\[[", start)) {
    return start + 2;
  }
  const htmlCode = text.slice(start).match(/^<(code|pre)(?:\s[^>]*|)>/i);
  if (htmlCode !== null) {
    const closing = new RegExp(`</${htmlCode[1]}\\s*>`, "i");
    const match = text.slice(start + htmlCode[0].length).match(closing);
    return match?.index === undefined ? text.length : start + htmlCode[0].length + match.index + match[0].length;
  }
  // A Wiki-looking string in a Markdown link destination is not a Wiki link.
  if (text.startsWith("](", start)) {
    let depth = 1;
    let angle = false;
    let quote = "";
    for (let end = start + 2; end < text.length; end += 1) {
      const character = text[end];
      if (character === "\\") {
        end += 1;
      } else if (angle) {
        angle = character !== ">";
      } else if (quote !== "") {
        if (character === quote) {
          quote = "";
        }
      } else if (character === "<") {
        angle = true;
      } else if ((character === '"' || character === "'") && /\s/.test(text[end - 1] ?? "")) {
        quote = character;
      } else if (character === "(") {
        depth += 1;
      } else if (character === ")" && --depth === 0) {
        return end + 1;
      }
    }
  }
  if (text[start] === "`") {
    let length = 1;
    while (text[start + length] === "`") {
      length += 1;
    }
    const delimiter = "`".repeat(length);
    let end = text.indexOf(delimiter, start + length);
    while (end !== -1) {
      if (text[end - 1] !== "`" && text[end + length] !== "`") {
        return end + length;
      }
      end = text.indexOf(delimiter, end + length);
    }
    return start + length;
  }

  for (const [opening, closing] of [["<!--", "-->"], ["%%", "%%"], ["\\(", "\\)"], ["\\[", "\\]"], ["$$", "$$"], ["$", "$"]]) {
    if (text.startsWith(opening, start)) {
      let end = text.indexOf(closing, start + opening.length);
      while (end !== -1 && isEscaped(text, end)) {
        end = text.indexOf(closing, end + closing.length);
      }
      if (end !== -1) {
        return end + closing.length;
      }
      // Unclosed comments hide their remainder; unmatched math delimiters do not.
      return opening === "<!--" || opening === "%%" ? text.length : start + opening.length;
    }
  }
  if (text[start] === "\\") {
    return Math.min(start + 2, text.length);
  }
  return null;
}

function isEscaped(text: string, index: number): boolean {
  let count = 0;
  while (index > 0 && text[--index] === "\\") {
    count += 1;
  }
  return count % 2 === 1;
}
