---
name: escalate-without-drama
description: >
  Helps you escalate a problem — something off track, a blocked dependency, unclear ownership,
  or a team that isn't moving — without sounding political, blamey, or alarmist. Use this skill
  whenever you need to push firmly but professionally: when something is stuck and waiting longer
  will make it worse, when you need to surface a risk to leadership, or when you've tried the
  direct path and it hasn't worked. Trigger proactively if a user says things like "I need to
  escalate this", "how do I bring this up without sounding like I'm throwing people under the
  bus", "we're blocked and I don't know who owns this", "I need to escalate to my manager",
  "I can't keep waiting on this", "another team is holding us up", "I need to push on this
  without creating drama", or describes a situation where progress is stalled.
---

# Escalate Without Drama

Your job is to help the user surface a real problem to the right person — clearly, urgently,
and without creating unnecessary friction. Escalation done well moves things forward. Done
poorly, it burns trust and puts people on the defensive.

The key tension: you need to be firm enough that the problem gets taken seriously, but not
so charged that it triggers a political battle instead of a solution.

---

## Step 1: Understand the situation

Before drafting anything, make sure you understand what's actually going on. Ask only what
you don't already know from context — don't interrogate when the user has already given you
the picture.

1. **What is stuck, broken, or at risk?** The specific situation — not a general complaint.
2. **What's the impact if this isn't resolved?** A deadline slipping? A team blocked? A customer
   affected? Escalation without impact is just noise.
3. **Who owns the problem, and who are you escalating to?** Same person? Different people?
4. **What have you already tried?** Have you raised it directly? Sent a message? Had a meeting?
   Escalation means something different if you've already attempted a direct path.
5. **What do you need to happen?** A decision? An owner? Someone to unblock a dependency? A
   clear timeline? Knowing the ask makes the escalation actionable.
6. **What's your relationship to this situation?** Are you the DRI? A stakeholder? An IC
   escalating up? This shapes tone and authority.

You don't always need all of this. Use judgment. If the user gave you a clear picture, move
to drafting — don't ask for information they've already provided.

---

## Step 2: Diagnose the escalation

Before drafting, identify what kind of escalation this is:

**Ownership gap** — Nobody has formally taken responsibility. The problem exists in the space
between teams or functions. The escalation's job is to get someone to claim it.

**Dependency block** — Another team isn't moving fast enough, or a decision hasn't been made
that yours is waiting on. The escalation's job is to create urgency or get the dependency
unstuck.

**Risk flag** — Something is off track and leadership doesn't know yet. The escalation's job
is to surface it before it's too late to do anything about it.

**Decision request** — You've reached a fork and can't move forward without a call from
someone above you. The escalation's job is to frame the decision clearly and get a response.

The type shapes the output. An ownership gap needs different language than a dependency block.

---

## Step 3: Draft the escalation

A good escalation has five elements. Not all five need to be long — most should be one or
two sentences.

### 1. State the situation plainly
Describe what's happening in neutral, factual terms. No drama, no adjectives, no implication
about intent. Avoid words like "failed", "ignored", "dropped the ball", or "nobody cares".
> "We are two weeks from launch and the authentication service API contract hasn't been
> finalized. We've been waiting on the Platform team since March 4."

The person reading this should be able to understand the facts without needing to take a side.

### 2. State the impact
Connect the situation to something that matters — a deadline, a customer, revenue, team
capacity, a commitment already made. Without this, escalation is just a complaint.
> "If the contract isn't finalized by Thursday, we can't complete integration testing, and
> the March 20 launch date becomes at risk."

Be specific. "This is bad" is not impact. "We miss the Q1 commitment" is impact.

### 3. Say what you've already done
This signals good faith — you didn't jump straight to escalation. It also gives the reader
context on why you're bringing it to them now, and prevents the "have you talked to them
directly?" response.
> "I've followed up with Rami twice this week and pinged in #platform-eng. Last response was
> Monday saying they'd get back to me by EOD Tuesday."

Keep it brief. The point is to show you've tried, not to build a case.

### 4. State what you need
Make the ask explicit. This is what separates escalation from venting. The reader should know
exactly what you want from them.
> "I need either a confirmed owner who can commit to Thursday delivery, or a decision on
> whether to descope the feature."

Offer options where possible. A binary "fix this or else" is harder to act on than "here are
two paths forward — I need you to pick one."

### 5. Propose a next step
Don't leave the reader wondering what happens now. Give them something concrete to react to.
> "I've blocked time Thursday at 2pm for a sync with Platform if that helps. Can you help
> loop in their lead?"

Or simply: "Happy to jump on a call today if useful."

---

## Step 4: Calibrate the tone

Escalation has a tone dial from "gentle nudge" to "this is critical". Most escalations
should be closer to the middle — firm and clear, not alarmed or accusatory.

**Avoid:**
- Blaming language: "X has been unresponsive", "the Platform team keeps dropping this"
- Emotional language: "I'm frustrated", "nobody seems to care about this"
- Hedging that dilutes urgency: "I don't want to make a big deal of this but..."
- Passive requests: "It would be great if someone could look into this"
- Jargon or corporate softening: "synergize", "circle back", "take offline"

**Use instead:**
- Facts with dates: "Since March 4", "three attempts", "launch is March 20"
- Impact tied to something concrete: "launch risk", "blocked for 5 days", "customer delivery"
- Ownership requests, not blame assignments: "I need an owner" not "they're dropping the ball"
- Active voice: "We need a decision by Thursday" not "A decision needs to be made"

---

## Step 5: Choose the medium

The medium matters for how the escalation lands.

**Slack DM or email** — Good for situations where you want a paper trail, the recipient is
remote, or you're escalating across organizational boundaries. Write it as if someone else
might read it, because they often will.

**Slack message in a shared channel** — Only when visibility is part of the point (e.g., an
owner hasn't claimed something and you're making the gap public). Use carefully — public
escalation can feel like calling someone out.

**A quick call or meeting** — Best for complex or emotionally sensitive escalations where
nuance matters. If you're going to write a message, consider whether a 10-minute call would
land better.

If the user hasn't specified, ask, or suggest based on what they've described.

---

## Output format

Produce a ready-to-send draft — not an outline, not a template with placeholders, not bullet
points. Write it as actual text the user can copy and use.

**Apply BLUF (Bottom Line Up Front):** The first sentence of the draft should state the
situation and why it matters — not preamble, not context-setting, not "I wanted to reach
out because...". The reader should understand what's happening and why it's urgent before
they've finished the first paragraph. If the ask is buried past the second paragraph, the
escalation will land as noise.

Quick BLUF check before finalizing: Does the opening sentence carry the weight of the
message? If you removed everything after the first paragraph, would the recipient know
what's happening, why it matters, and what you need?

Structure:

---

**Draft escalation** *(for [medium] to [recipient])*

[The message]

---

**Notes**
- [One or two observations about tone or choices made — only if useful, keep it short]
- [What to watch for or adjust based on relationship context, if relevant]

---

If the user wants to change the medium, audience, or tone — make it easy to adjust. Offer a
quick revision if you sense the first draft isn't quite right for how they described the
relationship.

---

## Tone and style

- Be concrete. The escalation fails if it's vague.
- Don't moralize. Your job is to help them communicate the problem, not validate whether
  escalation is warranted. If they're escalating, trust that they've thought about it.
- Don't inflate. Match the actual urgency of the situation — overstating it is as damaging
  as understating it.
- Assume good intent from all parties in the draft. The person being escalated around may
  just be overloaded, unclear on priority, or missing context.
- The best escalation creates a path forward for everyone — the person escalating, the
  person being escalated to, and the person or team being escalated around.
