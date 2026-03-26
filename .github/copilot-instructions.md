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
Every time you deliver or update an HTML tutorial, include a handoff as a fenced code block the user can copy in one click:

```
SOURCE:   <Serbian .md filename or "no direct source">
HTML:     en/html/<filename>.html
CONTENT:  <1-2 sentence summary of what changed>
STYLING:  yes | no
ALIGN OK: pre, .ascii-diagram, inline code — verified | not checked
ODOO CSS: not needed | needed (<reason>)
COMMIT:   <short SHA or "uncommitted">
```

Fields:
1. **SOURCE** — which Serbian markdown was the canonical source (or "no direct source" if content was created in-session).
2. **HTML** — which file was created or changed.
3. **CONTENT** — what changed (keep to 1-2 sentences).
4. **STYLING** — whether CSS/layout changed.
5. **ALIGN OK** — whether `pre`, `.ascii-diagram`, and inline `code` alignment were verified.
6. **ODOO CSS** — whether a downstream Odoo runtime override is still needed (ideally: not needed).
7. **COMMIT** — short SHA if committed, or "uncommitted".