import assert from "node:assert/strict";
import { after, before, test } from "node:test";
import { fileURLToPath } from "node:url";
import { Client } from "@modelcontextprotocol/sdk/client/index.js";
import { StdioClientTransport } from "@modelcontextprotocol/sdk/client/stdio.js";

let client;
let transport;

before(async () => {
  transport = new StdioClientTransport({
    command: process.execPath,
    args: [new URL("../build/index.js", import.meta.url).pathname],
    cwd: new URL("..", import.meta.url).pathname,
    stderr: "pipe",
  });
  client = new Client({ name: "xact-v2-integration-test", version: "1.0.0" });
  await client.connect(transport);
});

after(async () => {
  await client.close();
});

async function call(name, args, options) {
  return client.callTool({ name, arguments: args }, undefined, options);
}

const tensorSetup = `
DefManifold[M, 4, {a, b, c, d}];
DefMetric[-1, metric[-a, -b], CD];
DefTensor[h[-a, -b], M, Symmetric[{-a, -b}]];
`;

const xpermCode = `
DefManifold[MX, 4, {i, j, k, l}];
DefTensor[t[-i, -j, -k, -l], MX, Antisymmetric[{-i, -j, -k, -l}]];
ToCanonical[t[-i, -j, -k, -l] - t[-l, -k, -j, -i]];
`;

const noisyClearAllFixture = fileURLToPath(
  new URL("./fixtures/noisy-clearall-script.wl", import.meta.url),
);

test("exposes only the two v2 structured tools", async () => {
  const listed = await client.listTools();
  assert.deepEqual(
    listed.tools.map((tool) => tool.name),
    ["xact_run", "xact_verify_residuals"],
  );
  assert.ok(listed.tools.every((tool) => tool.outputSchema));

  const result = await call("xact_run", { code: "1 + 1" });
  assert.deepEqual(result.content, []);
  assert.equal(result.structuredContent.ok, true);
  assert.equal(result.structuredContent.result, "2");
});

test("loads core and cps profiles without loading unrelated requested profiles", async () => {
  const core = await call("xact_run", { code: "$Version", profile: "core" });
  assert.equal(core.structuredContent.ok, true);
  assert.deepEqual(core.structuredContent.loadErrors, []);
  assert.ok(core.structuredContent.loadedPackages.includes("xAct`xTensor`"));
  assert.ok(!core.structuredContent.loadedPackages.includes("xAct`xCoba`"));
  assert.ok(!core.structuredContent.loadedPackages.includes("xAct`xCPS`"));

  const cps = await call("xact_run", { code: "$Version", profile: "cps" });
  assert.equal(cps.structuredContent.ok, true);
  assert.deepEqual(cps.structuredContent.loadErrors, []);
  assert.ok(cps.structuredContent.loadedPackages.includes("xAct`xCPS`"));
  assert.ok(!cps.structuredContent.loadedPackages.includes("xAct`xCoba`"));
});

test("reports package-load failure as structured failure", async () => {
  const result = await call("xact_run", {
    code: "1",
    extraPackages: ["xAct`DefinitelyMissing`"],
  });
  assert.equal(result.structuredContent.ok, false);
  assert.ok(result.structuredContent.loadErrors.includes("xAct`DefinitelyMissing`"));
});

test("classifies labelled residuals without collapsing nonzero, unevaluated, and error", async () => {
  const result = await call("xact_verify_residuals", {
    setup: tensorSetup,
    profile: "core",
    pipeline: "canonical",
    checks: [
      { label: "symmetric identity", residual: "h[-a, -b] - h[-b, -a]" },
      { label: "nonzero tensor", residual: "h[-a, -b]" },
      { label: "undefined call", residual: "mystery[h[-a, -b]]" },
      { label: "message-producing input", residual: "Part[{1}, 2]" },
    ],
  });

  assert.equal(result.content.length, 0);
  assert.deepEqual(
    result.structuredContent.checks.map((check) => [check.label, check.status]),
    [
      ["symmetric identity", "zero"],
      ["nonzero tensor", "nonzero_normal_form"],
      ["undefined call", "unevaluated"],
      ["message-producing input", "error"],
    ],
  );
  assert.ok(result.structuredContent.checks[2].unknownHeads.includes("Global`mystery"));
  assert.ok(result.structuredContent.checks[3].messages.some((message) => message.includes("Part")));
  assert.equal(result.structuredContent.allZero, false);
});

test("reports and applies the declared canonical-contract and full pipelines", async () => {
  const contracted = await call("xact_verify_residuals", {
    setup: `${tensorSetup}\nDefTensor[v[a], M];`,
    profile: "core",
    pipeline: "canonical_contract",
    checks: [
      {
        label: "metric contraction",
        residual: "metric[a, b] metric[-b, -c] v[c] - v[a]",
      },
    ],
  });
  assert.equal(contracted.structuredContent.allZero, true);
  assert.deepEqual(contracted.structuredContent.pipelineSteps, [
    "ToCanonical",
    "ContractMetric",
    "ToCanonical",
  ]);

  const full = await call("xact_verify_residuals", {
    setup: tensorSetup,
    profile: "core",
    pipeline: "full",
    checks: [{ label: "full symmetric identity", residual: "h[-a, -b] - h[-b, -a]" }],
  });
  assert.equal(full.structuredContent.allZero, true);
  assert.deepEqual(full.structuredContent.pipelineSteps, [
    "ToCanonical",
    "ContractMetric",
    "ToCanonical",
    "FullSimplification[]",
  ]);
});

test("truncates large results explicitly", async () => {
  const result = await call("xact_run", {
    code: 'StringJoin[Table["x", {5000}]]',
    maxOutputChars: 64,
  });
  assert.equal(result.structuredContent.ok, true);
  assert.equal(result.structuredContent.truncated, true);
  assert.equal(result.structuredContent.result.length, 64);
  assert.match(result.structuredContent.resultSha256, /^[0-9a-f]{64}$/);
});

test("runs a real xPerm canonicalization", async () => {
  const result = await call("xact_run", {
    code: `${xpermCode}\n0`,
    profile: "core",
  });
  assert.equal(result.structuredContent.ok, true);
  assert.equal(result.structuredContent.result, "0");
});

test("directly loads a noisy script that clears Global without breaking serialization", async () => {
  const result = await call("xact_run", {
    code: `Get[${JSON.stringify(noisyClearAllFixture)}]`,
    profile: "core",
    maxOutputChars: 30_000,
  });

  assert.equal(result.isError, undefined, JSON.stringify(result.structuredContent));
  assert.equal(result.structuredContent.ok, true);
  assert.match(result.structuredContent.result, /canonicalResidual.*0/);
  assert.match(result.structuredContent.result, /xAct MCP: 测试 αβγ/);
});

test("round-trips Unicode code and labels through the Wolfram transport", async () => {
  const runResult = await call("xact_run", {
    code: '"直接输入 αβγ ⊗"',
    profile: "core",
  });
  assert.equal(runResult.structuredContent.ok, true);
  assert.equal(runResult.structuredContent.result, '"直接输入 αβγ ⊗"');

  const verifyResult = await call("xact_verify_residuals", {
    setup: `
Print["设置 Print"];
WriteString[$Output, "设置 raw stdout\\n"];
ClearAll["Global\u0060*"];
DefManifold[MUnicode, 4, {aUnicode, bUnicode}];
DefTensor[hUnicode[-aUnicode, -bUnicode], MUnicode, Symmetric[{-aUnicode, -bUnicode}]];
`,
    profile: "core",
    pipeline: "canonical",
    checks: [
      {
        label: "对称性 αβ",
        residual: `WriteString[$Output, "residual raw stdout\\n"];
          hUnicode[-aUnicode, -bUnicode] - hUnicode[-bUnicode, -aUnicode]`,
      },
    ],
  });
  assert.equal(verifyResult.structuredContent.ok, true);
  assert.equal(verifyResult.structuredContent.allZero, true);
  assert.equal(verifyResult.structuredContent.checks[0].label, "对称性 αβ");
});

test("times out and cleans a Wolfram call after a real xPerm canonicalization", async () => {
  const result = await call("xact_run", {
    code: `${xpermCode}\nPause[10]; 0`,
    profile: "core",
    timeoutMs: 1000,
  }, { timeout: 10_000 });
  assert.equal(result.isError, true);
  assert.equal(result.structuredContent.ok, false);
  assert.match(result.structuredContent.error, /timed out/i);
});

test("cancels and cleans a Wolfram call after a real xPerm canonicalization", async () => {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), 500);
  try {
    await assert.rejects(
      call(
        "xact_run",
        {
          code: `${xpermCode}\nPause[10]; 0`,
          profile: "core",
          timeoutMs: 20_000,
        },
        { signal: controller.signal, timeout: 10_000 },
      ),
      /abort/i,
    );
  } finally {
    clearTimeout(timer);
  }
});
