# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

A Claude Code plugin marketplace for leadership-oriented skills, agents, commands, and hooks.

## Structure

This repo is a Claude Code **marketplace** (not a plugin itself). It catalogs leadership skill plugins for distribution.

```
.claude-plugin/
└── marketplace.json    # Marketplace catalog (name, owner, plugins list)
.mcp.json               # MCP server definitions
agents/                 # Agent definitions
skills/                 # Agent skills — each subfolder has a SKILL.md
hooks/
└── hooks.json          # Event handlers (PostToolUse, PreToolUse, etc.)
docs/                   # Documentation
```

## Key Conventions

- **Marketplace catalog**: `marketplace.json` lists plugins with their `source` (relative path, GitHub repo, npm, etc.). Add new plugins to the `plugins[]` array.
- **Skills**: Each skill lives in `skills/<skill-name>/SKILL.md` with YAML frontmatter (`name`, `description`) and instructions in the body.
- **Agents**: Markdown files in `agents/` with frontmatter (`name`, `description`, `model`, etc.).
- **Hooks**: All hook definitions are in `hooks/hooks.json` using `{ "hooks": { "<event>": [...] } }`.

## Testing Locally

```bash
/plugin marketplace add ./path/to/this/repo
```
