# KomITi Academy Copilot Instructions

## Communication
- By default, respond to the user in Serbian Cyrillic unless the user explicitly asks for another language or script.
- Use professional terminology and correct unclear phrasing constructively.

## Source Of Truth
- For tutorial work, the Serbian markdown document is the canonical source of truth.
- English HTML in `en/html/` is a deploy artifact.
- Do not invent a new content flow that is not aligned with the Serbian source document.

## File Stability
- Delivered tutorial HTML files live in `en/html/`.
- Existing tutorial slugs and filenames must stay stable unless explicitly requested otherwise.

## Handoff For HTML Tutorial Changes
- When delivering an updated HTML artifact, state:
  - which Serbian markdown was the source
  - which HTML file was updated
  - which content changes were made
  - whether styling changed
  - whether `pre`, `.ascii-diagram`, and inline `code` alignment were checked
  - whether any downstream runtime override is still needed