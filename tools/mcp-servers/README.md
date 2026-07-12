# Local MCP servers

This directory contains the source for the three locally maintained MCP servers that were previously stored only under `~/.codex/`:

- `mcp-server-mathematica` exposes general Wolfram Language evaluation through `wolframscript`.
- `mcp-server-xact` exposes fresh-kernel xAct/xCPS evaluation and several focused tensor and variation checks.
- `mcp-server-sage` exposes trusted local SageMath evaluation.

Each server uses MCP over standard input/output. Codex starts the compiled `build/index.js` process and communicates with it directly; there is no daemon, socket, database, or separate persistent state. `node_modules/` and `build/` are machine-local generated directories and are intentionally not tracked.

## What is not vendored

The following MCP entries in the local Codex configuration are not custom source projects and are therefore not copied here:

- `obsidian-mcp` is installed on demand from the npm package `@huangyihe/obsidian-mcp`.
- `node_repl` and `computer-use` are components bundled with the Codex/ChatGPT application.
- MCP registrations and environment variables live in `~/.codex/config.toml`. Do not commit that file because it can contain secrets such as the Obsidian API token.

The xAct server also depends on an external Wolfram installation of xAct. On the source Mac it is under `~/Library/Wolfram/Applications/xAct`, including `xCPS`. That package tree is not part of the MCP server and is not vendored in this repository.

## Install on another computer

Install these prerequisites first:

1. Node.js 20 or newer and npm.
2. Wolfram Engine or Mathematica with a working `wolframscript` for the Mathematica and xAct servers.
3. xAct, including the packages requested in `mcp-server-xact/src/index.ts`, in the Wolfram user applications directory.
4. SageMath for the Sage server.

Build each server from the vault root:

```sh
for server in mathematica xact sage; do
  (cd "tools/mcp-servers/mcp-server-$server" && npm ci && npm run build)
done
```

Then add registrations like the following to `~/.codex/config.toml`. Replace every `/absolute/path/...` placeholder with paths from the new computer. Absolute executable paths are the least ambiguous choice for desktop-launched applications.

```toml
[mcp_servers.mathematica]
command = "/absolute/path/to/node"
args = ["/absolute/path/to/Note/tools/mcp-servers/mcp-server-mathematica/build/index.js"]

[mcp_servers.mathematica.env]
PATH = "/directory/containing/wolframscript:/usr/local/bin:/usr/bin:/bin"

[mcp_servers.xact]
command = "/absolute/path/to/node"
args = ["/absolute/path/to/Note/tools/mcp-servers/mcp-server-xact/build/index.js"]

[mcp_servers.xact.env]
PATH = "/directory/containing/wolframscript:/usr/local/bin:/usr/bin:/bin"

[mcp_servers.sage]
command = "/absolute/path/to/node"
args = ["/absolute/path/to/Note/tools/mcp-servers/mcp-server-sage/build/index.js"]

[mcp_servers.sage.env]
SAGE_COMMAND = "/absolute/path/to/sage"
```

Restart Codex after changing the configuration. Keep API tokens and other credentials only in the untracked local configuration or another secret store.

## Security model

All three tools execute code supplied by the MCP client with the permissions of the local user. They are intended for a trusted, local Codex setup and do not provide a sandbox or authentication boundary.
