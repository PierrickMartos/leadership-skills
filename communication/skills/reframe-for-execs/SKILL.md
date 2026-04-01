---
name: reframe-for-execs
description: >
  Compress and reframe a detailed or operational draft into a crisp executive-ready message.
  Use this skill whenever someone shares a draft that is too long, too detailed, too operational,
  or too weedy for a senior audience — whether it's an email to a VP, a status update for a
  steering committee, a Slack message to the C-suite, a slide deck intro, or any communication
  where the audience needs to make a decision, not read a report. Trigger proactively when the
  user says things like "this is too detailed for execs", "can you make this exec-ready",
  "I need to trim this for leadership", "this is too operational", "my message is too long for
  the audience", "how do I present this to senior stakeholders", or pastes a draft and mentions
  it's going to a VP, director, C-level, board, or steering committee. The output always follows
  the four-part exec frame: What matters / Why now / Risk if we do nothing / Recommendation.
---

# Reframe for Execs

Your job is to strip a detailed or operational draft down to the four things an executive actually needs to make a decision: **what matters, why now, the risk of inaction, and a clear recommendation**.

Executives don't read to learn — they read to decide. Every sentence that isn't load-bearing for that decision is noise. Your job is to be ruthless about what stays.

---

## Step 1: Understand the draft and its stakes

When the user shares a draft, make sure you have enough context before rewriting:

**If the audience isn't clear**, ask:
> "Who's reading this — roughly what level, and do they have context on this topic?"

**If the decision or outcome isn't clear**, ask:
> "What do you need them to do or decide after reading this?"

If the user has already given you this context, don't ask again — just proceed.

---

## Step 2: Strip the operational noise

Before writing the exec version, read the draft and identify what to cut. Operational noise includes:

- **Process detail**: how things were done, who did what, what steps were followed
- **Status updates with no consequence**: things that are on track and require no decision
- **Caveats and hedges** that protect the writer but add no information for the reader
- **Background the exec already has** — assume they know the context unless you have reason to think otherwise
- **Technical specifics** the reader can't act on (tool names, system states, methodology)
- **Passive constructions** that hide who owns the decision or action

The test for every sentence: *If I removed this, would the exec make a different decision?* If no, cut it.

---

## Step 3: Build the exec frame

Rewrite the message using this four-part structure. Keep each section to 1–3 sentences unless the situation genuinely demands more.

### What matters
The single most important thing the exec needs to understand. Not the full situation — the signal. What is actually at stake or in play?

### Why now
Why does this need their attention at this moment? What has changed, what deadline is approaching, or what decision can no longer wait?

### Risk if we do nothing
What happens if no decision is made, or if this is deprioritized? Make the cost of inaction concrete — vague risk is easy to ignore.

### Recommendation
What do you want them to do? Be specific: approve X, unblock Y, decide between A and B. Don't end with "your thoughts?" — end with a clear ask.

---

## Step 4: Produce the output

Present the result in this format:

---

**What matters**
[1–3 sentences]

**Why now**
[1–3 sentences]

**Risk if we do nothing**
[1–3 sentences]

**Recommendation**
[1–2 sentences — specific ask or decision]

---

Then add a brief note on what was cut and why, so the user understands the editorial logic:

**What was removed**
- [type of content cut] — [one-line reason, e.g. "implementation detail — exec can't act on it"]
- [type of content cut] — [reason]

Keep "What was removed" to 3–4 bullets max. The goal is to help the user internalize the editorial logic so they need this skill less over time.

---

## Tone and judgment

- **Preserve the user's facts; cut their structure.** Don't invent stakes or urgency that aren't in the original — surface what's actually there.
- **Don't over-condense.** If the risk genuinely requires two sentences to be concrete, use two sentences. Brevity that loses precision defeats the purpose.
- **If a section has no answer in the draft**, say so directly:
  > "The draft doesn't surface a 'why now' — do you have a deadline or trigger I should include?"
  This is more useful than fabricating urgency.
- **If the draft is already exec-ready**, say that. Don't manufacture feedback.
- **Avoid turning a nuanced situation into false clarity.** If the recommendation is genuinely "we need to discuss options A and B", that's fine — an exec still needs to know what the meeting is for.
