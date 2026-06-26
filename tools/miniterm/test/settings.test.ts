import assert from "node:assert/strict";
import { describe, it } from "node:test";
import {
  buildPtyEnv,
  getDefaultShell,
  normalizeSettings,
  parseEnvInput,
  parseShellArgsInput,
  shellDisplayName
} from "../src/settings";

describe("settings helpers", () => {
  it("parses shell args as one trimmed argument per non-empty line", () => {
    assert.deepEqual(parseShellArgsInput("\n--login\n  -i  \n\n"), ["--login", "-i"]);
  });

  it("parses KEY=VALUE environment entries", () => {
    assert.deepEqual(
      parseEnvInput("FOO=bar\nINVALID LINE\nEMPTY=\n WITH_SPACES =kept\n1BAD=no\n"),
      {
        FOO: "bar",
        EMPTY: "",
        WITH_SPACES: "kept"
      }
    );
  });

  it("normalizes unknown settings with safe defaults", () => {
    const settings = normalizeSettings({
      shellPath: "  /bin/zsh  ",
      shellArgs: ["--login", 42],
      env: { FOO: "bar", BAD: 123 },
      fontSize: 999,
      letterSpacing: -99,
      scrollback: -10,
      startupCommandEnabled: "yes",
      startupCommand: 3
    });

    assert.equal(settings.shellPath, "/bin/zsh");
    assert.deepEqual(settings.shellArgs, ["--login"]);
    assert.deepEqual(settings.env, {});
    assert.equal(settings.fontSize, 32);
    assert.equal(settings.letterSpacing, -4);
    assert.equal(settings.scrollback, 100);
    assert.ok(settings.keybindings.length > 0);
    assert.equal(settings.quickTerminalHeight, 45);
    assert.equal(settings.startupCommandEnabled, false);
    assert.equal(settings.startupCommand, "");
    assert.deepEqual(settings.customCommands, []);
  });

  it("uses platform shell fallbacks", () => {
    assert.equal(getDefaultShell({}, "darwin"), "/bin/zsh");
    assert.equal(getDefaultShell({}, "linux"), "/bin/bash");
    assert.equal(getDefaultShell({}, "win32"), "powershell.exe");
    assert.equal(getDefaultShell({ SHELL: "/usr/bin/fish" }, "darwin"), "/usr/bin/fish");
  });

  it("builds a node-pty environment with overrides and a TERM default", () => {
    const defaultEnv = buildPtyEnv({}, { HOME: "/Users/koishi", PATH: "/usr/bin:/bin" });
    const env = buildPtyEnv(
      { TERM: "screen-256color", MINI: "1" },
      { HOME: "/Users/koishi", PATH: "/usr/bin:/bin" }
    );

    assert.equal(defaultEnv.TERM, "mlterm-256color");
    assert.equal(env.TERM, "screen-256color");
    assert.equal(env.MINI, "1");
    assert.match(env.PATH, /^\/Users\/koishi\/\.local\/bin:/);
    assert.match(env.PATH, /\/opt\/homebrew\/bin/);
    assert.match(env.PATH, /\/usr\/bin/);
  });

  it("allows settings env to override PATH", () => {
    const env = buildPtyEnv({ PATH: "/custom/bin" }, { HOME: "/Users/koishi", PATH: "/usr/bin:/bin" });

    assert.equal(env.PATH, "/custom/bin");
  });

  it("extracts a shell display name", () => {
    assert.equal(shellDisplayName("/bin/zsh"), "zsh");
    assert.equal(shellDisplayName("C:\\Windows\\System32\\cmd.exe"), "cmd.exe");
  });
});
