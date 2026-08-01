export interface SentenceCapitalizationResult {
  text: string;
  atSentenceStart: boolean;
}

interface ProtectedToken {
  end: number;
  countsAsContent: boolean;
}

interface LineContext {
  contentStart: number;
  atSentenceStart: boolean;
  skip: boolean;
  stateAfterSkip: boolean;
}

const ABBREVIATIONS = new Set([
  "al",
  "app",
  "approx",
  "cf",
  "ch",
  "cor",
  "def",
  "dr",
  "eq",
  "eqs",
  "etc",
  "ex",
  "fig",
  "figs",
  "jr",
  "lem",
  "mr",
  "mrs",
  "ms",
  "no",
  "nos",
  "prof",
  "prop",
  "ref",
  "refs",
  "resp",
  "sec",
  "secs",
  "sr",
  "st",
  "thm",
  "vs"
]);

const TITLE_MINOR_WORDS = new Set([
  "a",
  "an",
  "and",
  "as",
  "at",
  "but",
  "by",
  "en",
  "for",
  "from",
  "if",
  "in",
  "into",
  "nor",
  "of",
  "off",
  "on",
  "onto",
  "or",
  "over",
  "per",
  "so",
  "than",
  "the",
  "to",
  "up",
  "upon",
  "via",
  "vs",
  "with",
  "without",
  "yet"
]);

export function capitalizeSentenceStarts(
  line: string,
  atSentenceStart = true
): SentenceCapitalizationResult {
  if (line.trim().length === 0) {
    return {
      text: line,
      atSentenceStart: true
    };
  }

  const context = getLineContext(line, atSentenceStart);
  if (context.skip) {
    return {
      text: line,
      atSentenceStart: context.stateAfterSkip
    };
  }

  const prefix = line.slice(0, context.contentStart);
  const content = capitalizeProse(line.slice(context.contentStart), context.atSentenceStart);
  return {
    text: `${prefix}${content.text}`,
    atSentenceStart: content.atSentenceStart
  };
}

export function capitalizeHeadingTitle(line: string): string {
  const heading = line.match(/^(\s*(?:>\s*)*#{1,6}[ \t]+)(.*)$/);
  if (heading === null) {
    return line;
  }

  const content = heading[2] ?? "";
  const closingSequence = content.match(/^(.*?)([ \t]+#+[ \t]*)$/);
  const title = closingSequence?.[1] ?? content;
  const suffix = closingSequence?.[2] ?? "";
  return `${heading[1]}${capitalizeTitleText(title)}${suffix}`;
}

export function capitalizeTitleText(text: string): string {
  const output: string[] = [];
  let hasTitleContent = false;
  let cursor = 0;

  while (cursor < text.length) {
    const protectedToken = readProtectedToken(text, cursor) ?? readTitleTechnicalToken(text, cursor);
    if (protectedToken !== null) {
      output.push(text.slice(cursor, protectedToken.end));
      hasTitleContent ||= protectedToken.countsAsContent;
      cursor = protectedToken.end;
      continue;
    }

    const word = readTitleWord(text, cursor);
    if (word !== null) {
      const isCompoundEdge =
        ((text[word.end] ?? "") === "-" && (text[cursor - 1] ?? "") !== "-") ||
        ((text[cursor - 1] ?? "") === "-" && (text[word.end] ?? "") !== "-");
      output.push(formatTitleWord(word.text, hasTitleContent, isCompoundEdge));
      hasTitleContent ||= word.countsAsContent;
      cursor = word.end;
      continue;
    }

    output.push(text[cursor] ?? "");
    cursor += 1;
  }

  return output.join("");
}

function getLineContext(line: string, atSentenceStart: boolean): LineContext {
  let cursor = countLeadingWhitespace(line);
  let isBlockquote = false;

  while (line[cursor] === ">") {
    isBlockquote = true;
    cursor += 1;
    while (line[cursor] === " ") {
      cursor += 1;
    }
  }

  const rest = line.slice(cursor);
  if (isLikelyTableRow(rest) || isThematicBreak(rest)) {
    return {
      contentStart: cursor,
      atSentenceStart,
      skip: true,
      stateAfterSkip: true
    };
  }

  if (/^<!--/.test(rest)) {
    return {
      contentStart: cursor,
      atSentenceStart,
      skip: true,
      stateAfterSkip: atSentenceStart
    };
  }

  const callout = rest.match(/^\[![^\]]+\][+-]?\s*/);
  if (callout !== null) {
    return lineContext(cursor + callout[0].length, true);
  }

  const heading = rest.match(/^#{1,6}\s+/);
  if (heading !== null) {
    return lineContext(cursor + heading[0].length, true);
  }

  const footnote = rest.match(/^\[\^[^\]]+\]:\s*/);
  if (footnote !== null) {
    return lineContext(cursor + footnote[0].length, true);
  }

  const listItem = rest.match(/^(?:[-+*]|\d+[.)])\s+/);
  if (listItem !== null) {
    cursor += listItem[0].length;
    const task = line.slice(cursor).match(/^\[[ xX]\]\s+/);
    if (task !== null) {
      cursor += task[0].length;
    }
    return lineContext(cursor, false);
  }

  return lineContext(cursor, isBlockquote ? true : atSentenceStart);
}

function lineContext(contentStart: number, atSentenceStart: boolean): LineContext {
  return {
    contentStart,
    atSentenceStart,
    skip: false,
    stateAfterSkip: atSentenceStart
  };
}

function capitalizeProse(text: string, initialState: boolean): SentenceCapitalizationResult {
  const output: string[] = [];
  let atSentenceStart = initialState;
  let cursor = 0;

  while (cursor < text.length) {
    const protectedToken = readProtectedToken(text, cursor);
    if (protectedToken !== null) {
      output.push(text.slice(cursor, protectedToken.end));
      if (atSentenceStart && protectedToken.countsAsContent) {
        atSentenceStart = false;
      }
      cursor = protectedToken.end;
      continue;
    }

    const character = text[cursor] ?? "";
    if (atSentenceStart && /[a-z]/.test(character)) {
      output.push(character.toUpperCase());
      atSentenceStart = false;
    } else {
      output.push(character);
      if (isLetterOrNumber(character)) {
        atSentenceStart = false;
      } else if (character === "?" || character === "!") {
        atSentenceStart = true;
      } else if (character === "." && isSentenceEndingPeriod(text, cursor)) {
        atSentenceStart = true;
      }
    }

    cursor += 1;
  }

  return {
    text: output.join(""),
    atSentenceStart
  };
}

function readProtectedToken(text: string, index: number): ProtectedToken | null {
  const code = readDelimitedRun(text, index, "`");
  if (code !== null) {
    return {
      end: code,
      countsAsContent: true
    };
  }

  const bracketMath = readBackslashInlineMath(text, index);
  if (bracketMath !== null) {
    return {
      end: bracketMath,
      countsAsContent: true
    };
  }

  if (text[index] === "$" && !isEscaped(text, index)) {
    const math = readDelimitedRun(text, index, "$");
    if (math !== null) {
      return {
        end: math,
        countsAsContent: true
      };
    }
  }

  const pandocCitation = readBracketedToken(text, index, "[@");
  if (pandocCitation !== null) {
    return {
      end: pandocCitation,
      countsAsContent: true
    };
  }

  const footnoteReference = readBracketedToken(text, index, "[^");
  if (footnoteReference !== null) {
    return {
      end: footnoteReference,
      countsAsContent: true
    };
  }

  const wikiLink = readWikiLink(text, index);
  if (wikiLink !== null) {
    return {
      end: wikiLink,
      countsAsContent: true
    };
  }

  const image = readMarkdownImage(text, index);
  if (image !== null) {
    return {
      end: image,
      countsAsContent: true
    };
  }

  const linkDestination = readLinkDestination(text, index);
  if (linkDestination !== null) {
    return {
      end: linkDestination,
      countsAsContent: false
    };
  }

  const angleToken = readAngleToken(text, index);
  if (angleToken !== null) {
    return angleToken;
  }

  const url = readBareUrl(text, index);
  if (url !== null) {
    return {
      end: url,
      countsAsContent: true
    };
  }

  const entity = text.slice(index).match(/^&(?:#\d+|#x[\da-f]+|[a-z][\w-]*);/i);
  if (entity !== null) {
    return {
      end: index + entity[0].length,
      countsAsContent: false
    };
  }

  const latexCommand = text.slice(index).match(/^\\[A-Za-z]+/);
  if (latexCommand !== null) {
    return {
      end: index + latexCommand[0].length,
      countsAsContent: true
    };
  }

  const tag = text.slice(index).match(/^#[\p{L}\p{N}_/-]+/u);
  if (tag !== null) {
    return {
      end: index + tag[0].length,
      countsAsContent: true
    };
  }

  const blockId = text.slice(index).match(/^\^[\p{L}\p{N}][\p{L}\p{N}_-]*/u);
  if (blockId !== null) {
    return {
      end: index + blockId[0].length,
      countsAsContent: true
    };
  }

  const citationKey = text.slice(index).match(/^@[\p{L}\p{N}][\p{L}\p{N}:./_-]*/u);
  if (citationKey !== null) {
    return {
      end: index + citationKey[0].length,
      countsAsContent: true
    };
  }

  return null;
}

function readBackslashInlineMath(text: string, index: number): number | null {
  if (!text.startsWith("\\(", index) || isEscaped(text, index)) {
    return null;
  }

  for (let cursor = index + 2; cursor < text.length - 1; cursor += 1) {
    if (text.startsWith("\\)", cursor) && !isEscaped(text, cursor)) {
      return cursor + 2;
    }
  }

  return text.length;
}

function readDelimitedRun(text: string, index: number, delimiter: "`" | "$"): number | null {
  if (text[index] !== delimiter) {
    return null;
  }

  const delimiterLength = countRun(text, index, delimiter);
  if (delimiter === "$" && delimiterLength > 2) {
    return null;
  }

  let cursor = index + delimiterLength;
  while (cursor < text.length) {
    if (text[cursor] !== delimiter || isEscaped(text, cursor)) {
      cursor += 1;
      continue;
    }

    const runLength = countRun(text, cursor, delimiter);
    if (runLength === delimiterLength) {
      return cursor + delimiterLength;
    }
    cursor += runLength;
  }

  return null;
}

function readBracketedToken(text: string, index: number, opening: "[@" | "[^"): number | null {
  if (!text.startsWith(opening, index)) {
    return null;
  }

  const closing = findClosingBracket(text, index + opening.length);
  return closing === -1 ? null : closing + 1;
}

function readWikiLink(text: string, index: number): number | null {
  const openingLength = text.startsWith("![[", index) ? 3 : text.startsWith("[[", index) ? 2 : 0;
  if (openingLength === 0) {
    return null;
  }

  const closing = text.indexOf("]]", index + openingLength);
  return closing === -1 ? null : closing + 2;
}

function readMarkdownImage(text: string, index: number): number | null {
  if (!text.startsWith("![", index) || text.startsWith("![[", index)) {
    return null;
  }

  const labelEnd = findClosingBracket(text, index + 2);
  if (labelEnd === -1) {
    return null;
  }

  const destinationStart = labelEnd + 1;
  if (text[destinationStart] === "(") {
    const destinationEnd = findBalancedEnd(text, destinationStart, "(", ")");
    return destinationEnd === -1 ? labelEnd + 1 : destinationEnd;
  }

  if (text[destinationStart] === "[") {
    const referenceEnd = findClosingBracket(text, destinationStart + 1);
    return referenceEnd === -1 ? labelEnd + 1 : referenceEnd + 1;
  }

  return labelEnd + 1;
}

function readLinkDestination(text: string, index: number): number | null {
  if (index === 0 || text[index - 1] !== "]") {
    return null;
  }

  if (text[index] === "(") {
    const end = findBalancedEnd(text, index, "(", ")");
    return end === -1 ? null : end;
  }

  if (text[index] === "[") {
    const end = findClosingBracket(text, index + 1);
    return end === -1 ? null : end + 1;
  }

  return null;
}

function readAngleToken(text: string, index: number): ProtectedToken | null {
  if (text[index] !== "<") {
    return null;
  }

  if (text.startsWith("<!--", index)) {
    const closing = text.indexOf("-->", index + 4);
    return closing === -1
      ? null
      : {
          end: closing + 3,
          countsAsContent: false
        };
  }

  const closing = text.indexOf(">", index + 1);
  if (closing === -1) {
    return null;
  }

  const inner = text.slice(index + 1, closing);
  const isAutolink = /^(?:https?:\/\/|mailto:)[^\s<>]+$/i.test(inner) || /^[^\s<>@]+@[^\s<>@]+$/.test(inner);
  if (isAutolink || /^\/?[A-Za-z][^<>]*$/.test(inner)) {
    return {
      end: closing + 1,
      countsAsContent: isAutolink
    };
  }

  return null;
}

function readBareUrl(text: string, index: number): number | null {
  if (index > 0 && !/[\s([{"']/.test(text[index - 1] ?? "")) {
    return null;
  }

  const match = text
    .slice(index)
    .match(/^(?:(?:https?:\/\/|mailto:|www\.)[^\s<>]+|[^\s<>@]+@[^\s<>@]+\.[^\s<>@]+)/i);
  if (match === null) {
    return null;
  }

  let end = index + match[0].length;
  while (end > index && /[.,!?;:]/.test(text[end - 1] ?? "")) {
    end -= 1;
  }
  return end === index ? null : end;
}

function readTitleTechnicalToken(text: string, index: number): ProtectedToken | null {
  const extension = text
    .slice(index)
    .match(/^\.(?:css|html?|jsx?|json|md|mjs|pdf|py|sh|tsx?|tex|toml|wl|ya?ml)(?=$|[\]\s,;:!?()[\]{}])/i);
  if (extension !== null) {
    return {
      end: index + extension[0].length,
      countsAsContent: false
    };
  }

  if (index > 0 && !/[\s([{"']/.test(text[index - 1] ?? "")) {
    return null;
  }

  const match = text.slice(index).match(
    /^(?:(?:[A-Za-z0-9_@+~-]+\/)+[A-Za-z0-9_@+~.-]+|(?:[A-Za-z]\.){2,}|[A-Za-z0-9_-]+(?:\.[A-Za-z0-9_-]+)*\.(?:com|cn|dev|edu|gov|io|net|org)|(?:gl|o|sl|so|sp|su|u)\([^)]*\))(?=$|[\s,;:!?()[\]{}])/i
  );
  if (match === null) {
    return null;
  }

  return {
    end: index + match[0].length,
    countsAsContent: true
  };
}

function readTitleWord(
  text: string,
  index: number
): { text: string; end: number; countsAsContent: boolean } | null {
  const match = text.slice(index).match(/^[\p{L}\p{N}_]+(?:['’][\p{L}\p{N}_]+)*/u);
  if (match === null) {
    return null;
  }

  const word = match[0];
  return {
    text: word,
    end: index + word.length,
    countsAsContent: /[\p{L}\p{N}]/u.test(word)
  };
}

function formatTitleWord(word: string, hasTitleContent: boolean, isCompoundEdge: boolean): string {
  if (!/^[A-Za-z]+(?:['’][A-Za-z]+)*$/.test(word)) {
    return word;
  }

  const letters = word.replace(/['’]/g, "");
  if (/[A-Z]/.test(letters) || !/^[a-z]+$/.test(letters)) {
    return word;
  }

  if (hasTitleContent && !isCompoundEdge && TITLE_MINOR_WORDS.has(word.toLowerCase())) {
    return word;
  }

  const apostrophe = word.match(/^([A-Za-z])(['’])([A-Za-z].*)$/);
  if (apostrophe !== null) {
    return `${apostrophe[1]?.toUpperCase()}${apostrophe[2]}${capitalizeFirstAsciiLetter(apostrophe[3] ?? "")}`;
  }

  return capitalizeFirstAsciiLetter(word);
}

function capitalizeFirstAsciiLetter(text: string): string {
  return text.length === 0 ? text : `${text[0]?.toUpperCase()}${text.slice(1)}`;
}

function findClosingBracket(text: string, start: number): number {
  let depth = 0;

  for (let cursor = start; cursor < text.length; cursor += 1) {
    if (isEscaped(text, cursor)) {
      continue;
    }

    if (text[cursor] === "[") {
      depth += 1;
    } else if (text[cursor] === "]") {
      if (depth === 0) {
        return cursor;
      }
      depth -= 1;
    }
  }

  return -1;
}

function findBalancedEnd(text: string, start: number, opening: string, closing: string): number {
  let depth = 0;

  for (let cursor = start; cursor < text.length; cursor += 1) {
    if (isEscaped(text, cursor)) {
      continue;
    }

    if (text[cursor] === opening) {
      depth += 1;
    } else if (text[cursor] === closing) {
      depth -= 1;
      if (depth === 0) {
        return cursor + 1;
      }
    }
  }

  return -1;
}

function isSentenceEndingPeriod(text: string, index: number): boolean {
  const previous = text[index - 1] ?? "";
  const next = text[index + 1] ?? "";

  if (next === ".") {
    return false;
  }

  if (previous === ".") {
    return next !== ".";
  }

  if (/\d/.test(previous) && /\d/.test(next)) {
    return false;
  }

  if (/[A-Za-z0-9]/.test(next)) {
    return false;
  }

  const previousWord = text.slice(0, index).match(/[A-Za-z]+$/)?.[0] ?? "";
  if (previousWord.length === 1 || ABBREVIATIONS.has(previousWord.toLowerCase())) {
    return false;
  }

  return true;
}

function isThematicBreak(text: string): boolean {
  return /^(?:(?:-\s*){3,}|(?:_\s*){3,}|(?:\*\s*){3,})$/.test(text);
}

function isLikelyTableRow(text: string): boolean {
  const pipeCount = text.match(/\|/g)?.length ?? 0;
  return text.startsWith("|") || pipeCount >= 2 || /\s\|\s/.test(text);
}

function isEscaped(text: string, index: number): boolean {
  let backslashes = 0;
  for (let cursor = index - 1; cursor >= 0 && text[cursor] === "\\"; cursor -= 1) {
    backslashes += 1;
  }
  return backslashes % 2 === 1;
}

function countRun(text: string, start: number, character: string): number {
  let end = start;
  while (end < text.length && text[end] === character) {
    end += 1;
  }
  return end - start;
}

function countLeadingWhitespace(text: string): number {
  return text.match(/^\s*/)?.[0].length ?? 0;
}

function isLetterOrNumber(character: string): boolean {
  return /[\p{L}\p{N}]/u.test(character);
}
