---
name: delivery-workflow
description: "**WORKFLOW SKILL** — Decide whether KomITi Academy work requires a new feature branch/worktree and how Academy-side Git workflow should be executed. USE FOR: branch/worktree creation decisions; commit/push/merge decisions; cleanup of merged worktrees; deciding when to wait for user instruction instead of starting Git workflow. DO NOT USE FOR: pure HTML pedagogy/content edits with no Git workflow decision; deploy/promotion in other repositories. INVOKES: file system tools and git commands only when the gate below is open."
---

# KomITi Academy — Delivery Workflow Skill

## Purpose

- This skill governs **when** the Academy agent may enter Git workflow inside `komiti_academy`.
- Creating a new branch or worktree is an operational step, not a default reflex.
- The default for tutorial edits is: make the content change in the current working context, prepare the HANDOFF, and wait for the user's Git instruction.

## Branch/worktree creation gate

- **Default:** do **not** create a new branch or worktree.
- The Academy agent may create a new feature branch/worktree only when at least one of these conditions is true:
  1. the user explicitly tells the agent to create the branch/worktree,
  2. the user explicitly asks the Academy agent to commit, push, merge, or promote, and the workflow cannot be completed without a new feature branch/worktree,
  3. the task is a repo-instructions / skills / workflow-rules update that the user explicitly wants recorded and promoted.
- If none of those conditions is true, the Academy agent must not open a new branch on its own.

## What to do when the gate is closed

- Work in the current requested context.
- Make the smallest correct content or instruction change.
- Prepare a HANDOFF when the change affects deploy-side Odoo tutorial artifacts.
- Stop after the edit or HANDOFF if the next step would require Git workflow that the user did not explicitly authorize.

## What to do when the gate is open

- Create the branch from the current `origin/main`.
- Use the repo-scoped worktree convention from `.github/copilot-instructions.md`.
- Use the naming rule `YYYY-MM-DD-<agent-or-developer>-feature_name`.
- For small workflow or instruction fixes, a `_quickfix` suffix in `feature_name` is acceptable when it makes the branch purpose clearer.
- Keep one commit = one logical unit.
- Merge only after the user explicitly instructed Academy-side Git workflow.

## Examples

### Gate closed

- The user says: "Rewrite section 4.6.4".
- The user says: "Review tutorial 07".
- The user says: "Prepare a handoff for odoo4komiti".

In all three cases, the Academy agent edits or reviews content, prepares the HANDOFF if needed, and does **not** create a branch unless the user also asks for Git workflow.

### Gate open

- The user says: "Create a feature branch, commit, push, and merge this tutorial fix."
- The user says: "Record this new workflow rule in the repo skills and promote it."

In those cases, Academy may open a feature branch/worktree and execute the requested Git workflow.