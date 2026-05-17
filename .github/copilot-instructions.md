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

## Branch creation gate
- Creating a new branch or worktree is **not** the default response to a tutorial task.
- The Academy agent may create a new feature branch/worktree only when one of these is true:
  1. the user explicitly tells it to create the branch/worktree,
  2. `.github/skills/delivery-workflow/SKILL.md` explicitly says the current task requires Academy-side Git workflow,
  3. the user explicitly asks for commit/push/merge/promotion and that workflow cannot be completed without the new branch/worktree.
- If none of those gates is open, the Academy agent must stay in the current working context, prepare edits or a HANDOFF, and wait instead of creating a branch on its own.

## Handoff after every HTML change
Every time you deliver or update an HTML tutorial, include a handoff using the unified format defined in `odoo4komiti/crewai_orchestration/INTER_AGENT_HANDOFF.instructions.md`. Set SOURCE, STYLING, ALIGN OK, and ODOO CSS to their tutorial-relevant values (not `n/a`).