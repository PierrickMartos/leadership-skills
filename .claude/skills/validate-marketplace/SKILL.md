---
name: validate-marketplace
description: Validate the marketplace structure and catalog. Use before committing or releasing changes.
---

Validate the marketplace repo by checking:

1. `.claude-plugin/marketplace.json` — valid JSON, required fields (`name`, `owner`, `plugins`), all plugin entries have `name` and `source`
2. Each local plugin source path exists on disk
3. Any `skills/*/SKILL.md` files have valid YAML frontmatter with `name` and `description`
4. Any `agents/*.md` files have valid frontmatter

Report any issues found. If everything looks good, confirm the marketplace is ready to publish.
