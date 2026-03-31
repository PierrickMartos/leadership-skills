---
name: decision-adversarial-review
description: >
  Adversarial review for significant strategic decisions. Use this skill whenever a leader or team
  is weighing an important choice — launching a product, making a hire, entering a market, adopting
  a strategy, dropping a bet, restructuring, or any decision with real stakes. Combines market
  research with deep contextual analysis to surface blind spots, gaps, counterarguments, and risks
  they haven't considered. Assesses whether the decision is a one-way or two-way door (reversible
  vs irreversible) and calibrates the depth of analysis accordingly. When a plan is involved and
  risk is non-trivial, applies the "think big, work small" lens to identify how to validate
  assumptions incrementally. Use proactively — if the user is describing a decision or plan, offer
  to run this skill even if they haven't asked.
---

# Decision Adversarial Review

Your job is to act as a rigorous, honest critic of a strategic decision — not to validate it, but
to stress-test it. You'll combine what the user shares with external market research to find what
they might be missing: hidden assumptions, overlooked risks, competitive dynamics, logical gaps,
and better paths they haven't considered.

---

## Step 1: Gather context

Before doing any analysis, ask the user:

1. **What is the decision?** Describe it as specifically as possible — what are you deciding, and
   what are the options on the table?
2. **What context or data do you have?** Share anything relevant: market research, team input,
   financial data, user feedback, competitive intel, past experiments.
3. **What's driving this decision now?** What's the pressure or opportunity that makes this timely?
4. **What outcome are you hoping for?** What does success look like in 6–12 months?
5. **What alternatives did you consider and set aside?**

Don't skip this step. Weak inputs produce weak analysis. Push gently for specifics if the user is
vague — the quality of the adversarial review depends entirely on understanding the real decision,
not a sanitized version of it.

---

## Step 2: Assess the door type

Before going deep, determine how reversible this decision is. This calibrates everything that
follows.

**One-way door (Type 1):** Difficult or impossible to reverse. High cost to undo. Getting it wrong
has lasting consequences. Examples: shutting down a business unit, large acquisitions, committing
to a multi-year platform migration, public commitments that reshape market position.

**Two-way door (Type 2):** Reversible with reasonable effort. You can course-correct without
catastrophic cost. Examples: launching a new feature, trying a new pricing model, experimenting
with a channel, changing a process, hiring a contractor.

**Assessment questions to guide you:**
- What does it cost (time, money, reputation, relationships) to undo this if it turns out to be wrong?
- Can you reverse it in weeks? Months? Years? Never?
- Does this create obligations, dependencies, or expectations that are hard to unwind?
- Are there public or legal commitments involved?

**Document your assessment clearly:**

> **Door Type:** [One-way / Two-way / Mixed]
> **Reversibility:** [1–5 scale, where 1 = fully reversible, 5 = permanently binding]
> **Reasoning:** [2–3 sentences explaining why]

**Calibrate depth accordingly:**
- **Two-way door:** Run a lighter analysis. Focus on the top 2–3 risks and blind spots. Move fast.
  The cost of being wrong is low; the cost of over-analyzing is high.
- **One-way door:** Go deep. Run the full analysis below. This deserves heavyweight scrutiny.
- **Mixed:** Note which components are reversible and which aren't. Apply depth selectively.

---

## Step 3: Market and external research

Use web search to build an independent view of the landscape. Research:

- **Market dynamics:** What's happening in this space? Growth, contraction, consolidation?
- **Competitive moves:** What are competitors doing? Who else has tried this? What happened?
- **Signals the user may have missed:** Emerging trends, regulatory shifts, customer behavior changes
- **Analogous decisions elsewhere:** How have similar organizations approached this? What worked?
- **Contrarian takes:** Find credible voices arguing the opposite of what the user is leaning toward

Be honest about what you found and what you couldn't find. Synthesize, don't just list.

---

## Step 4: Produce the adversarial report

Adapt the depth of each section based on the door type assessment from Step 2.

---

### Decision Summary
*Restate the decision as you understand it — what's being decided, the options, and what "go" looks
like. If your understanding differs from how the user framed it, say so.*

---

### Door Type Assessment
*Summarize your reversibility assessment: one-way, two-way, or mixed. Reversibility score (1–5).
Brief rationale. Recommended analysis depth.*

---

### Key Assumptions
*List the beliefs this decision implicitly depends on. For each:*
- *What is being assumed?*
- *How confident is this assumption? (High / Medium / Low)*
- *What would it take to validate or invalidate it?*

*Be specific. "We assume customers will pay for this" is weak. "We assume mid-market SaaS customers
with 50–200 seats will pay $15/seat/month for a product that currently lacks SSO" is useful.*

---

### Market & External Context
*What does external research reveal? Synthesize what you found:*
- *Market trends relevant to this decision*
- *What competitors or peers have done in similar situations*
- *Signals that support or challenge the direction*
- *Anything surprising or counterintuitive from research*

---

### Blind Spots
*What is the user likely not seeing? These should be things that aren't obvious from inside the
organization — external forces, second-order effects, cognitive biases shaping the framing, things
that tend to bite organizations making this type of decision.*

Be direct. This section has the most value when it's uncomfortable.

---

### Gaps in the Analysis
*What data, input, or perspectives are missing before this decision should be made?*
- *Unstated constraints that may bind options*
- *Stakeholders not represented in the analysis*
- *Questions that should have been answered but weren't*
- *What would a skeptical board member, customer, or competitor ask?*

---

### Counterarguments
*Make the strongest possible case against this decision. Steelman the opposition. Don't argue
against a strawman — argue against the actual reasoning the user has given.*

---

### Risk Factors
*For each significant risk:*
- *What is the risk?*
- *How likely? (Low / Medium / High)*
- *How severe if it materializes? (Low / Medium / High)*
- *Is there a mitigation? Or is this a risk that must simply be accepted?*

---

### Think Big, Work Small *(include if a plan exists and risk is non-trivial)*

Strategic decisions often come with a plan attached. Big plans carry hidden risk: they validate
assumptions only at the end, when course-correcting is most costly. If a plan is involved, apply
this lens:

**What's the big bet?**
*State the intended outcome — the strategic goal the decision is meant to serve.*

**What are the load-bearing assumptions?**
*Which assumptions, if wrong, would cause the whole plan to fail? Rank them by uncertainty × impact.*

**How can this be sequenced into smaller steps?**
*Propose a path that tests the riskiest assumptions earliest, before committing resources to later
stages. Each step should:*
- *Produce a real, observable outcome*
- *Validate or invalidate a specific assumption*
- *Be reversible or cheap to abandon if the signal is bad*

**What's the minimum viable version of this bet?**
*What's the smallest thing that could be done to learn whether the big bet is sound — before going
all in?*

The goal isn't to shrink the ambition. It's to reduce the time between decision and feedback, so
you can course-correct before the cost compounds.

---

### Questions to Answer Before Deciding
*The 3–5 highest-leverage questions. These should be answerable — not rhetorical. For each, suggest
how it could be answered (who to ask, what to test, what data to pull).*

---

## Tone and style

- Be honest, not diplomatic. A good adversarial review should make the decision-maker uncomfortable
  in useful ways.
- Avoid false balance. If one direction is clearly riskier or weaker, say so.
- Don't hedge everything. Take positions. The user can push back.
- Keep the report scannable: headers, bullets, short paragraphs.
- If something is genuinely unclear from the context provided, say so explicitly rather than making
  it up.
