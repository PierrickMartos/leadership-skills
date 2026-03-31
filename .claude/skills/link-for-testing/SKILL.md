---
name: link-for-testing
description: Symlink skills, agents, and hooks from the repo root into .claude/ so they can be tested locally. Run this once after cloning or adding new items to skills/, agents/, or hooks/.
---

# Link for Testing

Symlink everything in `skills/`, `agents/`, and `hooks/` into `.claude/` so Claude Code picks them up for local testing.

## Steps

Run these bash commands from the repo root:

**1. Create target directories if missing:**
```bash
mkdir -p .claude/skills .claude/agents .claude/hooks
```

**2. Symlink each skill:**
For every subdirectory in `skills/`, create a relative symlink in `.claude/skills/`:
```bash
for dir in skills/*/; do
  name=$(basename "$dir")
  target=".claude/skills/$name"
  if [ -L "$target" ]; then
    echo "already linked: $name"
  elif [ -e "$target" ]; then
    echo "skipped (real dir exists): $name"
  else
    ln -s "../../skills/$name" "$target"
    echo "linked skill: $name"
  fi
done
```

**3. Symlink each agent:**
For every file or subdirectory in `agents/`, create a relative symlink in `.claude/agents/`:
```bash
for item in agents/*; do
  [ -e "$item" ] || continue
  name=$(basename "$item")
  target=".claude/agents/$name"
  if [ -L "$target" ]; then
    echo "already linked: $name"
  elif [ -e "$target" ]; then
    echo "skipped (real file exists): $name"
  else
    ln -s "../../agents/$name" "$target"
    echo "linked agent: $name"
  fi
done
```

**4. Symlink hooks.json:**
```bash
if [ -f "hooks/hooks.json" ]; then
  target=".claude/hooks/hooks.json"
  if [ -L "$target" ]; then
    echo "already linked: hooks.json"
  elif [ -e "$target" ]; then
    echo "skipped (real file exists): hooks.json"
  else
    ln -s "../../../hooks/hooks.json" "$target"
    echo "linked hooks.json"
  fi
fi
```

**5. Confirm what was linked:**
```bash
echo "\n--- .claude/skills ---"
ls -la .claude/skills/
echo "\n--- .claude/agents ---"
ls -la .claude/agents/
echo "\n--- .claude/hooks ---"
ls -la .claude/hooks/
```

## Notes

- Symlinks use relative paths so they work after the repo is moved.
- Items already linked or present as real files are skipped safely — re-running is idempotent.
- After linking, restart Claude Code for new skills to appear in the Skill tool.
- To unlink: `rm .claude/skills/<name>` (removes the symlink, not the source).
