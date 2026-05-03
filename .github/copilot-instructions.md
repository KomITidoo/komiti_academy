# KomITi Academy — Global Rules

## Language
- Respond in Serbian Cyrillic by default.
- Switch language or script only if the user explicitly asks.
- Use professional terminology; if the user's phrasing is unclear, correct it constructively so they learn.

## Filenames and slugs
- Tutorial HTML lives in `tutorials/`. Do not move it elsewhere.
- Never rename an existing file or change its slug without an explicit request and a stated reason.

## Working tree convention
- The primary clone `C:\dev\KomITi\komiti_academy` is reserved for `main` only. No feature work happens there.
- Every feature branch is checked out in a sibling Git worktree under `C:\dev\KomITi\komiti_academy_worktrees\<branch-name>`, where `<branch-name>` exactly equals the Git branch (e.g. `C:\dev\KomITi\komiti_academy_worktrees\2026-05-03-Academy-working_tree_convention`).
- This makes the active branch unambiguous from Windows Explorer alone and lets multiple agents work in parallel without disturbing the primary checkout.
- Create the worktree from the current `origin/main`:
  `git worktree add -b <branch-name> C:\dev\KomITi\komiti_academy_worktrees\<branch-name> origin/main`
- The worktree is removed after the branch is merged:
  `git worktree remove --force C:\dev\KomITi\komiti_academy_worktrees\<branch-name>`
- Feature branches use the naming rule `YYYY-MM-DD-<agent-or-developer>-feature_name` (Academy agent uses `Academy` as the agent slug).
- The rule mirrors the engineering-side convention in `odoo4komiti/.github/copilot-instructions.md` and binds every agent that shares this repo.

## Handoff after every HTML change
Every time you deliver or update an HTML tutorial, include a handoff using the unified format defined in `odoo4komiti/crewai_orchestration/INTER_AGENT_HANDOFF.instructions.md`. Set SOURCE, STYLING, ALIGN OK, and ODOO CSS to their tutorial-relevant values (not `n/a`).