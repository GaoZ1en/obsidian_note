import fs from "node:fs";
import path from "node:path";

const projectRoot = process.cwd();
const vaultRoot = path.resolve(projectRoot, "../..");
const pluginId = "inline-complete";
const pluginDir = path.join(vaultRoot, ".obsidian", "plugins", pluginId);

fs.mkdirSync(pluginDir, { recursive: true });

for (const file of ["main.js", "manifest.json", "styles.css"]) {
  fs.copyFileSync(path.join(projectRoot, file), path.join(pluginDir, file));
}

const communityPluginsPath = path.join(vaultRoot, ".obsidian", "community-plugins.json");
let enabledPlugins = [];
if (fs.existsSync(communityPluginsPath)) {
  enabledPlugins = JSON.parse(fs.readFileSync(communityPluginsPath, "utf8"));
}

if (!enabledPlugins.includes(pluginId)) {
  enabledPlugins.push(pluginId);
  fs.writeFileSync(communityPluginsPath, `${JSON.stringify(enabledPlugins, null, 2)}\n`);
}

console.log(`Deployed ${pluginId} to ${pluginDir}`);
