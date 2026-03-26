---
name: pedagogy
description: "**CONTENT SKILL** — Write, review, or improve KomITi Academy tutorial content (HTML files in en/html/). USE FOR: writing new tutorial sections; reviewing existing sections for clarity, accuracy, and flow; restructuring or renumbering sections; adding hands-on steps, observations blocks, or self-check questions; ensuring consistent pedagogical voice. DO NOT USE FOR: deploy/promotion workflows (use handoff protocol); Odoo module development; infrastructure changes. INVOKES: file system tools (read/edit HTML tutorials), subagents for content review."
---

# KomITi Academy — Pedagogy Skill

## Voice and tone

- Write in **second person** ("you will see", "you created"), present or past tense depending on whether the candidate is about to do something or has just done it.
- Be direct. Short sentences. No filler words.
- Use professional terminology; if a term might be unfamiliar, define it inline on first use.
- When a sentence introduces a term or concept, **start the sentence with that term** — don't bury it after a subordinate clause.

**Bad:**
> You can only have one paper open at a time — `git checkout` is you pulling one paper out and putting the others away.

**Good:**
> `git checkout` is you pulling one paper out and putting the others away, as you can only have one paper open at a time.

## Section structure

Every tutorial follows this skeleton:

1. **Intro paragraph** — who this is for and what they will learn.
2. **Table of Contents** — nested `<ol>` inside `<div class="toc">`.
3. **Theory sections** — numbered `<h2>` headings: `1)`, `2)`, etc.
4. **Hands-on workflow** — numbered steps with terminal commands in `<pre><code>` blocks.
5. **What to read next** — links to the next tutorial(s).
6. **Section 99: Task + Self-check** — a practical exercise the candidate does independently, followed by key concepts and self-check questions.

## Numbering and anchors

- Every `<h2>` carries a number: `1)`, `2)`, ... `99)`.
- Every `<h3>` carries `N.M)` where `N` is the parent `<h2>` number (e.g. `4.1) Install Git`).
- Every heading has an `id` attribute (e.g. `id="s7-1"`) and a matching entry in the Table of Contents.
- When renumbering, update **all** of: heading text, `id`, TOC `href`, and any in-text cross-references.

## "What you should notice" blocks

After each hands-on step (especially in workflow sections), include a block:

```html
<p>What you should notice:</p>
<ul>
    <li><strong>Windows Explorer:</strong> ...</li>
    <li><strong>VS Code Explorer:</strong> ...</li>
    <li><strong>VS Code Source Control:</strong> ...</li>
    <li><strong>Git status indicator:</strong> ...</li>
</ul>
```

Rules for these four bullets:
- **Windows Explorer** — what physically changed on disk (files appeared/disappeared/renamed).
- **VS Code Explorer** — file tree decorations (U, M, A, D, colour changes).
- **VS Code Source Control** — panel grouping (Changes, Staged Changes, count).
- **Git status indicator** — terminal output of `git status --short` and/or status bar sync arrows.

Each bullet has a distinct responsibility. Do not duplicate the same observation across bullets.

## Advanced content blocks

For optional deep-dive material (e.g. `.git/` internals), nest it under the relevant observation bullet:

```html
<li><strong>Windows Explorer:</strong> No change — ...
    <strong>Advanced content:</strong> deep dive into <code>.git/</code> —
    <ul style="margin-top: 0.3em;">
        <li><code>.git/some_file</code> — explanation.</li>
    </ul>
</li>
```

Use standard document font — no font-size overrides on advanced content.

## Command explanation style

When explaining a terminal command the candidate just ran:
- Use a `<p>` paragraph (not a bullet) for the main explanation.
- Start with what the candidate **did**, not with the command syntax: "You created a new branch and switched to it."
- Use peer bullets only for individual flags/arguments: `-b` = branch, `-u` = set upstream, etc.

## Analogies

Use the **cabinet analogy** consistently across Git tutorials:
- **Git repo** = cabinet
- **branch** = binder inside the cabinet
- **file** = sheet of paper inside the binder
- **checkout** = open one binder on your desk
- **merge** = copy sheets from one binder to another
- **push** = send the binder to the remote cabinet
- **delete branch** = throw away the empty binder

When introducing a new Git concept, tie it back to this analogy in parentheses.

## Section 99 pattern

Section 99 always contains:
1. **Task steps** — numbered `<ol>` with practical exercises. Each step has a bold title, a dash, instructions, and `<em>Reference: <a href="...">N.M</a>.</em>`.
2. **Self-check** — an `<h3>Self-check</h3>` with:
   - "Key concepts — explain in your own words:" (compact `<ul>` of terms)
   - "You must be able to answer:" (`<ul>` of questions)

## Content accuracy

- Never invent content or reorder the canonical flow unless the Serbian source document supports it.
- If you spot an inaccuracy (wrong command output, contradictory statements, outdated references), fix it and explain what was wrong.
- Cross-reference claims against actual repo state when possible (e.g. verify file paths exist).

## HTML styling conventions

- Use the existing CSS classes: `note` (yellow), `tip` (green), `ascii-diagram` (dark terminal block).
- Terminal commands use `<pre><code>PS C:\dev\path> command</code></pre>`.
- Inline code uses `<code>term</code>`.
- YouTube videos: use clickable thumbnail with play button overlay (not iframe — iframes break on `file:///`).

## Handoff

Every time you deliver or update an HTML tutorial, include a handoff block per the unified format in `odoo4komiti/crewai_orchestration/INTER_AGENT_HANDOFF.instructions.md`.
