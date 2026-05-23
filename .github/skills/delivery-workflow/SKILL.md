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
- The Academy agent may create a new feature branch/worktree **only** when the user **directly and explicitly authorizes Academy-side branch/worktree creation in the current turn**. Authorization may take either of these two forms:
  1. a direct natural-language instruction from the user (e.g. "create a feature branch", "open a worktree", "start a branch named X and commit there"), or
  2. a **HANDOFF block that the user forwards / pastes / relays** to Academy. Forwarding a HANDOFF is treated as the user's direct explicit authorization of the ACTION items described in that HANDOFF, including branch/worktree creation when the HANDOFF requires it.
- The following do **not** count as authorization to create a branch/worktree:
  - a HANDOFF that Academy receives indirectly, infers from context, or composes itself,
  - a generic reply such as "continue", "proceed", "do it", "go ahead", when no HANDOFF was forwarded and no direct natural-language instruction was given covering branch/worktree creation,
  - a generic request to commit, push, merge, or promote — unless the user **also** explicitly authorizes the branch/worktree step itself (directly or via a forwarded HANDOFF),
  - the existence of a prior commit or branch covering similar content.
- If the gate is not directly and explicitly open, the Academy agent must not open a new branch on its own.

## Branch/worktree deletion gate

- **Default:** do **not** delete or remove a branch or worktree.
- Deletion requires the user's **direct explicit approval** of that specific cleanup. Approval may be given as:
  1. a direct natural-language instruction naming the branch/worktree, or
  2. a HANDOFF block that the user forwards to Academy and that explicitly authorizes cleanup of a named branch/worktree.
- A HANDOFF that Academy did not receive directly from the user, a generic "clean up", or self-composed cleanup reasoning are **not** sufficient.

## Failure handling — branch already opened without authorization

- If Academy notices that a branch or worktree was created without the required direct explicit authorization (in this turn or a previous one):
  1. **Stop.** Do not run further Git commands on that branch.
  2. **Disclose** the state to the user: branch name, worktree path, commits made, push status.
  3. **Do not normalize** the situation — do not keep committing as if the branch were authorized, and do not silently delete it.
  4. **Wait** for the user's direct explicit instruction before any next Git step (continue, abandon, clean up, or otherwise).

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
- Academy itself composes a HANDOFF describing branch work, with no user forwarding.
- The user replies with just "continue" / "proceed" / "do it" after a previous turn, with no forwarded HANDOFF and no direct instruction covering Git workflow.

In all of these cases, the Academy agent edits or reviews content, prepares the HANDOFF if needed, and does **not** create a branch or worktree.

### Gate open

- The user says: "Create a feature branch, commit, push, and merge this tutorial fix."
- The user says: "Open an Academy worktree for this and commit there."
- The user says: "Record this new workflow rule in the repo skills, branch it, and promote it."
- The user **forwards / pastes** an `odoo4komiti` (or other agent) HANDOFF block to Academy whose ACTION items require Academy-side branch/worktree creation. The act of forwarding the HANDOFF is the user's direct explicit authorization.

In those cases, Academy may open a feature branch/worktree and execute the requested Git workflow.

### Cleanup — gate open

- The user says: "Delete the worktree `2026-05-23-Academy-foo`, it's merged."
- The user says: "Clean up the merged branch `2026-05-23-Academy-foo`."
- The user **forwards** a HANDOFF that explicitly authorizes cleanup of a named, clearly-merged branch/worktree.

Any other cleanup — based on a HANDOFF Academy did not receive directly from the user, on inferred context, or on a generic "clean up" — requires direct user confirmation first.