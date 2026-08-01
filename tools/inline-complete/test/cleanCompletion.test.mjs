import assert from "node:assert/strict";
import test from "node:test";
import { cleanCompletion } from "../src/cleanCompletion.ts";

test("keeps a conservative same-line prose continuation", () => {
  const result = cleanCompletion(
    " pointwise equality of the two local kernels.",
    "Equality of the determinants does not imply",
    { trimToSentence: true }
  );

  assert.equal(result.text, " pointwise equality of the two local kernels.");
});

test("rejects a model response that changes block structure mid-line", () => {
  const result = cleanCompletion(
    String.raw` \(\epsilon_{\mathrm{grav}}=1\); it only implies that
\[
K_1=K_2
\]`,
    "Equality of the determinants does not imply",
    { trimToSentence: true }
  );

  assert.equal(result.text, null);
  assert.equal(result.diagnostics.reason, "incompatible-structure");
});

test("does not treat a question mark inside LaTeX as sentence punctuation", () => {
  const result = cleanCompletion(
    String.raw` \(K_1 \stackrel{?}{=} K_2\). A second sentence.`,
    "The determinant equality does not imply",
    { trimToSentence: true }
  );

  assert.equal(result.text, String.raw` \(K_1 \stackrel{?}{=} K_2\).`);
});

test("rejects unbalanced inline math after sentence trimming", () => {
  const result = cleanCompletion(
    String.raw` \(K_1 \stackrel{?}`,
    "The determinant equality does not imply",
    { trimToSentence: true }
  );

  assert.equal(result.text, null);
  assert.equal(result.diagnostics.reason, "incompatible-structure");
});
