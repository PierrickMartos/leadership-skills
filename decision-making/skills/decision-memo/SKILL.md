---
name: decision-memo
description: >
  Structures a decision into a clear, shareable memo — context, options, tradeoffs, recommendation,
  and risk. Use this skill whenever a leader needs to write up a strategic choice before a meeting,
  align stakeholders on a roadmap tradeoff, document an org or process change, or think through
  an architecture vs. delivery tradeoff. Forces explicit assumptions, separates customer value from
  internal convenience, and names what is still unknown. Use proactively — if the user is describing
  a decision they need to make or communicate, offer to structure it as a decision memo even if they
  haven't asked.
---

# Decision Memo

You help leaders write clear, honest decision memos — documents that structure a choice well enough
that someone who wasn't in the room can understand the reasoning and trust the outcome.

A good decision memo isn't a justification. It's a forcing function: it exposes assumptions, names
the tradeoffs, and makes the unknowns visible. It should be uncomfortable to write if the thinking
isn't done yet.

**Be concise.** Bullets over prose. If you're writing paragraphs, cut them in half.

---

## Step 1: Gather context

Ask the user for what you need. You can often infer a lot from their description — only ask for
what's genuinely missing.

1. **What's the decision?** What options are on the table, and what's the default if nothing is decided?
2. **Who is this memo for?** (your own clarity, your team, leadership, a cross-functional group)
3. **What's the forcing event?** What makes this decision timely — a deadline, a dependency, a window that's closing?
4. **What outcome does success look like in 6–12 months?**
5. **What have you already ruled out and why?**

Don't ask all five if the user already gave you most of it. Use judgment.

While gathering context, also scan for signals that cross-functional approvals may be needed —
contracts, vendor spend, security changes, org changes, data handling, etc. You'll surface these
explicitly in the memo under "Approvals Required."

---

## Step 2: Pressure-test the framing

Before writing, check three things:

**Is this actually a decision?** Some memos are written for decisions that are already made — the
author wants endorsement, not input. If that seems to be the case, name it: "This reads like the
decision is already made — do you want a memo that explains the rationale, or one that genuinely
evaluates the options?"

**Are the options real alternatives?** If one option is obviously unserious (e.g., "Option A: do
nothing"), name that and help the user focus on the genuine tradeoffs.

**What's the actual question?** Sometimes the stated decision ("should we rebuild the platform?")
is downstream of a harder one ("do we believe our current architecture can support the next 3 years
of growth?"). Surface the upstream question if it exists.

---

## Step 3: Write the memo

Use this structure. Keep each section tight.

---

### Decision

*One sentence. What choice is being made, by when, and by whom.*

> Example: "Decide by May 1 whether to build native mobile apps or go progressive web app (PWA)
> for the v2 launch, to be confirmed by the product leadership team."

---

### Context

*2–4 bullets. What's the situation? What triggered this? What's at stake if we get it wrong?*

Avoid backstory that doesn't affect the decision. Every sentence should be load-bearing.

---

### Options

For each option (typically 2–3 — if there are more, group or prune):

**Option [Name]**
- What it involves
- Key dependencies or prerequisites
- What we'd need to believe for this to be the right call

If there's a status quo or "do nothing" option that's genuinely viable, include it.

---

### Assumptions

List the assumptions this decision rests on — across all options, not just the recommended one.
Keep it to the 4–6 most consequential. For each:

- **Assumption** — what's being taken as true
- **Confidence** — High / Medium / Low
- **How to test** — one concrete way to validate or falsify it before committing

The goal here is honesty, not completeness. Flag the assumptions that would change the decision if
they turned out to be wrong.

---

### Tradeoffs

A tight comparison table is often clearest:

| | Option A | Option B | Option C |
|---|---|---|---|
| Customer impact | | | |
| Speed | | | |
| Cost / effort | | | |
| Reversibility | | | |
| Risk | | | |

Customize the rows to what actually matters for this decision. Don't include rows that are the same
across all options — those aren't tradeoffs.

**Separate customer value from internal convenience.** If an option is easier for the team but
worse for customers, say so explicitly. This is one of the most common ways decision memos lie by
omission.

---

### What We Don't Know

Be honest about the open questions. This section earns trust — it shows the memo is a real artifact
of thinking, not a post-hoc rationalization.

List 3–5 things that are genuinely unknown and would affect the decision if answered:

- What we don't know
- Why it matters
- Whether it's knowable before we need to decide (and if so, how)

If there's nothing meaningful here, that's a red flag — either the decision is trivial or the
author isn't being honest.

---

### Recommendation

State a clear recommendation. Don't hedge into "it depends" — if it depends, say on what, and give
a conditional recommendation.

- **Recommendation:** [Option name + one-sentence rationale]
- **Why this over the alternatives:** 2–3 bullets, each grounded in the tradeoffs and assumptions above
- **What has to be true for this to work:** The 1–2 non-negotiable conditions for the recommended path to succeed

If you genuinely can't recommend because something critical is unknown, say so and specify what
needs to be resolved first.

---

### Risks

| Risk | Likelihood | Severity | Mitigation |
|------|-----------|----------|------------|
| … | L/M/H | L/M/H | … |

Focus on risks specific to the recommended path. Generic risks ("execution risk", "market risk")
without mitigations are noise. If you can't think of a mitigation, that's a signal worth naming.

---

### Approvals Required *(include whenever the decision touches regulated, sensitive, or cross-functional territory)*

Before this decision can move forward, surface which functions need to weigh in — and whether any
of them have blocking authority (i.e., can veto or must sign off) vs. advisory authority (i.e.,
should be consulted but don't hold a veto).

Scan for these triggers. If any apply, include the relevant function:

| Function | Trigger |
|----------|---------|
| **Legal / Compliance** | Contracts, liability, IP, regulatory obligations, data processing agreements, terms of service changes |
| **Security / InfoSec** | Changes to auth, encryption, data storage, access controls, third-party integrations, vendor onboarding |
| **Finance** | Budget commitments above threshold, new vendor spend, pricing changes, revenue recognition impact |
| **IT / Infrastructure** | New tooling, SaaS procurement, changes to production systems, data residency requirements |
| **HR / People** | Org changes, role eliminations, compensation impacts, performance management decisions |
| **Privacy / DPO** | Personal data handling, consent flows, cross-border data transfers, GDPR/CCPA relevance |
| **Procurement** | New vendor contracts, renewal negotiations, sole-source decisions |

For each function that applies:
- **Involvement type:** Blocking (must approve) or Advisory (must be consulted)
- **What they need to review:** The specific aspect that falls in their domain
- **Timeline:** When their input is needed relative to the decision deadline

If no approvals are needed, say so explicitly — "No cross-functional approvals required" — so the
reader doesn't wonder if this was forgotten.

> Example: "Security must approve the WorkOS vendor onboarding before integration begins. Finance
> must confirm the $1,500/month spend is within the approved vendor budget. Both are advisory to
> the product decision but blocking to execution."

---

### Decision Criteria *(include when the memo will be reviewed by others before deciding)*

If this memo is going to a leadership review or a cross-functional group, add a brief note on:
- Who makes the final call
- What would change the recommendation (e.g., "if the engineering estimate comes in above 6 months,
  we revisit Option B")
- Any non-negotiables (constraints that eliminate options regardless of their merits)

---

### Appendix *(include when supporting detail exists but would bloat the main memo)*

The main memo should be readable in under 5 minutes. If you have material that a reader might want
to dig into — but doesn't need to follow the argument — move it to a numbered appendix and
reference it inline.

**What belongs in an appendix:**
- Full option analysis when there are 4+ options (main memo summarizes the 2–3 live contenders)
- Detailed cost breakdowns or financial models
- Technical architecture comparisons
- Full risk register (when the main memo has more than 6–7 risks)
- Lengthy stakeholder lists or approval workflows
- Background research or market data referenced in the analysis
- Full assumption sets when there are more than 6

**How to reference:** In the main memo body, add a parenthetical — *(see Appendix A)* — wherever
a reader might want more detail.

**Format:**
```
---
## Appendix A: [Title]
[Detail here]

## Appendix B: [Title]
[Detail here]
```

If the full memo is under 2 pages, an appendix is probably unnecessary. Don't add one for the sake
of it — only when something genuinely belongs there.

---

## Tone

- Direct, not diplomatic. A memo that avoids the hard truth isn't useful.
- Tight. If a point can be made in one bullet, don't use three.
- Honest about uncertainty. Confidence you don't have is worse than admitting you don't have it.
- Written for a reader who will push back — assume they'll ask the hard questions.
