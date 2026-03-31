# leadership-skills

Leadership skills and agents marketplace for Claude Code and Claude Cowork.

## Philosophy

These skills and agents are designed to **identify gaps** in your initial thinking — in decisions, plans, and processes.

Use them as a tool to challenge yourself: surface blind spots, stress-test assumptions, and ask the uncomfortable questions before reality does.

## Install

### Claude Code

Add this marketplace:

```shell
/plugin marketplace add pierrickmartos/leadership-skills
```

Then install individual plugins:

```shell
/plugin install <plugin-name>@leadership-skills
```

### Claude Cowork

1. Open **Customize** (bottom-left corner)
2. Go to **Browse plugins** → **Personal** → **+**
3. Select **Add marketplace from GitHub**
4. Enter `pierrickmartos/leadership-skills`

All plugins will be available to install from the marketplace panel.

## Plugins

### `decision-making` — `/plugin install decision-making@leadership-skills`

Skills for stress-testing the decisions that matter — before you commit. Surfaces blind spots, challenges unstated assumptions, and asks the questions you haven't thought to ask yet.

| Skill | Purpose |
|-------|---------|
| `adversarial-review` | Stress-test a strategic choice by attacking it from every angle — assumptions, alternatives, risks, and second-order effects. |

### `communication` — `/plugin install communication@leadership-skills`

Skills for communicating clearly and having the conversations that matter — structuring written messages for impact and navigating difficult face-to-face conversations with directness and care.

| Skill | Purpose |
|-------|---------|
| `bluf-communication` | Rewrite a draft message using BLUF (Bottom Line Up Front) — lead with the conclusion, cut the build-up. |
| `difficult-conversations` | Prepare for a high-stakes conversation — feedback, underperformance, conflict — with structure, clarity, and care. |

## Usage

### Claude Code

Invoke skills directly:

```shell
/<plugin-name>:<skill-name>
```

Browse available plugins and skills with `/help` or `/agents`.

### Claude Cowork

Skills activate automatically when relevant, or invoke them manually by typing `/` or clicking **+** during a Cowork session.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).
