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
8. Update the README `## Plugins` section (or create it after `## Install` and before `## Usage`). Each plugin is rendered as a `<details>` dropdown. Count the number of `skills/*/SKILL.md` files in the plugin directory to determine the skill count. Use this format:

```markdown
<details>
<summary><strong><code>plugin-name</code></strong> (N skills) — Short plugin description.</summary>

Claude Code: `/plugin install plugin-name@leadership-skills`

| Skill | Purpose |
|-------|---------|
| `skill-name` | Skill description. |

</details>
```

Use "1 skill" (singular) when count is 1, "N skills" (plural) otherwise. If the plugin has no skills yet, use "(0 skills)".

9. Update the **total skill count** in the subtitle line (e.g. `11 leadership skills for Claude Code, Cursor, and Claude Cowork.`). Count all `skills/*/SKILL.md` files across all plugin directories to get the new total.
10. Write the updated README.md

If $ARGUMENTS is provided, treat it as the plugin name or GitHub repo to add.
