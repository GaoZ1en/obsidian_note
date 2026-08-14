#!/usr/bin/env node

import { Server } from "@modelcontextprotocol/sdk/server/index.js";
import { StdioServerTransport } from "@modelcontextprotocol/sdk/server/stdio.js";
import {
  CallToolRequestSchema,
  ListToolsRequestSchema,
} from "@modelcontextprotocol/sdk/types.js";
import { randomUUID } from "crypto";
import { runProcessTree, terminateAllProcessTrees } from "./process-tree.js";

const DEFAULT_TIMEOUT_MS = 120_000;
const MAX_TIMEOUT_MS = 10 * 60_000;
const DEFAULT_MAX_OUTPUT_CHARS = 20_000;
const MAX_OUTPUT_CHARS = 1_000_000;
const MAX_BUFFER = 20 * 1024 * 1024;

const PACKAGE_PROFILES = {
  core: ["xAct`xTensor`", "xAct`xPert`", "xAct`xTras`"],
  cps: ["xAct`xTensor`", "xAct`xPert`", "xAct`xTras`", "xAct`xCPS`"],
  components: ["xAct`xTensor`", "xAct`xPert`", "xAct`xTras`", "xAct`xCoba`"],
  all: [
    "xAct`xTensor`",
    "xAct`xPert`",
    "xAct`xTras`",
    "xAct`xCoba`",
    "xAct`xCPS`",
  ],
} as const;

type PackageProfile = keyof typeof PACKAGE_PROFILES;
type Pipeline = "none" | "canonical" | "canonical_contract" | "full";
type CheckInput = { label: string; residual: string };

function wlString(value: string): string {
  return JSON.stringify(value);
}

function wlList(values: string[]): string {
  return `{${values.map(wlString).join(", ")}}`;
}

function optionalString(value: unknown): string | undefined {
  return typeof value === "string" && value.trim().length > 0 ? value : undefined;
}

function timeoutArgument(value: unknown): number {
  if (value === undefined) {
    return DEFAULT_TIMEOUT_MS;
  }
  if (typeof value !== "number" || !Number.isFinite(value)) {
    throw new Error("timeoutMs must be a finite number.");
  }
  return Math.max(1_000, Math.min(Math.trunc(value), MAX_TIMEOUT_MS));
}

function maxOutputArgument(value: unknown): number {
  if (value === undefined) {
    return DEFAULT_MAX_OUTPUT_CHARS;
  }
  if (typeof value !== "number" || !Number.isFinite(value)) {
    throw new Error("maxOutputChars must be a finite number.");
  }
  return Math.max(64, Math.min(Math.trunc(value), MAX_OUTPUT_CHARS));
}

function profileArgument(value: unknown): PackageProfile {
  if (value === undefined) {
    return "core";
  }
  if (typeof value !== "string" || !(value in PACKAGE_PROFILES)) {
    throw new Error("profile must be one of: core, cps, components, all.");
  }
  return value as PackageProfile;
}

function pipelineArgument(value: unknown): Pipeline {
  if (value === undefined) {
    return "canonical";
  }
  if (
    value !== "none" &&
    value !== "canonical" &&
    value !== "canonical_contract" &&
    value !== "full"
  ) {
    throw new Error("pipeline must be one of: none, canonical, canonical_contract, full.");
  }
  return value;
}

function extraPackagesArgument(value: unknown): string[] {
  if (value === undefined) {
    return [];
  }
  if (!Array.isArray(value) || value.some((item) => typeof item !== "string" || item.length === 0)) {
    throw new Error("extraPackages must be an array of non-empty package-context strings.");
  }
  return value as string[];
}

function checksArgument(value: unknown): CheckInput[] {
  if (!Array.isArray(value) || value.length === 0) {
    throw new Error("checks must contain at least one labelled residual.");
  }

  return value.map((item, index) => {
    if (typeof item !== "object" || item === null) {
      throw new Error(`checks[${index}] must be an object.`);
    }
    const label = optionalString((item as Record<string, unknown>).label);
    const residual = optionalString((item as Record<string, unknown>).residual);
    if (!label || !residual) {
      throw new Error(`checks[${index}] requires non-empty label and residual strings.`);
    }
    return { label, residual };
  });
}

function packagesFor(profile: PackageProfile, extraPackages: string[]): string[] {
  return [...new Set([...PACKAGE_PROFILES[profile], ...extraPackages])];
}

function makePrelude(packages: string[]): string {
  return `
$HistoryLength = 0;
xActMCPRequestedPackages = ${wlList(packages)};
xActMCPLoadedPackages = {};
xActMCPLoadErrors = {};
xActMCPLoadMessages = {};
xActMCPToString[value_] := ToString[Unevaluated[value], InputForm, PageWidth -> Infinity];
Do[
  xActMCPPackageMessages = {};
  Block[{Print = (Null &), $Messages = {}, $MessageList = {}},
    Check[Needs[pkg], Null];
    xActMCPPackageMessages = xActMCPToString /@ $MessageList;
  ];
  If[MemberQ[$Packages, pkg],
    AppendTo[xActMCPLoadedPackages, pkg],
    AppendTo[xActMCPLoadErrors, pkg]
  ];
  If[xActMCPPackageMessages =!= {},
    AppendTo[xActMCPLoadMessages, <|"package" -> pkg, "messages" -> xActMCPPackageMessages|>]
  ],
  {pkg, xActMCPRequestedPackages}
];
`;
}

function wrapPayload(body: string, packages: string[]): { code: string; marker: string } {
  const marker = `XACT_MCP_${randomUUID().replaceAll("-", "_")}`;
  const payloadProgram = `
${makePrelude(packages)}
${body}
xActMCPSerializedPayload = Quiet @ Check[
  BaseEncode[
    ExportByteArray[xActMCPPayload, "RawJSON", "Compact" -> True],
    "Base64"
  ],
  $Failed
];
Print["${marker}_BEGIN"];
Print[If[StringQ[xActMCPSerializedPayload], xActMCPSerializedPayload, ""]];
Print["${marker}_END"];
`;
  // Keep both CLI directions ASCII-only, and parse the service scaffold in a
  // private context so user code can safely clear or redefine Global` symbols.
  const encodedProgram = Buffer.from(payloadProgram, "utf8").toString("base64");
  return {
    marker,
    code: `
Begin["xActMCPPrivate\u0060"];
ToExpression[
  FromCharacterCode[Normal[BaseDecode["${encodedProgram}"]], "UTF8"],
  InputForm
];
End[];
`,
  };
}

function extractPayload(stdout: string, marker: string): Record<string, unknown> {
  const begin = `${marker}_BEGIN`;
  const end = `${marker}_END`;
  const beginIndex = stdout.indexOf(begin);
  const endIndex = stdout.indexOf(end);
  if (beginIndex < 0 || endIndex < 0 || endIndex < beginIndex) {
    throw new Error("Wolfram evaluation ended without a structured payload.");
  }
  const encoded = stdout.slice(beginIndex + begin.length, endIndex).replace(/\s/g, "");
  if (encoded.length === 0 || encoded.length % 4 !== 0 || !/^[A-Za-z0-9+/]*={0,2}$/.test(encoded)) {
    throw new Error("Wolfram evaluation returned an invalid base64 payload.");
  }
  const json = Buffer.from(encoded, "base64").toString("utf8");
  let parsed: unknown;
  try {
    parsed = JSON.parse(json);
  } catch (error) {
    const detail = error instanceof Error ? error.message : String(error);
    const excerpt = json.length > 1_000 ? `${json.slice(0, 1_000)}...` : json;
    throw new Error(`Could not parse the Wolfram JSON payload: ${detail}. Payload: ${excerpt}`);
  }
  if (typeof parsed !== "object" || parsed === null || Array.isArray(parsed)) {
    throw new Error("Wolfram evaluation returned a non-object payload.");
  }
  return parsed as Record<string, unknown>;
}

async function runPayload(
  body: string,
  packages: string[],
  timeoutMs: number,
  signal?: AbortSignal,
): Promise<Record<string, unknown>> {
  const { code, marker } = wrapPayload(body, packages);
  const startedAt = performance.now();
  const { stdout, stderr } = await runProcessTree("wolframscript", ["-code", code], {
    timeoutMs,
    maxBuffer: MAX_BUFFER,
    signal,
  });
  const payload = extractPayload(stdout, marker);
  payload.elapsedMs = Math.round(performance.now() - startedAt);
  payload.transportStderr = stderr.trim() === "" ? [] : stderr.trim().split(/\r?\n/);
  return payload;
}

function clipHelpers(maxOutputChars: number): string {
  return `
xActMCPMaxOutputChars = ${maxOutputChars};
xActMCPClip[text_String] := <|
  "text" -> If[StringLength[text] > xActMCPMaxOutputChars, StringTake[text, xActMCPMaxOutputChars], text],
  "truncated" -> StringLength[text] > xActMCPMaxOutputChars,
  "sha256" -> Hash[text, "SHA256", "HexString"]
|>;
`;
}

async function xactRun(
  args: Record<string, unknown>,
  signal?: AbortSignal,
): Promise<Record<string, unknown>> {
  const code = optionalString(args.code);
  if (!code) {
    throw new Error("xact_run requires a non-empty code string.");
  }
  const profile = profileArgument(args.profile);
  const packages = packagesFor(profile, extraPackagesArgument(args.extraPackages));
  const timeoutMs = timeoutArgument(args.timeoutMs);
  const maxOutputChars = maxOutputArgument(args.maxOutputChars);

  const body = `
${clipHelpers(maxOutputChars)}
xActMCPMessages = {};
xActMCPValue = Block[{
  $Context = "Global\u0060", Print = (Null &), $Messages = {}, $MessageList = {}
},
  xActMCPInnerValue = Check[ToExpression[${wlString(code)}, InputForm], $Failed];
  xActMCPMessages = xActMCPToString /@ $MessageList;
  xActMCPInnerValue
];
xActMCPResultText = xActMCPToString[xActMCPValue];
xActMCPResultClip = xActMCPClip[xActMCPResultText];
xActMCPPayload = <|
  "ok" -> (xActMCPLoadErrors === {} && FreeQ[xActMCPValue, $Failed | $Aborted]),
  "profile" -> ${wlString(profile)},
  "result" -> xActMCPResultClip["text"],
  "resultSha256" -> xActMCPResultClip["sha256"],
  "truncated" -> xActMCPResultClip["truncated"],
  "messages" -> xActMCPMessages,
  "loadedPackages" -> xActMCPLoadedPackages,
  "loadErrors" -> xActMCPLoadErrors,
  "loadMessages" -> xActMCPLoadMessages
|>;
`;
  return runPayload(body, packages, timeoutMs, signal);
}

function pipelineSteps(pipeline: Pipeline): string[] {
  switch (pipeline) {
    case "none":
      return [];
    case "canonical":
      return ["ToCanonical"];
    case "canonical_contract":
      return ["ToCanonical", "ContractMetric", "ToCanonical"];
    case "full":
      return ["ToCanonical", "ContractMetric", "ToCanonical", "FullSimplification[]"];
  }
}

function checksToWolfram(checks: CheckInput[]): string {
  return `{${checks
    .map(
      ({ label, residual }) =>
        `<|"label" -> ${wlString(label)}, "residual" -> ${wlString(residual)}|>`,
    )
    .join(", ")}}`;
}

async function xactVerifyResiduals(
  args: Record<string, unknown>,
  signal?: AbortSignal,
): Promise<Record<string, unknown>> {
  const checks = checksArgument(args.checks);
  const setup = typeof args.setup === "string" ? args.setup : "";
  const assumptions = typeof args.assumptions === "string" ? args.assumptions : "";
  const profile = profileArgument(args.profile);
  const pipeline = pipelineArgument(args.pipeline);
  const packages = packagesFor(profile, extraPackagesArgument(args.extraPackages));
  const timeoutMs = timeoutArgument(args.timeoutMs);
  const maxOutputChars = maxOutputArgument(args.maxOutputChars);
  const steps = pipelineSteps(pipeline);

  const body = `
${clipHelpers(maxOutputChars)}
xActMCPSetupMessages = {};
xActMCPSetupValue = Block[{
  $Context = "Global\u0060", Print = (Null &), $Messages = {}, $MessageList = {}
},
  xActMCPInnerSetupValue = Check[ToExpression[${wlString(setup)}, InputForm], $Failed];
  xActMCPSetupMessages = xActMCPToString /@ $MessageList;
  xActMCPInnerSetupValue
];
xActMCPAssumptions = If[${wlString(assumptions)} === "", True,
  Block[{$Context = "Global\u0060"},
    Check[ToExpression[${wlString(assumptions)}, InputForm], $Failed]
  ]
];
xActMCPPipeline = ${wlString(pipeline)};
xActMCPPipelineSteps = ${wlList(steps)};
xActMCPChecks = ${checksToWolfram(checks)};

xActMCPUnknownHeadQ[head_Symbol] :=
  Context[Unevaluated[head]] === "Global\`" &&
  OwnValues[head] === {} && DownValues[head] === {} &&
  UpValues[head] === {} && SubValues[head] === {};
xActMCPUnknownHeads[expr_] := DeleteDuplicates @ Cases[
  Unevaluated[expr],
  HoldPattern[head_Symbol[___]] /; xActMCPUnknownHeadQ[Unevaluated[head]] :>
    Context[Unevaluated[head]] <> SymbolName[Unevaluated[head]],
  {0, Infinity}
];

xActMCPApplyPipeline[value_] := Module[{canonical, final},
  canonical = Switch[xActMCPPipeline,
    "none", value,
    _, ToCanonical[value]
  ];
  final = Switch[xActMCPPipeline,
    "none", canonical,
    "canonical", canonical,
    "canonical_contract", ToCanonical[ContractMetric[canonical]],
    "full", FullSimplification[][ToCanonical[ContractMetric[canonical]]]
  ];
  {canonical, final}
];

xActMCPVerifyOne[check_] := Module[
  {raw, canonical, final, evaluationMessages = {}, unknownHeads, status,
   canonicalText, finalText, canonicalClip, finalClip},
  If[xActMCPLoadErrors =!= {} || xActMCPSetupMessages =!= {} ||
     xActMCPSetupValue === $Failed || xActMCPAssumptions === $Failed,
    Return[<|
      "label" -> check["label"],
      "status" -> "error",
      "canonicalResidual" -> "",
      "canonicalResidualSha256" -> "",
      "canonicalResidualTruncated" -> False,
      "finalResidual" -> "",
      "finalResidualSha256" -> "",
      "finalResidualTruncated" -> False,
      "unknownHeads" -> {},
      "messages" -> xActMCPSetupMessages
    |>]
  ];
  Block[{
    $Context = "Global\u0060", Print = (Null &), $Messages = {}, $MessageList = {},
    $Assumptions = xActMCPAssumptions
  },
    raw = ToExpression[check["residual"], InputForm];
    {canonical, final} = If[raw === $Failed, {$Failed, $Failed},
      xActMCPApplyPipeline[raw]
    ];
    evaluationMessages = xActMCPToString /@ $MessageList;
  ];
  unknownHeads = If[final === $Failed, {}, xActMCPUnknownHeads[final]];
  status = Which[
    final === $Failed || ! FreeQ[final, $Failed | $Aborted], "error",
    TrueQ[final === 0], "zero",
    unknownHeads =!= {}, "unevaluated",
    evaluationMessages =!= {}, "error",
    True, "nonzero_normal_form"
  ];
  canonicalText = If[canonical === $Failed, "", xActMCPToString[canonical]];
  finalText = If[final === $Failed, "", xActMCPToString[final]];
  canonicalClip = xActMCPClip[canonicalText];
  finalClip = xActMCPClip[finalText];
  <|
    "label" -> check["label"],
    "status" -> status,
    "canonicalResidual" -> canonicalClip["text"],
    "canonicalResidualSha256" -> canonicalClip["sha256"],
    "canonicalResidualTruncated" -> canonicalClip["truncated"],
    "finalResidual" -> finalClip["text"],
    "finalResidualSha256" -> finalClip["sha256"],
    "finalResidualTruncated" -> finalClip["truncated"],
    "unknownHeads" -> unknownHeads,
    "messages" -> evaluationMessages
  |>
];

xActMCPCheckResults = xActMCPVerifyOne /@ xActMCPChecks;
xActMCPPayload = <|
  "ok" -> (xActMCPLoadErrors === {} && xActMCPSetupMessages === {} &&
    FreeQ[xActMCPCheckResults[[All, "status"]], "error"]),
  "allZero" -> And @@ (# === "zero" & /@ xActMCPCheckResults[[All, "status"]]),
  "profile" -> ${wlString(profile)},
  "pipeline" -> xActMCPPipeline,
  "pipelineSteps" -> xActMCPPipelineSteps,
  "assumptions" -> ${wlString(assumptions)},
  "loadedPackages" -> xActMCPLoadedPackages,
  "loadErrors" -> xActMCPLoadErrors,
  "loadMessages" -> xActMCPLoadMessages,
  "setupMessages" -> xActMCPSetupMessages,
  "checks" -> xActMCPCheckResults
|>;
`;
  return runPayload(body, packages, timeoutMs, signal);
}

const commonInputProperties = {
  profile: {
    type: "string",
    enum: ["core", "cps", "components", "all"],
    description: "xAct package profile. Defaults to core.",
  },
  extraPackages: {
    type: "array",
    items: { type: "string" },
    description: "Additional Wolfram package contexts to load after the selected profile.",
  },
  timeoutMs: {
    type: "number",
    description: "Execution timeout in milliseconds, clamped to 1 second through 10 minutes.",
  },
  maxOutputChars: {
    type: "number",
    description: "Maximum characters retained for each result expression; defaults to 20000.",
  },
};

const server = new Server(
  { name: "mcp-server-xact", version: "0.2.1" },
  { capabilities: { tools: {} } },
);

server.setRequestHandler(ListToolsRequestSchema, async () => ({
  tools: [
    {
      name: "xact_run",
      description:
        "Run self-contained Wolfram Language code in a fresh kernel with an explicit xAct package profile. Returns structured results only; no definitions persist between calls.",
      inputSchema: {
        type: "object",
        properties: {
          code: { type: "string", description: "Self-contained Wolfram Language code." },
          ...commonInputProperties,
        },
        required: ["code"],
      },
      outputSchema: {
        type: "object",
        properties: {
          ok: { type: "boolean" },
          result: { type: "string" },
          truncated: { type: "boolean" },
        },
        required: ["ok"],
      },
    },
    {
      name: "xact_verify_residuals",
      description:
        "Evaluate labelled residuals in a fresh xAct kernel and report zero, nonzero_normal_form, unevaluated, or error without interpreting the mathematical claim.",
      inputSchema: {
        type: "object",
        properties: {
          setup: {
            type: "string",
            description: "Self-contained Wolfram setup defining manifolds, metrics, tensors, and rules.",
          },
          checks: {
            type: "array",
            items: {
              type: "object",
              properties: {
                label: { type: "string" },
                residual: { type: "string" },
              },
              required: ["label", "residual"],
            },
            description: "Labelled residual expressions expected to vanish.",
          },
          pipeline: {
            type: "string",
            enum: ["none", "canonical", "canonical_contract", "full"],
            description: "Transparent normalization pipeline. Defaults to canonical.",
          },
          assumptions: {
            type: "string",
            description: "Optional Wolfram expression assigned to $Assumptions during checks.",
          },
          ...commonInputProperties,
        },
        required: ["checks"],
      },
      outputSchema: {
        type: "object",
        properties: {
          ok: { type: "boolean" },
          allZero: { type: "boolean" },
          checks: { type: "array" },
        },
        required: ["ok"],
      },
    },
  ],
}));

function structuredError(error: unknown): Record<string, unknown> {
  return {
    ok: false,
    error: error instanceof Error ? error.message : String(error),
  };
}

server.setRequestHandler(CallToolRequestSchema, async (request, extra) => {
  const args = request.params.arguments ?? {};
  try {
    let structuredContent: Record<string, unknown>;
    switch (request.params.name) {
      case "xact_run":
        structuredContent = await xactRun(args, extra.signal);
        break;
      case "xact_verify_residuals":
        structuredContent = await xactVerifyResiduals(args, extra.signal);
        break;
      default:
        throw new Error(`Unknown tool: ${request.params.name}`);
    }
    return { content: [], structuredContent };
  } catch (error) {
    return { content: [], structuredContent: structuredError(error), isError: true };
  }
});

async function main(): Promise<void> {
  const transport = new StdioServerTransport();
  server.onclose = () => {
    void terminateAllProcessTrees();
  };
  await server.connect(transport);
}

let shuttingDown = false;

async function shutdown(exitCode: number): Promise<void> {
  if (shuttingDown) {
    return;
  }
  shuttingDown = true;
  await terminateAllProcessTrees();
  try {
    await server.close();
  } finally {
    process.exit(exitCode);
  }
}

process.once("SIGINT", () => {
  void shutdown(0);
});
process.once("SIGTERM", () => {
  void shutdown(0);
});

main().catch((error) => {
  console.error("Fatal error in xAct MCP server:", error);
  void shutdown(1);
});
