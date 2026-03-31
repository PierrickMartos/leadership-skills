---
name: link-for-testing
description: Symlink skills and agents from each domain plugin into .claude/ so they can be tested locally. Run this once after cloning or adding new plugins, skills, or agents.
---

# Link for Testing

Each domain plugin lives at the repo root (e.g. `decision-making/`, `communication/`) and
contains `skills/` and `agents/` subfolders. This skill symlinks their contents into `.claude/`
so Claude Code picks them up for local testing.

## Steps

Run these bash commands from the repo root:

**1. Create target directories if missing:**
```bash
mkdir -p .claude/skills .claude/agents
```

**2. Symlink each skill across all plugins:**
For every plugin at the repo root, symlink each skill into `.claude/skills/` with the plugin name prepended (e.g. `communication-bluf-communication`):
```bash
for plugin_dir in */; do
  [ -d "${plugin_dir}skills" ] || continue
  plugin=$(basename "$plugin_dir")
  for skill_dir in "${plugin_dir}skills/"/*/; do
    [ -d "$skill_dir" ] || continue
    name=$(basename "$skill_dir")
    target=".claude/skills/${plugin}-${name}"
    if [ -L "$target" ]; then
      echo "already linked: ${plugin}-${name}"
    elif [ -e "$target" ]; then
      echo "skipped (real dir exists): ${plugin}-${name}"
    else
      ln -s "../../${plugin_dir}skills/$name" "$target"
      echo "linked skill: ${plugin}-${name}"
    fi
  done
done
```

**3. Symlink each agent across all plugins:**
For every plugin at the repo root, symlink each agent in `<plugin>/agents/` into `.claude/agents/`:
```bash
for plugin_dir in */; do
  [ -d "${plugin_dir}agents" ] || continue
  plugin=$(basename "$plugin_dir")
  for item in "${plugin_dir}agents/"*; do
    [ -e "$item" ] || continue
    name=$(basename "$item")
    target=".claude/agents/$name"
    if [ -L "$target" ]; then
      echo "already linked: $name"
    elif [ -e "$target" ]; then
      echo "skipped (real file exists): $name"
    else
      ln -s "../../${plugin_dir}agents/$name" "$target"
      echo "linked agent: $name (from $plugin)"
    fi
  done
done
```

**4. Remove stale symlinks (source no longer exists):**
For skills:
```bash
for link in .claude/skills/*/; do
  name=$(basename "$link")
  target=".claude/skills/$name"
  if [ -L "$target" ] && [ ! -e "$target" ]; then
    rm "$target"
    echo "removed stale skill symlink: $name"
  fi
done
```

For agents:
```bash
for link in .claude/agents/*; do
  name=$(basename "$link")
  if [ -L ".claude/agents/$name" ] && [ ! -e ".claude/agents/$name" ]; then
    rm ".claude/agents/$name"
    echo "removed stale agent symlink: $name"
  fi
done
```

**5. Confirm what was linked:**
```bash
echo "\n--- .claude/skills ---"
ls -la .claude/skills/
echo "\n--- .claude/agents ---"
ls -la .claude/agents/
```

## Notes

- Symlinks use relative paths so they work after the repo is moved.
- Items already linked or present as real files are skipped safely — re-running is idempotent.
- After linking, restart Claude Code for new skills to appear in the Skill tool.
- To unlink: `rm .claude/skills/<plugin>-<name>` (removes the symlink, not the source).
