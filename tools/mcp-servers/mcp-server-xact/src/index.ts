#!/usr/bin/env node

import { Server } from "@modelcontextprotocol/sdk/server/index.js";
import { StdioServerTransport } from "@modelcontextprotocol/sdk/server/stdio.js";
import {
  CallToolRequestSchema,
  ListToolsRequestSchema,
} from "@modelcontextprotocol/sdk/types.js";
import { execFile } from "child_process";
import { randomUUID } from "crypto";
import { promisify } from "util";

const execFileAsync = promisify(execFile);

const DEFAULT_TIMEOUT_MS = 120000;
const MAX_BUFFER = 1024 * 1024 * 20;
const DEFAULT_PACKAGES = [
  "xAct`xTensor`",
  "xAct`xPert`",
  "xAct`xTras`",
  "xAct`xCoba`",
  "xAct`xCPS`",
];

let resetCount = 0;
let lastResetAt = new Date().toISOString();

type WolframRun = {
  code: string;
  result: string;
  keptOutput: string[];
  warnings: string[];
  suppressedOutputCount: number;
  stderr: string;
  loadErrors: string;
  loadedPackages: string;
};

function wlString(value: string): string {
  return JSON.stringify(value);
}

function wlList(values: string[]): string {
  return `{${values.map(wlString).join(", ")}}`;
}

function stringArrayArgument(value: unknown, fallback: string[]): string[] {
  if (!Array.isArray(value)) {
    return fallback;
  }

  const strings = value.filter((item): item is string => typeof item === "string");
  return strings.length > 0 ? strings : fallback;
}

function optionalString(value: unknown): string | undefined {
  return typeof value === "string" && value.trim().length > 0 ? value : undefined;
}

function timeoutArgument(value: unknown): number {
  if (typeof value !== "number" || !Number.isFinite(value)) {
    return DEFAULT_TIMEOUT_MS;
  }

  return Math.max(1000, Math.min(Math.trunc(value), 10 * 60 * 1000));
}

function makePrelude(packages: string[]): string {
  return `
$HistoryLength = 0;
xActMCPRequestedPackages = ${wlList(packages)};
xActMCPLoadedPackages = {};
xActMCPLoadErrors = {};
Do[
  Block[{Print = (Null &)}, Quiet[Needs[pkg]]];
  If[MemberQ[$Packages, pkg],
    AppendTo[xActMCPLoadedPackages, pkg],
    AppendTo[xActMCPLoadErrors, pkg]
  ],
  {pkg, xActMCPRequestedPackages}
];
`;
}

function wrapCode(code: string, packages: string[]): { wrappedCode: string; marker: string } {
  const marker = `XACT_MCP_${randomUUID().replaceAll("-", "_")}`;
  const resultBegin = `${marker}_RESULT_BEGIN`;
  const resultEnd = `${marker}_RESULT_END`;
  const loadedBegin = `${marker}_LOADED_BEGIN`;
  const loadedEnd = `${marker}_LOADED_END`;
  const errorsBegin = `${marker}_LOAD_ERRORS_BEGIN`;
  const errorsEnd = `${marker}_LOAD_ERRORS_END`;

  return {
    marker,
    wrappedCode: `
${makePrelude(packages)}
xActMCPResult = (${code});
Print["${resultBegin}"];
Print[ToString[xActMCPResult, InputForm, PageWidth -> Infinity]];
Print["${resultEnd}"];
Print["${loadedBegin}"];
Print[ToString[xActMCPLoadedPackages, InputForm, PageWidth -> Infinity]];
Print["${loadedEnd}"];
Print["${errorsBegin}"];
Print[ToString[xActMCPLoadErrors, InputForm, PageWidth -> Infinity]];
Print["${errorsEnd}"];
`,
  };
}

function extractBlock(text: string, begin: string, end: string): { value: string; rest: string } {
  const beginIndex = text.indexOf(begin);
  const endIndex = text.indexOf(end);

  if (beginIndex < 0 || endIndex < 0 || endIndex < beginIndex) {
    return { value: "", rest: text };
  }

  const valueStart = beginIndex + begin.length;
  const value = text.slice(valueStart, endIndex).trim();
  const rest = `${text.slice(0, beginIndex)}${text.slice(endIndex + end.length)}`;
  return { value, rest };
}

function isNoiseLine(line: string): boolean {
  const trimmed = line.trim();

  if (trimmed.length === 0) {
    return true;
  }

  return [
    /^During evaluation of In\[\d+\]:=/,
    /^Package xAct`/,
    /^CopyRight /,
    /^These packages come with ABSOLUTELY NO WARRANTY/,
    /^------------------------------------------------------------$/,
    /^\*+\s+Def[A-Za-z]+:/,
    /^Connecting to external /,
    /^Connection established/,
    /^Please cite xAct as/,
    /^See http:\/\/www\.xact\.es/,
    /^Null$/,
  ].some((pattern) => pattern.test(trimmed));
}

function isKnownWarning(line: string): boolean {
  return /LinkOpen::linke|xPerm|MathLink/i.test(line);
}

function filterOutput(text: string): {
  keptOutput: string[];
  warnings: string[];
  suppressedOutputCount: number;
} {
  const keptOutput: string[] = [];
  const warnings: string[] = [];
  let suppressedOutputCount = 0;

  for (const line of text.split(/\r?\n/)) {
    if (isKnownWarning(line)) {
      warnings.push(line.trim());
      suppressedOutputCount += 1;
    } else if (isNoiseLine(line)) {
      suppressedOutputCount += 1;
    } else {
      keptOutput.push(line);
    }
  }

  return { keptOutput, warnings, suppressedOutputCount };
}

async function runWolfram(code: string, options?: {
  packages?: string[];
  timeoutMs?: number;
}): Promise<WolframRun> {
  const packages = options?.packages ?? DEFAULT_PACKAGES;
  const { marker, wrappedCode } = wrapCode(code, packages);

  const { stdout, stderr } = await execFileAsync("wolframscript", ["-code", wrappedCode], {
    timeout: options?.timeoutMs ?? DEFAULT_TIMEOUT_MS,
    maxBuffer: MAX_BUFFER,
  });

  const resultBegin = `${marker}_RESULT_BEGIN`;
  const resultEnd = `${marker}_RESULT_END`;
  const loadedBegin = `${marker}_LOADED_BEGIN`;
  const loadedEnd = `${marker}_LOADED_END`;
  const errorsBegin = `${marker}_LOAD_ERRORS_BEGIN`;
  const errorsEnd = `${marker}_LOAD_ERRORS_END`;

  const resultExtraction = extractBlock(stdout, resultBegin, resultEnd);
  const loadedExtraction = extractBlock(resultExtraction.rest, loadedBegin, loadedEnd);
  const errorsExtraction = extractBlock(loadedExtraction.rest, errorsBegin, errorsEnd);
  const filtered = filterOutput(`${errorsExtraction.rest}\n${stderr}`);

  return {
    code,
    result: resultExtraction.value,
    keptOutput: filtered.keptOutput,
    warnings: filtered.warnings,
    suppressedOutputCount: filtered.suppressedOutputCount,
    stderr,
    loadErrors: errorsExtraction.value,
    loadedPackages: loadedExtraction.value,
  };
}

function renderRun(title: string, run: WolframRun): string {
  const sections = [
    `Wolfram code:\n\`\`\`wl\n${run.code}\n\`\`\``,
    `Result:\n\`\`\`wl\n${run.result || "(no result captured)"}\n\`\`\``,
  ];

  if (run.loadErrors !== "{}" && run.loadErrors !== "") {
    sections.push(`Load errors:\n\`\`\`wl\n${run.loadErrors}\n\`\`\``);
  }

  if (run.warnings.length > 0) {
    sections.push(`Warnings:\n\`\`\`text\n${run.warnings.join("\n")}\n\`\`\``);
  }

  if (run.keptOutput.length > 0) {
    sections.push(`Messages:\n\`\`\`text\n${run.keptOutput.join("\n")}\n\`\`\``);
  }

  return sections.join("\n\n");
}

function renderError(title: string, error: unknown): string {
  const message = error instanceof Error ? error.message : String(error);
  return `Error in ${title}:\n\`\`\`text\n${message}\n\`\`\``;
}

const server = new Server(
  {
    name: "mcp-server-xact",
    version: "0.1.0",
  },
  {
    capabilities: {
      tools: {},
    },
  },
);

server.setRequestHandler(ListToolsRequestSchema, async () => ({
  tools: [
    {
      name: "xact_eval",
      description:
        "Evaluate Wolfram Language code in a fresh kernel with common xAct packages preloaded and routine xAct banner/definition noise filtered.",
      inputSchema: {
        type: "object",
        properties: {
          code: {
            type: "string",
            description: "Wolfram Language code to evaluate after xAct packages are loaded.",
          },
          packages: {
            type: "array",
            items: { type: "string" },
            description: "Optional xAct package contexts to preload.",
          },
          timeoutMs: {
            type: "number",
            description: "Optional timeout in milliseconds, capped at 10 minutes.",
          },
        },
        required: ["code"],
      },
    },
    {
      name: "xact_reset",
      description:
        "Reset xAct session bookkeeping. This server already runs each tool call in a fresh Wolfram kernel, so reset records a new clean-session boundary.",
      inputSchema: {
        type: "object",
        properties: {},
      },
    },
    {
      name: "xact_loaded_packages",
      description: "Return the xAct packages that can be loaded in the fresh Wolfram kernel.",
      inputSchema: {
        type: "object",
        properties: {
          packages: {
            type: "array",
            items: { type: "string" },
            description: "Optional xAct package contexts to probe.",
          },
          timeoutMs: {
            type: "number",
            description: "Optional timeout in milliseconds, capped at 10 minutes.",
          },
        },
      },
    },
    {
      name: "xact_check_residuals",
      description:
        "Evaluate residual expressions with xAct loaded, apply ToCanonical and Simplify, and report whether all residuals vanish.",
      inputSchema: {
        type: "object",
        properties: {
          setup: {
            type: "string",
            description: "Optional Wolfram setup code, such as DefManifold, DefMetric, and DefTensor calls.",
          },
          expressions: {
            type: "array",
            items: { type: "string" },
            description: "Residual expressions expected to simplify to zero.",
          },
          assumptions: {
            type: "string",
            description: "Optional assumptions passed to Simplify.",
          },
          timeoutMs: {
            type: "number",
            description: "Optional timeout in milliseconds, capped at 10 minutes.",
          },
        },
        required: ["expressions"],
      },
    },
    {
      name: "xact_variation_check",
      description:
        "Run common xCPS/xAct variation checks, including FirstVariation and SymplecticPotential followed by ToCanonical.",
      inputSchema: {
        type: "object",
        properties: {
          setup: {
            type: "string",
            description: "Wolfram setup code defining the manifold, metric, fields, and covariant derivative.",
          },
          lagrangian: {
            type: "string",
            description: "The Lagrangian expression to vary.",
          },
          fields: {
            type: "array",
            items: { type: "string" },
            description: "Raw Wolfram symbols or field expressions used as FirstVariation fields.",
          },
          covariantDerivative: {
            type: "string",
            description: "Raw Wolfram covariant derivative symbol, default CD.",
          },
          checks: {
            type: "array",
            items: {
              type: "string",
              enum: ["firstVariation", "symplecticPotential"],
            },
            description: "Checks to run. Defaults to both.",
          },
          simplify: {
            type: "boolean",
            description: "Whether to run Simplify after ToCanonical.",
          },
          timeoutMs: {
            type: "number",
            description: "Optional timeout in milliseconds, capped at 10 minutes.",
          },
        },
        required: ["setup", "lagrangian", "fields"],
      },
    },
  ],
}));

server.setRequestHandler(CallToolRequestSchema, async (request) => {
  const args = request.params.arguments ?? {};
  const timeoutMs = timeoutArgument(args.timeoutMs);

  try {
    switch (request.params.name) {
      case "xact_eval": {
        const code = optionalString(args.code);
        if (!code) {
          throw new Error("xact_eval requires a non-empty string 'code' argument.");
        }

        const packages = stringArrayArgument(args.packages, DEFAULT_PACKAGES);
        const run = await runWolfram(code, { packages, timeoutMs });
        return { content: [{ type: "text", text: renderRun("xact_eval", run) }] };
      }

      case "xact_reset": {
        resetCount += 1;
        lastResetAt = new Date().toISOString();
        return {
          content: [
            {
              type: "text",
              text: JSON.stringify(
                {
                  ok: true,
                  title: "xact_reset",
                  message:
                    "Reset recorded. xAct MCP evaluates each request in a fresh Wolfram kernel, so the next tool call has no manifold/tensor definitions from prior calls.",
                  diagnostics: { resetCount, lastResetAt },
                },
                null,
                2,
              ),
            },
          ],
        };
      }

      case "xact_loaded_packages": {
        const packages = stringArrayArgument(args.packages, DEFAULT_PACKAGES);
        const code = `
<|
  "WolframVersion" -> System\`$Version,
  "RequestedPackages" -> xActMCPRequestedPackages,
  "LoadedPackageContexts" -> Select[$Packages, StringStartsQ[#, "xAct\`"] &],
  "LoadErrors" -> xActMCPLoadErrors
|>
`;
        const run = await runWolfram(code, { packages, timeoutMs });
        return { content: [{ type: "text", text: renderRun("xact_loaded_packages", run) }] };
      }

      case "xact_check_residuals": {
        const expressions = stringArrayArgument(args.expressions, []);
        if (expressions.length === 0) {
          throw new Error("xact_check_residuals requires at least one residual expression.");
        }

        const setup = optionalString(args.setup) ?? "";
        const assumptions = optionalString(args.assumptions);
        const simplifyCall = assumptions
          ? `Simplify[#, ${assumptions}] &`
          : "Simplify";
        const code = `
${setup}
xActMCPResidualInputs = ${wlList(expressions)};
xActMCPResiduals = {${expressions.join(", ")}};
xActMCPCanonicalResiduals = ToCanonical /@ xActMCPResiduals;
xActMCPSimplifiedResiduals = (${simplifyCall}) /@ xActMCPCanonicalResiduals;
xActMCPZeroQ = (TrueQ[Simplify[# == 0${assumptions ? `, ${assumptions}` : ""}]] &) /@ xActMCPSimplifiedResiduals;
<|
  "AllZero" -> And @@ xActMCPZeroQ,
  "ZeroQ" -> xActMCPZeroQ,
  "Inputs" -> xActMCPResidualInputs,
  "CanonicalResiduals" -> xActMCPCanonicalResiduals,
  "SimplifiedResiduals" -> xActMCPSimplifiedResiduals
|>
`;
        const run = await runWolfram(code, { timeoutMs });
        return { content: [{ type: "text", text: renderRun("xact_check_residuals", run) }] };
      }

      case "xact_variation_check": {
        const setup = optionalString(args.setup);
        const lagrangian = optionalString(args.lagrangian);
        const fields = stringArrayArgument(args.fields, []);

        if (!setup || !lagrangian || fields.length === 0) {
          throw new Error(
            "xact_variation_check requires 'setup', 'lagrangian', and at least one 'fields' entry.",
          );
        }

        const covariantDerivative = optionalString(args.covariantDerivative) ?? "CD";
        const checks = stringArrayArgument(args.checks, [
          "firstVariation",
          "symplecticPotential",
        ]);
        const simplify = args.simplify === true;
        const canonicalize = simplify ? "Simplify[ToCanonical[#]] &" : "ToCanonical";
        const fieldList = `{${fields.join(", ")}}`;
        const runFirstVariation = checks.includes("firstVariation");
        const runSymplecticPotential = checks.includes("symplecticPotential");
        const code = `
${setup}
xActMCPLagrangian = ${lagrangian};
xActMCPVariationResults = <||>;
${runFirstVariation ? `xActMCPFirstVariation = (${canonicalize})[FirstVariation[${fieldList}, ${covariantDerivative}][xActMCPLagrangian]]; xActMCPVariationResults = Join[xActMCPVariationResults, <|"FirstVariation" -> xActMCPFirstVariation|>];` : ""}
${runSymplecticPotential ? `xActMCPSymplecticPotential = (${canonicalize})[SymplecticPotential[${covariantDerivative}][xActMCPLagrangian]]; xActMCPVariationResults = Join[xActMCPVariationResults, <|"SymplecticPotential" -> xActMCPSymplecticPotential|>];` : ""}
xActMCPVariationResults
`;
        const run = await runWolfram(code, { timeoutMs });
        return { content: [{ type: "text", text: renderRun("xact_variation_check", run) }] };
      }

      default:
        throw new Error(`Unknown tool: ${request.params.name}`);
    }
  } catch (error) {
    return {
      content: [{ type: "text", text: renderError(request.params.name, error) }],
      isError: true,
    };
  }
});

async function main() {
  const transport = new StdioServerTransport();
  await server.connect(transport);
}

main().catch((error) => {
  console.error("Fatal error in xAct MCP server:", error);
  process.exit(1);
});
