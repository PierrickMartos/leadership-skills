# Leadership Skills

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

### Cursor

Add this marketplace:

```
Ctrl+Shift+P → Cursor: Add Plugin Marketplace → pierrickmartos/leadership-skills
```

Then install individual plugins from the Cursor marketplace panel.

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
| `decision-memo` | Structure a strategic decision into a clear, shareable memo — context, options, tradeoffs, recommendation, and risk. |

### `communication` — `/plugin install communication@leadership-skills`

Skills for communicating clearly and having the conversations that matter — structuring written messages for impact, escalating problems without creating drama, and navigating difficult face-to-face conversations with directness and care.

| Skill | Purpose |
|-------|---------|
| `bluf-communication` | Rewrite a draft message using BLUF (Bottom Line Up Front) — lead with the conclusion, cut the build-up. |
| `difficult-conversations` | Prepare for a high-stakes conversation — feedback, underperformance, conflict — with structure, clarity, and care. |
| `escalate-without-drama` | Escalate a blocker, ownership gap, or stalled dependency firmly and professionally — without blame or politics. |
| `reframe-for-execs` | Compress and reframe a detailed draft into a crisp executive-ready message — for VPs, steering committees, or the C-suite. |

### `hiring` — `/plugin install hiring@leadership-skills`

Skills for making better hiring decisions — structuring interviews, screening candidates, and building evidence-based evaluation processes.

| Skill | Purpose |
|-------|---------|
| `screen-candidate-for-hm-call` | Screen a candidate before a hiring manager call — structured evaluation of fit, risks, and talking points. |

### `performance-management` — `/plugin install performance-management@leadership-skills`

Performance management skills for leaders — writing fact-based reviews, preparing for calibration, assessing career growth, and helping ICs write compelling self-reviews. Grounded in best practices with embedded bias checks.

| Skill | Purpose |
|-------|---------|
| `write-performance-review` | Write a comprehensive, evidence-based performance review — strengths-first, anchored on goals, with bias checks. |
| `write-self-review` | Help an IC write a compelling self-review that prepares them for a two-way performance conversation. |
| `assess-career-growth` | Map demonstrated behaviors against a career/competency framework to identify strengths, gaps, and development priorities. |
| `calibrate-talent` | Prepare calibration ratings (performance × potential) with evidence-backed notes and talking points for a calibration meeting. |

## Usage

### Claude Code

Invoke skills directly:

```shell
/<plugin-name>:<skill-name>
```

Browse available plugins and skills with `/help`, `/skills` or `/agents`.

**Examples:**

```
/decision-making:adversarial-review

We're planning to migrate our monolith to microservices over the next 6 months.
The goal is to scale teams independently and reduce deployment coupling.
We have 12 engineers, moderate test coverage, and no prior distributed systems experience.
```

```
/communication:difficult-conversations

I need to talk to a senior engineer who's been missing deadlines and becoming
defensive in code reviews. The team is frustrated. I've avoided the conversation for 2 weeks.
```

```
/communication:bluf-communication

Hi team, I wanted to share some thoughts on the Q2 roadmap. As you know, we've
been discussing priorities across several planning sessions and after aligning
with stakeholders I think it's important that we... [long draft]
```

### Claude Cowork

Skills activate automatically when relevant, or invoke them manually by typing `/` or clicking **+** during a Cowork session.

## Thank You

Thanks to the following contributors for their input and support:

- [@ChuckJHardy](https://github.com/ChuckJHardy)
- [@pchasle](https://github.com/pchasle)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).
