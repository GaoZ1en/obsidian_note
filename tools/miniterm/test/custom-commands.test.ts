import assert from "node:assert/strict";
import { describe, it } from "node:test";
import {
  createCustomCommandId,
  createCustomCommandTriggerMap,
  normalizeCustomCommands
} from "../src/custom-commands";

describe("custom command helpers", () => {
  it("normalizes configured commands and shortcuts", () => {
    assert.deepEqual(
      normalizeCustomCommands([
        {
          id: "dev",
          name: "  Dev server  ",
          command: "  npm run dev  ",
          trigger: "Option+1",
          cwdMode: "vault"
        },
        {
          id: "bad empty command",
          command: "   ",
          trigger: "Option+2"
        }
      ]),
      [
        {
          id: "dev",
          name: "Dev server",
          command: "npm run dev",
          trigger: "Alt+Digit1",
          cwdMode: "vault"
        }
      ]
    );
  });

  it("generates stable command ids without collisions", () => {
    assert.equal(
      createCustomCommandId([
        { id: "command-1", name: "One", command: "echo 1", trigger: "", cwdMode: "inherit" },
        { id: "command-2", name: "Two", command: "echo 2", trigger: "", cwdMode: "inherit" }
      ]),
      "command-3"
    );
  });

  it("only maps commands with both a trigger and command text", () => {
    const map = createCustomCommandTriggerMap([
      { id: "dev", name: "Dev", command: "npm run dev", trigger: "Alt+Digit1", cwdMode: "inherit" },
      { id: "empty", name: "Empty", command: "", trigger: "Alt+Digit2", cwdMode: "inherit" },
      { id: "unbound", name: "Unbound", command: "npm test", trigger: "", cwdMode: "inherit" }
    ]);

    assert.equal(map.get("Alt+Digit1")?.id, "dev");
    assert.equal(map.has("Alt+Digit2"), false);
    assert.equal(map.size, 1);
  });
});
