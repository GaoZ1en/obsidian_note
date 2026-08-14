import assert from "node:assert/strict";
import test from "node:test";
import {
  activeProcessTreeCount,
  ProcessTreeError,
  runProcessTree,
  terminateAllProcessTrees,
} from "../build/process-tree.js";

const resistantChildProgram = `
process.on("SIGTERM", () => {});
setInterval(() => {}, 1000);
`;

const resistantTreeProgram = `
const { spawn } = require("node:child_process");
process.on("SIGTERM", () => {});
const child = spawn(process.execPath, ["-e", ${JSON.stringify(resistantChildProgram)}], {
  stdio: "ignore",
});
console.log(JSON.stringify({ parentPid: process.pid, childPid: child.pid }));
setInterval(() => {}, 1000);
`;

function noSuchProcess(error) {
  return error instanceof Error && error.code === "ESRCH";
}

async function waitForGroupExit(groupPid, timeoutMs = 2000) {
  const deadline = Date.now() + timeoutMs;
  while (Date.now() < deadline) {
    try {
      process.kill(-groupPid, 0);
    } catch (error) {
      if (noSuchProcess(error)) {
        return;
      }
      throw error;
    }
    await new Promise((resolve) => setTimeout(resolve, 20));
  }
  throw new Error(`Process group ${groupPid} was still alive after ${timeoutMs} ms.`);
}

function treePids(error) {
  const firstLine = error.stdout.trim().split(/\r?\n/, 1)[0];
  return JSON.parse(firstLine);
}

async function forceCleanup(groupPid) {
  if (groupPid === undefined) {
    return;
  }
  try {
    process.kill(-groupPid, "SIGKILL");
  } catch (error) {
    if (!noSuchProcess(error)) {
      throw error;
    }
  }
}

test("returns stdout and stderr for a successful process", async () => {
  const result = await runProcessTree(
    process.execPath,
    ["-e", 'process.stdout.write("ok"); process.stderr.write("warning");'],
    { timeoutMs: 1000, maxBuffer: 1024 },
  );

  assert.equal(result.stdout, "ok");
  assert.equal(result.stderr, "warning");
  assert.equal(activeProcessTreeCount(), 0);
});

test("timeout escalates to SIGKILL for the complete resistant process group", { timeout: 5000 }, async () => {
  let groupPid;
  try {
    await assert.rejects(
      runProcessTree(process.execPath, ["-e", resistantTreeProgram], {
        timeoutMs: 100,
        maxBuffer: 4096,
        killGraceMs: 50,
      }),
      (error) => {
        assert.ok(error instanceof ProcessTreeError);
        assert.equal(error.kind, "timeout");
        ({ parentPid: groupPid } = treePids(error));
        return true;
      },
    );
    assert.notEqual(groupPid, undefined);
    await waitForGroupExit(groupPid);
    assert.equal(activeProcessTreeCount(), 0);
  } finally {
    await forceCleanup(groupPid);
  }
});

test("MCP cancellation kills the complete resistant process group", { timeout: 5000 }, async () => {
  const controller = new AbortController();
  const abortTimer = setTimeout(() => controller.abort(), 100);
  let groupPid;
  try {
    await assert.rejects(
      runProcessTree(process.execPath, ["-e", resistantTreeProgram], {
        timeoutMs: 5000,
        maxBuffer: 4096,
        killGraceMs: 50,
        signal: controller.signal,
      }),
      (error) => {
        assert.ok(error instanceof ProcessTreeError);
        assert.equal(error.kind, "aborted");
        ({ parentPid: groupPid } = treePids(error));
        return true;
      },
    );
    assert.notEqual(groupPid, undefined);
    await waitForGroupExit(groupPid);
    assert.equal(activeProcessTreeCount(), 0);
  } finally {
    clearTimeout(abortTimer);
    await forceCleanup(groupPid);
  }
});

test("server shutdown cleanup kills all active process groups", { timeout: 5000 }, async () => {
  const running = runProcessTree(process.execPath, ["-e", resistantTreeProgram], {
    timeoutMs: 5000,
    maxBuffer: 4096,
    killGraceMs: 50,
  });
  let groupPid;
  try {
    while (activeProcessTreeCount() === 0) {
      await new Promise((resolve) => setTimeout(resolve, 10));
    }
    await new Promise((resolve) => setTimeout(resolve, 100));
    await terminateAllProcessTrees(50);
    await assert.rejects(running, (error) => {
      assert.ok(error instanceof ProcessTreeError);
      ({ parentPid: groupPid } = treePids(error));
      return true;
    });
    assert.notEqual(groupPid, undefined);
    await waitForGroupExit(groupPid);
    assert.equal(activeProcessTreeCount(), 0);
  } finally {
    await forceCleanup(groupPid);
  }
});
