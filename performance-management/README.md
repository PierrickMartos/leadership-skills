# Performance Management

Performance management skills for leaders — writing fact-based reviews, preparing for calibration, assessing career growth, and helping ICs write compelling self-reviews. Grounded in best practices from Dick Grote's *How to Be Good at Performance Appraisals* with embedded bias checks.

## Install

```shell
/plugin install performance-management@leadership-skills
```

## Skills

| Skill | Purpose |
|-------|---------|
| `write-performance-review` | Write a comprehensive, evidence-based performance review for a direct report — strengths-first, anchored on goals, with bias checks. |
| `write-self-review` | Help an IC write a compelling self-review that prepares them for a two-way performance conversation. |
| `assess-career-growth` | Map demonstrated behaviors against a career/competency framework to identify strengths, gaps, and development priorities. |
| `calibrate-talent` | Prepare calibration ratings (performance × potential) with evidence-backed notes and talking points for a calibration meeting. |

## How to use

### Writing a performance review (manager)

```
/performance-management:write-performance-review

I need to write the year-end review for Sarah, a Senior Engineer on my team.
I have her self-review, our 1:1 notes, and peer feedback from 3 teammates.
Our review period is H2 2025. We use a 3-level rating scale (Exceeds / Meets / Below).
```

The skill will ask for your company's career framework, gather all source documents, cross-reference them, and produce a strengths-first review with a bias check before finalizing.

**Tip:** Point to files on your filesystem — the skill can read 1:1 notes, self-reviews, and peer feedback directly.

### Writing a self-review (IC)

```
/performance-management:write-self-review

I need to write my self-review for 2025. I'm a Product Designer III.
My main projects were the onboarding redesign and the design system migration.
I have my project notes and some Slack messages with feedback from engineers.
```

The skill coaches you on common pitfalls (underselling, overselling, vagueness), then builds a self-review anchored on your goals. It adapts to your company's template if you provide one.

### Assessing career growth

```
/performance-management:assess-career-growth

I want to evaluate where Alex stands against our engineering career ladder.
He's currently an Engineer (IC2) and we're considering him for Senior.
I'll share our career framework and his recent performance review.
```

Works for review prep, promotion cases, development plans, or mid-cycle check-ins. Bring your own competency framework or use the general fallback.

### Preparing for a calibration meeting

```
/performance-management:calibrate-talent

I need to prepare calibration ratings for my 5 direct reports.
We use a 9-box grid. I have performance reviews for all of them.
Our company values are: Customer First, Ownership, Craft, Collaboration.
```

Produces evidence-backed calibration cards for each person, a team grid visualization, and talking points for defending your ratings in the meeting. Checks for central tendency and contrasting bias across the full team.

## Principles

These skills are built on a few core ideas:

- **Start from the job, not the person.** Anchor every evaluation on role expectations and goals — not personality.
- **Strengths-first.** Most employees are good solid workers. Lead with what they accomplished.
- **Behavior-based.** Tie everything to observable actions and outcomes, never personality traits.
- **Bias-aware.** Every assessment includes checks for recency, horns/halo, similarity, central tendency, contrasting, and strictness/leniency bias.
- **Development-linked.** Every review produces 1-3 concrete development actions — not just a verdict.
- **Bring your own framework.** Works with any company's career ladder, values, and rating scale.
