import { chmodSync, cpSync, existsSync, mkdirSync, readFileSync, copyFileSync } from "node:fs";
import { dirname, join, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { createRequire } from "node:module";
import { execFileSync } from "node:child_process";

const require = createRequire(import.meta.url);
const scriptPath = fileURLToPath(import.meta.url);
const repoRoot = resolve(dirname(scriptPath), "..");
const vaultPath = process.argv[2] ? resolve(process.argv[2]) : "";

if (!vaultPath) {
  console.error("Usage: npm run install-vault -- <vault-path>");
  process.exit(1);
}

if (!existsSync(vaultPath)) {
  console.error(`Vault path does not exist: ${vaultPath}`);
  process.exit(1);
}

execFileSync(process.execPath, ["esbuild.config.mjs", "production"], {
  cwd: repoRoot,
  stdio: "inherit"
});

const targetDir = join(vaultPath, ".obsidian", "plugins", "miniterm");
mkdirSync(targetDir, { recursive: true });

for (const artifact of ["main.js", "manifest.json", "styles.css"]) {
  copyFileSync(join(repoRoot, artifact), join(targetDir, artifact));
}

copyRuntimePackage("node-pty", targetDir, new Set());
fixNodePtyPermissions(targetDir);

console.log(`MiniTerm installed to ${targetDir}`);

function copyRuntimePackage(packageName, pluginDir, seen) {
  if (seen.has(packageName)) {
    return;
  }

  seen.add(packageName);

  const packageJsonPath = require.resolve(`${packageName}/package.json`);
  const packageRoot = dirname(packageJsonPath);
  const packageJson = JSON.parse(readFileSync(packageJsonPath, "utf8"));
  const targetPackageRoot = join(pluginDir, "node_modules", ...packageName.split("/"));

  if (existsSync(targetPackageRoot)) {
    return;
  }

  cpSync(packageRoot, targetPackageRoot, {
    recursive: true,
    force: true,
    filter: (sourcePath) => !sourcePath.includes(`${packageRoot}/.git`)
  });

  for (const dependencyName of Object.keys(packageJson.dependencies ?? {})) {
    copyRuntimePackage(dependencyName, pluginDir, seen);
  }
}

function fixNodePtyPermissions(pluginDir) {
  for (const arch of ["darwin-arm64", "darwin-x64"]) {
    const helperPath = join(pluginDir, "node_modules", "node-pty", "prebuilds", arch, "spawn-helper");
    if (existsSync(helperPath)) {
      chmodSync(helperPath, 0o755);
    }
  }
}
