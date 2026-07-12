#!/usr/bin/env node

import { Server } from "@modelcontextprotocol/sdk/server/index.js";
import { StdioServerTransport } from "@modelcontextprotocol/sdk/server/stdio.js";
import {
  CallToolRequestSchema,
  ListToolsRequestSchema,
} from "@modelcontextprotocol/sdk/types.js";
import { execFile } from "child_process";
import { promisify } from "util";

const execFileAsync = promisify(execFile);

const SAGE_COMMAND = process.env.SAGE_COMMAND ?? "sage";
const DEFAULT_TIMEOUT_MS = 120000;
const MAX_TIMEOUT_MS = 600000;
const MAX_BUFFER = 1024 * 1024 * 20;

type SageDiagnostics = {
  sageCommand: string;
  sageVersion: string;
  exitStatus: number | string;
  timedOut: boolean;
  timeoutMs: number;
  elapsedMs: number;
};

type SageRun = {
  code: string;
  stdout: string;
  stderr: string;
  diagnostics: SageDiagnostics;
};

function optionalTimeoutMs(value: unknown): number {
  if (typeof value !== "number" || !Number.isFinite(value)) {
    return DEFAULT_TIMEOUT_MS;
  }

  return Math.max(1000, Math.min(Math.trunc(value), MAX_TIMEOUT_MS));
}

function extractExitStatus(error: unknown): number | string {
  if (typeof error !== "object" || error === null) {
    return "error";
  }

  const maybeError = error as { code?: unknown; signal?: unknown };
  if (typeof maybeError.code === "number") {
    return maybeError.code;
  }

  if (typeof maybeError.signal === "string") {
    return maybeError.signal;
  }

  return "error";
}

function extractOutput(error: unknown, key: "stdout" | "stderr"): string {
  if (typeof error !== "object" || error === null) {
    return "";
  }

  const value = (error as Record<string, unknown>)[key];
  return typeof value === "string" ? value : "";
}

function hasTimedOut(error: unknown): boolean {
  return (
    typeof error === "object" &&
    error !== null &&
    (error as { killed?: unknown }).killed === true
  );
}

async function sageVersion(): Promise<string> {
  try {
    const { stdout, stderr } = await execFileAsync(SAGE_COMMAND, ["-v"], {
      timeout: 30000,
      maxBuffer: 1024 * 1024,
    });
    return `${stdout}${stderr}`.trim();
  } catch (error) {
    const message = error instanceof Error ? error.message : String(error);
    return `Unavailable: ${message}`;
  }
}

async function runSage(code: string, timeoutMs: number): Promise<SageRun> {
  const startedAt = Date.now();
  const version = await sageVersion();

  try {
    const { stdout, stderr } = await execFileAsync(SAGE_COMMAND, ["-c", code], {
      timeout: timeoutMs,
      maxBuffer: MAX_BUFFER,
    });

    return {
      code,
      stdout,
      stderr,
      diagnostics: {
        sageCommand: SAGE_COMMAND,
        sageVersion: version,
        exitStatus: 0,
        timedOut: false,
        timeoutMs,
        elapsedMs: Date.now() - startedAt,
      },
    };
  } catch (error) {
    return {
      code,
      stdout: extractOutput(error, "stdout"),
      stderr: extractOutput(error, "stderr") || (error instanceof Error ? error.message : String(error)),
      diagnostics: {
        sageCommand: SAGE_COMMAND,
        sageVersion: version,
        exitStatus: extractExitStatus(error),
        timedOut: hasTimedOut(error),
        timeoutMs,
        elapsedMs: Date.now() - startedAt,
      },
    };
  }
}

function markdownBlock(language: string, text: string): string {
  const body = text.trimEnd().length > 0 ? text.trimEnd() : "(empty)";
  return `\`\`\`${language}\n${body}\n\`\`\``;
}

function renderRun(run: SageRun): string {
  return [
    `SageMath code executed:\n${markdownBlock("python", run.code)}`,
    `stdout:\n${markdownBlock("text", run.stdout)}`,
    `stderr:\n${markdownBlock("text", run.stderr)}`,
    `diagnostics:\n${markdownBlock("json", JSON.stringify(run.diagnostics, null, 2))}`,
  ].join("\n\n");
}

const server = new Server(
  {
    name: "mcp-server-sage",
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
      name: "evaluate_sage",
      description:
        "Evaluate trusted local SageMath/Python code in a fresh SageMath process. Useful for discrete algebra, Lie and representation theory, symmetric functions, and combinatorial representation calculations.",
      inputSchema: {
        type: "object",
        properties: {
          code: {
            type: "string",
            description: "The SageMath/Python code to evaluate.",
          },
          timeoutMs: {
            type: "number",
            description: "Optional timeout in milliseconds. Defaults to 120000 and is capped at 600000.",
          },
        },
        required: ["code"],
      },
    },
  ],
}));

server.setRequestHandler(CallToolRequestSchema, async (request) => {
  if (request.params.name !== "evaluate_sage") {
    throw new Error(`Unknown tool: ${request.params.name}`);
  }

  const args = request.params.arguments ?? {};
  const code = args.code;
  if (typeof code !== "string" || code.trim().length === 0) {
    throw new Error("evaluate_sage requires a non-empty string 'code' argument.");
  }

  const run = await runSage(code, optionalTimeoutMs(args.timeoutMs));
  return {
    content: [
      {
        type: "text",
        text: renderRun(run),
      },
    ],
    isError: run.diagnostics.exitStatus !== 0,
  };
});

async function main() {
  const transport = new StdioServerTransport();
  await server.connect(transport);
}

main().catch((error) => {
  console.error("Fatal error in SageMath MCP server:", error);
  process.exit(1);
});
