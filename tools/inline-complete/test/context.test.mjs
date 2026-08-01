import assert from "node:assert/strict";
import test from "node:test";
import {
  allocateContextRange,
  hasBalancedMathDelimiters,
  hasMinimumPrefix,
  isCompatibleInlineStructure,
  isInsideMarkdownMath
} from "../src/context.ts";

test("reassigns unused suffix budget to the prefix at the end of a document", () => {
  assert.deepEqual(allocateContextRange(10_000, 10_000, 4_000), {
    beforeFrom: 6_000,
    afterTo: 10_000
  });
});

test("reassigns unused prefix budget to the suffix at the start of a document", () => {
  assert.deepEqual(allocateContextRange(10_000, 0, 4_000), {
    beforeFrom: 0,
    afterTo: 4_000
  });
});

test("keeps the preferred 70/30 split when both sides have enough text", () => {
  assert.deepEqual(allocateContextRange(10_000, 5_000, 4_000), {
    beforeFrom: 2_200,
    afterTo: 6_200
  });
});

test("checks the current line prefix without counting whitespace", () => {
  assert.equal(hasMinimumPrefix("   ", 1), false);
  assert.equal(hasMinimumPrefix("Consequently, the result", 20), true);
});

test("rejects block-level output in the middle of a non-empty line", () => {
  assert.equal(isCompatibleInlineStructure("The result does not imply", " equality of the kernels."), true);
  assert.equal(isCompatibleInlineStructure("The result does not imply", "\n\\[K_1=K_2"), false);
  assert.equal(isCompatibleInlineStructure("The result does not imply", " ### New claim"), false);
});

test("allows block-level output when the cursor is already on an empty line", () => {
  assert.equal(isCompatibleInlineStructure("Previous paragraph.\n\n", "### Next section"), true);
});

test("recognizes sentence punctuation inside LaTeX math", () => {
  const completion = String.raw`\(K_1 \stackrel{?}{=} K_2\). Therefore not.`;
  assert.equal(isInsideMarkdownMath(completion, completion.indexOf("?")), true);
  assert.equal(isInsideMarkdownMath(completion, completion.indexOf(".")), false);
  assert.equal(hasBalancedMathDelimiters(completion), true);
  assert.equal(hasBalancedMathDelimiters(String.raw`\(K_1 \stackrel{?}`), false);
});
