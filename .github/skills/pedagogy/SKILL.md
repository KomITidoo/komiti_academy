---
name: pedagogy
description: "**CONTENT SKILL** — Write, review, or improve KomITi Academy tutorial content (HTML files in tutorials/). USE FOR: writing new tutorial sections; reviewing existing sections for clarity, accuracy, and flow; restructuring or renumbering sections; adding hands-on steps, observations blocks, or self-check questions; ensuring consistent pedagogical voice. DO NOT USE FOR: deploy/promotion workflows (use handoff protocol); Odoo module development; infrastructure changes. INVOKES: file system tools (read/edit HTML tutorials), subagents for content review."
---

# KomITi Academy — Pedagogy Skill

## Voice and tone

- Write in **second person** ("you will see", "you created"), present or past tense depending on whether the candidate is about to do something or has just done it.
- Be direct. Short sentences. No filler words.
- Use professional terminology; if a term might be unfamiliar, define it inline on first use.
- When the candidate uses an informal or imprecise term, gently correct it: "You said *X* — in a professional context the standard term is **Y**." Then continue the answer using the correct term.
- When a concept appears for the first time, add a one-sentence origin note: who created it, when, and why — e.g. "Git was created by Linus Torvalds in 2005 to manage Linux kernel development."
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

## First-mention command breakdown

When a command (or a distinct sub-command / flag combination) appears **for the first time** in a tutorial, add a `<ul>` bullet list immediately after the `<pre><code>` block:

### Step 1 — check earlier tutorials

Search all preceding tutorials for that command. If it was already explained there, add **one bullet** linking to the specific section:

```html
<ul>
    <li>The <code>docker compose</code> command and its YAML file are explained in
        <a href="03_infrastructure.html#s3-2">Tutorial 03, section 3.2 — <code>docker-compose.yml</code></a>.</li>
</ul>
```

### Step 2 — if not explained before, break it down here

Give **each part** its own bullet — one sub-command, flag, or argument per `<li>`. Do not combine multiple parts into a single bullet.

```html
<ul>
    <li><code>up</code> — creates and starts all containers defined in <code>docker-compose.yml</code>.</li>
    <li><code>-d</code> — detached mode: runs containers in the background so you get your terminal back instead of seeing live log output.</li>
</ul>
```

### Rules

- Only on the **first occurrence** in the tutorial. Subsequent uses of the same command do not need the breakdown.
- One bullet = one part of the command. Never combine two flags or two arguments in a single bullet.
- Keep each bullet to one short sentence.
- Self-evident parts (e.g. a plain directory path the candidate just typed) may be skipped.

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

## Tutorial sequence — layered pedagogy

The KomITi Academy curriculum is built bottom-up. Each tutorial introduces exactly one new layer and assumes only the layers below it. No tutorial may presuppose a layer above its position in the sequence.

### Canonical order

| # | Layer | Tutorial | What it adds |
|---|-------|----------|--------------|
| 00 | Master plan | `00_end2end_onboarding.html` | The SoW that frames every other tutorial. |
| 01 | Organisational | `01_project_product_mgmt.html` | Roles (PM, BO, ProjM, SO) and ownership boundaries. |
| 02 | Tooling & process | `02_git_vscode_basics.html` | Git workflow, VS Code, the `feature → staging → main` discipline. |
| 03 | Infrastructure | `03_infrastructure.html` | AWS, Terraform, Docker — the substrate everything runs on. |
| 04 | Language | `04_python_basis.html` | Just enough Python to read and write Odoo code. |
| 05 | Application (manual) | `05_Odoo_from_0_to_hero.html` | Building a real Odoo module by hand — no AI assistance assumed. |
| 06 | Agentic acceleration | `06_komiti_AI_team_and_their_skills.html` | Agents, instructions, skills — how to do the same work faster with AI. |
| 07 | Operating handbook | `07_engineering_handbook.html` | The rules that bind all layers together for the live KomITi setup. |
| 99 | Reference | `99_cheat_sheet_and_glossary.html` | Cross-cutting glossary and cheat sheet. |

### Layering rules

- **Bottom-up dependency only.** Tutorial N may reference concepts from tutorials 00…N-1 but never from N+1…99 (except as a forward-pointer in "What to read next").
- **Dev environment before infrastructure.** Git & VS Code (02) come before Infrastructure (03) so that the candidate can clone repos, create feature branches and commit work *before* learning Terraform/Docker/AWS. Tutorial 03 (Infrastructure) may freely assume Git workflow knowledge — e.g. `git checkout`, `git commit`, `git push`, feature-branch naming — because layer 02 is already complete.
- **No agent contamination below layer 06.** Tutorials 01–05 must teach the underlying engineering discipline as if AI assistance did not exist. The candidate must be able to do the work manually before they are shown how to delegate it.
- **Capstone-first, then accelerate.** Layer 05 is the candidate's first end-to-end build. Only after they have manually built something does layer 06 introduce agentic acceleration of the same workflow.
- **Handbook is operating rules, not introduction.** Layer 07 codifies the rules that bind layers 02–06 in the live KomITi multi-repo setup; it is not a place to teach new mechanics.

### When renumbering

If a tutorial's layer position changes, update **all** of:

1. The filename (`NN_slug.html`).
2. Every `<a href="NN_slug.html…">` in every other tutorial.
3. Every in-text reference of the form `tutorial NN` or `Tutorial NN`.
4. The Scope-of-Work list in `00_end2end_onboarding.html`.
5. The "Where it appears" entries in `99_cheat_sheet_and_glossary.html`.
6. `_SLUG_ALIASES` in `odoo4komiti/.../komiti_web/controllers/tutorials.py` — add the old → new slug mapping so existing bookmarks still resolve.

## Content accuracy

- Never invent content or reorder the canonical flow without an explicit request.
- If you spot an inaccuracy (wrong command output, contradictory statements, outdated references), fix it and explain what was wrong.
- Cross-reference claims against actual repo state when possible (e.g. verify file paths exist).
