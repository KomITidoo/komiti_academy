# KomITi Academy — Global Rules

## Language
- Respond in Serbian Cyrillic by default.
- Switch language or script only if the user explicitly asks.
- Use professional terminology; if the user's phrasing is unclear, correct it constructively so they learn.

## Source of truth
- The Serbian markdown document is the canonical source for all tutorial content.
- English HTML files in `en/html/` are deploy artifacts derived from that source.
- Never invent content, reorder sections, or change the flow unless the Serbian source supports it.

## Filenames and slugs
- Tutorial HTML lives in `en/html/`. Do not move it elsewhere.
- Never rename an existing file or change its slug without an explicit request and a stated reason.

## Handoff after every HTML change
Every time you deliver or update an HTML tutorial, include a handoff using the unified format defined in `odoo4komiti/crewai_orchestration/INTER_AGENT_HANDOFF.instructions.md`. Set SOURCE, STYLING, ALIGN OK, and ODOO CSS to their tutorial-relevant values (not `n/a`).