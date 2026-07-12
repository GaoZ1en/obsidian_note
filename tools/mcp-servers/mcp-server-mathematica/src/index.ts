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

function formatEvaluationResult(code: string, output: string): string {
  const trimmedOutput = output.trimEnd();
  const outputBlock = trimmedOutput.length > 0 ? trimmedOutput : "(no output)";

  return `Mathematica code executed:
\`\`\`wl
${code}
\`\`\`

Output:
${outputBlock}`;
}

const server = new Server(
  {
    name: "mcp-server-mathematica",
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
      name: "evaluate_mathematica",
      description: "Evaluate Mathematica/Wolfram Language code using wolframscript.",
      inputSchema: {
        type: "object",
        properties: {
          code: {
            type: "string",
            description: "The Mathematica/Wolfram Language code to evaluate.",
          },
        },
        required: ["code"],
      },
    },
  ],
}));

server.setRequestHandler(CallToolRequestSchema, async (request) => {
  if (request.params.name !== "evaluate_mathematica") {
    throw new Error(`Unknown tool: ${request.params.name}`);
  }

  const code = request.params.arguments?.code;
  if (typeof code !== "string") {
    throw new Error("The evaluate_mathematica tool requires a string 'code' argument.");
  }

  try {
    const { stdout, stderr } = await execFileAsync("wolframscript", ["-code", code], {
      timeout: 30000,
      maxBuffer: 1024 * 1024 * 10,
    });

    const text = stderr.trim().length > 0 ? `${stdout}\n${stderr}` : stdout;
    return {
      content: [
        {
          type: "text",
          text: formatEvaluationResult(code, text),
        },
      ],
    };
  } catch (error) {
    const message = error instanceof Error ? error.message : String(error);
    return {
      content: [
        {
          type: "text",
          text: formatEvaluationResult(code, `Error executing Mathematica code: ${message}`),
        },
      ],
      isError: true,
    };
  }
});

async function main() {
  const transport = new StdioServerTransport();
  await server.connect(transport);
}

main().catch((error) => {
  console.error("Fatal error in Mathematica MCP server:", error);
  process.exit(1);
});
