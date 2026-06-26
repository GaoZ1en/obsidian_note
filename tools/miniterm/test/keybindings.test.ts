import assert from "node:assert/strict";
import { describe, it } from "node:test";
import {
  eventToKeybindingTrigger,
  formatKeybindingsInput,
  normalizeKeybindingTrigger,
  parseKeybindingsInput
} from "../src/keybindings";

describe("keybinding helpers", () => {
  it("normalizes Option aliases to Alt key codes", () => {
    assert.equal(normalizeKeybindingTrigger("Option+D"), "Alt+KeyD");
    assert.equal(normalizeKeybindingTrigger("Option+Shift+]"), "Alt+Shift+BracketRight");
    assert.equal(normalizeKeybindingTrigger("Option+Backquote"), "Alt+Backquote");
  });

  it("matches macOS Option-modified letters by physical key code", () => {
    assert.equal(
      eventToKeybindingTrigger({
        altKey: true,
        ctrlKey: false,
        metaKey: false,
        shiftKey: false,
        code: "KeyD",
        key: "∂"
      }),
      "Alt+KeyD"
    );
  });

  it("parses supported MiniTerm action bindings", () => {
    assert.deepEqual(
      parseKeybindingsInput("Option+D=split_right\nOption+Shift+D=split_down\nBad=copy\n"),
      [
        { trigger: "Alt+KeyD", action: "split_right" },
        { trigger: "Alt+Shift+KeyD", action: "split_down" }
      ]
    );
  });

  it("formats Alt bindings as Option for settings display", () => {
    assert.equal(
      formatKeybindingsInput([{ trigger: "Alt+KeyT", action: "new_tab" }]),
      "Option+T=new_tab"
    );
  });
});
