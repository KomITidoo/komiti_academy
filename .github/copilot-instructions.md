# KomITi Academy — Global Rules

## Language
- Respond in Serbian Cyrillic by default.
- Switch language or script only if the user explicitly asks.
- Use professional terminology; if the user's phrasing is unclear, correct it constructively so they learn.

## Filenames and slugs
- Tutorial HTML lives in `tutorials/`. Do not move it elsewhere.
- Never rename an existing file or change its slug without an explicit request and a stated reason.

## Working tree convention
- The repository container is `C:\dev\KomITi\komiti_academy`.
- The protected/current `main` worktree lives at `C:\dev\KomITi\komiti_academy\main`. No feature work happens there.
- Every feature branch is checked out in a repo-scoped Git worktree under `C:\dev\KomITi\komiti_academy\<branch-name>`, where `<branch-name>` exactly equals the Git branch (e.g. `C:\dev\KomITi\komiti_academy\2026-05-17-Academy-repo_scoped_worktree_layout`).
- This makes the active branch unambiguous from Windows Explorer alone and lets multiple agents work in parallel without disturbing the primary checkout.
- Create the worktree from the current `origin/main`:
  `git worktree add -b <branch-name> C:\dev\KomITi\komiti_academy\<branch-name> origin/main`
- The worktree is removed after the branch is merged:
  `git worktree remove --force C:\dev\KomITi\komiti_academy\<branch-name>`
- Feature branches use the naming rule `YYYY-MM-DD-<agent-or-developer>-feature_name` (Academy agent uses `Academy` as the agent slug).
- The rule mirrors the engineering-side convention in `odoo4komiti/.github/copilot-instructions.md` and binds every agent that shares this repo.

## Custom agent source of truth
- Repository `.github/agents/*.agent.md` files are the canonical, versioned agent definitions for this repo.
- When changing an agent definition, edit the canonical repo `.agent.md` in the current explicitly authorized worktree/branch that is intended to carry the change. If the user did not authorize a new branch/worktree, stay in the current authorized worktree and make the canonical edit there.
- After changing the canonical repo agent file, regenerate the visible user-level picker copy from that same worktree/branch. Do not hand-edit the generated `~\.copilot\agents` copy unless the user explicitly asks for a local-only experiment.

## Branch and worktree gate

### Creation
- Creating a new branch or worktree is **not** the default response to a tutorial task.
- The Academy agent may create a new feature branch/worktree only when the **user directly and explicitly authorizes Academy-side branch/worktree creation** in the current turn. Authorization may take either of these forms:
  - a direct user instruction in natural language (e.g. "create a branch", "open a worktree for this", "start a feature branch named X"), or
  - a HANDOFF block that the **user forwards / pastes / relays** to Academy. Forwarding a HANDOFF is treated as the user's direct explicit authorization of the ACTION items described in that HANDOFF, including branch/worktree creation when the HANDOFF requires it.
- The following do **not** count as authorization to create a branch/worktree:
  - a HANDOFF that Academy receives indirectly, infers, or composes for itself (only a HANDOFF forwarded by the user counts),
  - a generic request to "continue", "proceed", "do it", "go ahead", or similar, when there is no forwarded HANDOFF and no direct natural-language instruction covering branch/worktree creation,
  - a generic request to commit, push, merge, or promote — unless the user **also** explicitly authorizes the branch/worktree step itself (directly or via a forwarded HANDOFF),
  - the existence of a prior commit or a pre-existing branch that touches the same content.
- If branch/worktree creation is not directly and explicitly authorized, Academy must stay in the current working context, prepare the edits and the HANDOFF, and wait.

### Deletion / cleanup
- Deleting or removing a feature branch or worktree is **not** allowed by default and requires the user's **direct explicit approval**.
- Approval may be given either as a direct natural-language instruction naming the branch/worktree, or via a HANDOFF block that the user forwards to Academy and that explicitly authorizes cleanup of a named branch/worktree.
- A HANDOFF that Academy did not receive directly from the user, a generic "clean up", or self-composed cleanup reasoning are **not** sufficient.

### Failure handling
- If Academy notices that a branch or worktree was created without the required direct explicit authorization (whether by Academy itself in an earlier turn or by another process), Academy must **stop**, **disclose the current branch/worktree state to the user**, **not perform any further Git workflow on that branch** (no further commits, pushes, merges, or cleanup), and **wait for the user's instruction**. Academy must not normalize the unauthorized branch creation by continuing to work on it or by silently cleaning it up.

## Handoff after every HTML change
Every time you deliver or update an HTML tutorial, include a handoff using the unified format defined in `odoo4komiti/crewai_orchestration/INTER_AGENT_HANDOFF.instructions.md`. Set SOURCE, STYLING, ALIGN OK, and ODOO CSS to their tutorial-relevant values (not `n/a`).