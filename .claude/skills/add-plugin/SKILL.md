---
name: add-plugin
description: Add a new plugin entry to the marketplace catalog. Use when registering a new plugin in marketplace.json.
---

Add a new plugin to the marketplace by updating `.claude-plugin/marketplace.json`, `.cursor-plugin/marketplace.json` and `README.md`.

The user will provide: plugin name, source (GitHub repo, relative path, or npm package), and a short description.

Steps:
1. Read `.claude-plugin/marketplace.json`
2. Add a new entry to the `plugins` array with `name`, `source`, and `description`
3. Use kebab-case for the plugin name
4. For GitHub sources use: `{ "source": "github", "repo": "owner/repo" }`
5. For local plugins use a relative path starting with `./`
6. Write the updated `.claude-plugin/marketplace.json`
6b. Read `.cursor-plugin/marketplace.json`. Add the same entry to its `plugins` array. Write the updated `.cursor-plugin/marketplace.json`
7. Read `README.md`
8. Update the README to include a "## Plugins" section (or update the existing one) listing all plugins currently in `marketplace.json`. For each plugin, render a table row or bullet with its name, description, and install command. Place the section after the "## Install" section and before "## Usage". Use this format:

```markdown
## Plugins

| Plugin | Description | Install |
|--------|-------------|---------|
| `plugin-name` | Plugin description | `/plugin install plugin-name@leadership-skills` |
```

9. Write the updated README.md

If $ARGUMENTS is provided, treat it as the plugin name or GitHub repo to add.
