# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

A Claude Code plugin marketplace for leadership-oriented skills and agents.

## Structure

This repo is a Claude Code **marketplace** (not a plugin itself). It catalogs leadership skill plugins for distribution.

```
.claude-plugin/
└── marketplace.json    # Marketplace catalog (name, owner, plugins list)
.mcp.json               # MCP server definitions
<plugin-name>/          # One folder per domain plugin (e.g. decision-making, communication)
├── .claude-plugin/
│   └── plugin.json     # Plugin metadata (name, description, version)
├── skills/             # Skills — each subfolder has a SKILL.md
├── agents/             # Agent definitions (future)
└── commands/           # Slash commands (future)
docs/                   # Documentation
```

## Key Conventions

- **Marketplace catalog**: `marketplace.json` lists plugins with their `source` (relative path, GitHub repo, npm, etc.). Add new plugins to the `plugins[]` array.
- **Plugins**: Each domain plugin lives at the repo root (e.g. `decision-making/`, `communication/`) with a `.claude-plugin/plugin.json` and subfolders for skills, agents, commands, etc.
- **Skills**: Each skill lives in `<plugin>/skills/<skill-name>/SKILL.md` with YAML frontmatter (`name`, `description`) and instructions in the body.
- **Agents**: Markdown files in `<plugin>/agents/` with frontmatter (`name`, `description`, `model`, etc.).

## Testing Locally

```bash
/plugin marketplace add ./path/to/this/repo
```
