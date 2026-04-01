---
name: update-plugin
description: Update a plugin's README.md and plugin.json after adding new skills or agents. Use when a skill or agent has been added to a domain plugin (e.g. decision-making, communication) and the plugin catalog needs to reflect it.
---

# Update Plugin

After adding a skill or agent to a domain plugin, update its `README.md` skills/agents table and bump the version in `plugin.json`.

## Steps

**1. Identify what was added**

Ask the user (or infer from context):
- Which plugin? (e.g. `decision-making`, `communication`)
- Was a skill or agent added?
- What is its name and directory path?

**2. Read the SKILL.md (or agent) frontmatter**

Read `<plugin>/skills/<skill-name>/SKILL.md` and extract:
- `name` (from frontmatter)
- `description` (from frontmatter) — use only the first sentence, trimmed

**3. Update `<plugin>/README.md`**

Read the current README.

**Update the intro description** (the paragraph below the `# <plugin>` heading): rewrite it to reflect all skills and agents now present in the plugin — not just the one just added. Keep it concise (1–2 sentences), covering the full scope of the plugin.

**Add a row to the relevant table:**

For skills — update or create a `## Skills` section:
```markdown
## Skills

| Skill | Purpose |
|-------|---------|
| `skill-name` | First sentence of the skill description. |
```

For agents — update or create an `## Agents` section:
```markdown
## Agents

| Agent | Purpose |
|-------|---------|
| `agent-name` | First sentence of the agent description. |
```

Keep rows sorted alphabetically by name within each table.

**4. Bump patch version in `<plugin>/.claude-plugin/plugin.json` and `<plugin>/.cursor-plugin/plugin.json`**

Read each file. Increment the patch version (e.g. `1.0.0` → `1.0.1`) to the same new value in both. Write both updated files.

**5. Update top-level `README.md`**

Read `.claude-plugin/marketplace.json` and `.cursor-plugin/marketplace.json` to confirm the plugin is listed. Then read the top-level `README.md`.

Find the plugin's `<details>` dropdown in the `## Plugins` section. Update:
- The **skill count** in the `<summary>` line — count all `skills/*/SKILL.md` files in the plugin directory. Use "1 skill" (singular) when count is 1, "N skills" (plural) otherwise.
- The **description** in the `<summary>` line if the plugin's intro description (from step 3) changed.
- Add the new skill row to the table inside the `<details>` block.

Also update the **total skill count** in the subtitle line (e.g. `11 leadership skills for Claude Code, Cursor, and Claude Cowork.`). Count all `skills/*/SKILL.md` files across all plugin directories to get the new total.

Write the updated `README.md`.

**6. Confirm**

Report:
- Updated intro description
- Which README rows were added
- New version in plugin.json
- Whether top-level README.md was updated
