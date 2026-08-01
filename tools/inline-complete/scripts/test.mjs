import { spawnSync } from "node:child_process";
import { mkdtemp, rm } from "node:fs/promises";
import os from "node:os";
import path from "node:path";
import { pathToFileURL } from "node:url";
import { build } from "esbuild";

const projectRoot = path.resolve(import.meta.dirname, "..");
const temporaryDirectory = await mkdtemp(path.join(os.tmpdir(), "inline-complete-tests-"));
const bundlePath = path.join(temporaryDirectory, "tests.mjs");

try {
  await build({
    stdin: {
      contents: [
        'import "./test/context.test.mjs";',
        'import "./test/cleanCompletion.test.mjs";'
      ].join("\n"),
      resolveDir: projectRoot,
      sourcefile: "tests.mjs"
    },
    bundle: true,
    format: "esm",
    platform: "node",
    outfile: bundlePath,
    logLevel: "silent"
  });

  const result = spawnSync(process.execPath, ["--test", pathToFileURL(bundlePath).pathname], {
    stdio: "inherit"
  });
  if (result.error) {
    throw result.error;
  }
  process.exitCode = result.status ?? 1;
} finally {
  await rm(temporaryDirectory, { recursive: true, force: true });
}
