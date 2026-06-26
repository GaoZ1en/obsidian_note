import assert from "node:assert/strict";
import * as path from "node:path";
import { describe, it } from "node:test";
import { resolveTargetCwd, resolveVaultRelativePath } from "../src/path-utils";

describe("path helpers", () => {
  it("resolves the vault root for an empty path", () => {
    assert.equal(resolveVaultRelativePath("/vault", ""), path.resolve("/vault"));
  });

  it("resolves Obsidian slash paths under the vault base path", () => {
    assert.equal(
      resolveVaultRelativePath("/vault", "Projects/MiniTerm/readme.md"),
      path.resolve("/vault", "Projects", "MiniTerm", "readme.md")
    );
  });

  it("uses the folder itself as cwd for folder menu targets", () => {
    assert.equal(
      resolveTargetCwd("/vault", "Projects/MiniTerm", "folder"),
      path.resolve("/vault", "Projects", "MiniTerm")
    );
  });

  it("uses the parent folder as cwd for file menu targets", () => {
    assert.equal(
      resolveTargetCwd("/vault", "Projects/MiniTerm/readme.md", "file"),
      path.resolve("/vault", "Projects", "MiniTerm")
    );
  });
});
