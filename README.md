# leadership-skills

Leadership skills, agents, commands, and hooks marketplace for Claude Code.

## Install

Add this marketplace to Claude Code:

```shell
/plugin marketplace add pierrickmartos/leadership-skills
```

Then install individual plugins:

```shell
/plugin install <plugin-name>@leadership-skills
```

## Plugins

| Plugin | Description | Install |
|--------|-------------|---------|
| `decision-adversarial-review` | Adversarial review for significant strategic decisions — stress-tests choices like hires, launches, and strategy shifts by surfacing blind spots and unstated assumptions. | `/plugin install decision-adversarial-review@leadership-skills` |

## Usage

Once a plugin is installed, invoke its skills directly in Claude Code:

```shell
/<plugin-name>:<skill-name>
```

Browse available plugins and skills with `/help` or `/agents`.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).
