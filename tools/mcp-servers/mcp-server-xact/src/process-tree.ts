import { spawn, type ChildProcess, type SpawnOptions } from "node:child_process";

const DEFAULT_KILL_GRACE_MS = 1000;

export type ProcessFailureKind = "aborted" | "exit" | "maxBuffer" | "timeout";

export class ProcessTreeError extends Error {
  constructor(
    message: string,
    readonly kind: ProcessFailureKind,
    readonly stdout: string,
    readonly stderr: string,
  ) {
    super(message);
    this.name = "ProcessTreeError";
  }
}

export type RunProcessTreeOptions = {
  signal?: AbortSignal;
  timeoutMs: number;
  maxBuffer: number;
  killGraceMs?: number;
  cwd?: string;
  env?: NodeJS.ProcessEnv;
};

export type ProcessTreeResult = {
  stdout: string;
  stderr: string;
};

const activeChildren = new Set<ChildProcess>();
const activeClosePromises = new Map<ChildProcess, Promise<void>>();

function isNoSuchProcess(error: unknown): boolean {
  return error instanceof Error && "code" in error && error.code === "ESRCH";
}

function signalProcessTree(child: ChildProcess, signal: NodeJS.Signals): void {
  if (child.pid === undefined || child.exitCode !== null || child.signalCode !== null) {
    return;
  }

  try {
    if (process.platform === "win32") {
      child.kill(signal);
    } else {
      process.kill(-child.pid, signal);
    }
  } catch (error) {
    if (!isNoSuchProcess(error)) {
      throw error;
    }
  }
}

function delay(milliseconds: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, milliseconds));
}

export function activeProcessTreeCount(): number {
  return activeChildren.size;
}

export async function terminateAllProcessTrees(
  killGraceMs = DEFAULT_KILL_GRACE_MS,
): Promise<void> {
  const children = [...activeChildren];
  if (children.length === 0) {
    return;
  }

  for (const child of children) {
    signalProcessTree(child, "SIGTERM");
  }

  const closePromises = children.map(
    (child) => activeClosePromises.get(child) ?? Promise.resolve(),
  );
  await Promise.race([Promise.all(closePromises), delay(killGraceMs)]);

  for (const child of children) {
    signalProcessTree(child, "SIGKILL");
  }

  await Promise.race([Promise.all(closePromises), delay(killGraceMs)]);
}

export function runProcessTree(
  command: string,
  args: string[],
  options: RunProcessTreeOptions,
): Promise<ProcessTreeResult> {
  if (options.signal?.aborted) {
    return Promise.reject(
      new ProcessTreeError("Process execution was cancelled before launch.", "aborted", "", ""),
    );
  }

  return new Promise((resolve, reject) => {
    const spawnOptions: SpawnOptions = {
      cwd: options.cwd,
      env: options.env,
      detached: process.platform !== "win32",
      stdio: ["ignore", "pipe", "pipe"],
      windowsHide: true,
    };
    const child = spawn(command, args, spawnOptions);
    const stdoutChunks: Buffer[] = [];
    const stderrChunks: Buffer[] = [];
    let stdoutBytes = 0;
    let stderrBytes = 0;
    let settled = false;
    let timeout: NodeJS.Timeout | undefined;
    let forceKillTimeout: NodeJS.Timeout | undefined;
    let termination: { kind: ProcessFailureKind; message: string } | undefined;
    let resolveClose: (() => void) | undefined;

    const stdoutText = () => Buffer.concat(stdoutChunks).toString("utf8");
    const stderrText = () => Buffer.concat(stderrChunks).toString("utf8");

    const unregister = () => {
      if (timeout !== undefined) {
        clearTimeout(timeout);
      }
      if (forceKillTimeout !== undefined) {
        clearTimeout(forceKillTimeout);
      }
      options.signal?.removeEventListener("abort", abortHandler);
      activeChildren.delete(child);
      activeClosePromises.delete(child);
      resolveClose?.();
    };

    const requestTermination = (kind: ProcessFailureKind, message: string) => {
      if (termination !== undefined || child.exitCode !== null || child.signalCode !== null) {
        return;
      }

      termination = { kind, message };
      signalProcessTree(child, "SIGTERM");
      forceKillTimeout = setTimeout(() => {
        signalProcessTree(child, "SIGKILL");
      }, options.killGraceMs ?? DEFAULT_KILL_GRACE_MS);
    };

    const abortHandler = () => {
      requestTermination("aborted", "Process execution was cancelled by the MCP client.");
    };

    const collect = (stream: "stdout" | "stderr", chunk: Buffer) => {
      if (stream === "stdout") {
        stdoutBytes += chunk.length;
        if (stdoutBytes <= options.maxBuffer) {
          stdoutChunks.push(chunk);
        }
      } else {
        stderrBytes += chunk.length;
        if (stderrBytes <= options.maxBuffer) {
          stderrChunks.push(chunk);
        }
      }

      if (stdoutBytes > options.maxBuffer || stderrBytes > options.maxBuffer) {
        requestTermination(
          "maxBuffer",
          `Process output exceeded the ${options.maxBuffer}-byte buffer limit.`,
        );
      }
    };

    child.stdout?.on("data", (chunk: Buffer) => collect("stdout", chunk));
    child.stderr?.on("data", (chunk: Buffer) => collect("stderr", chunk));

    child.once("spawn", () => {
      activeChildren.add(child);
      activeClosePromises.set(
        child,
        new Promise<void>((closeResolve) => {
          resolveClose = closeResolve;
        }),
      );
      options.signal?.addEventListener("abort", abortHandler, { once: true });
      if (options.signal?.aborted) {
        abortHandler();
      }
      timeout = setTimeout(() => {
        requestTermination(
          "timeout",
          `Process execution timed out after ${options.timeoutMs} ms.`,
        );
      }, options.timeoutMs);
    });

    child.once("error", (error) => {
      if (settled) {
        return;
      }
      settled = true;
      unregister();
      reject(
        new ProcessTreeError(
          `Unable to start ${command}: ${error.message}`,
          "exit",
          stdoutText(),
          stderrText(),
        ),
      );
    });

    child.once("close", (code, signal) => {
      if (settled) {
        return;
      }
      settled = true;
      unregister();

      const stdout = stdoutText();
      const stderr = stderrText();
      if (termination !== undefined) {
        reject(new ProcessTreeError(termination.message, termination.kind, stdout, stderr));
      } else if (code !== 0) {
        reject(
          new ProcessTreeError(
            `${command} exited with code ${code ?? "null"} and signal ${signal ?? "none"}.`,
            "exit",
            stdout,
            stderr,
          ),
        );
      } else {
        resolve({ stdout, stderr });
      }
    });
  });
}
