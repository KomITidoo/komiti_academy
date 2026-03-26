---
applyTo: "en/html/**/*.html"
---

# HTML Tutorial Rules

## Document Shape
- Deliver a complete standalone HTML document with `<!DOCTYPE html>`, `html`, `head`, and `body`.
- Inline CSS must be sufficient for correct rendering inside Odoo Tutorials runtime.
- Use a single `.page-wrapper` container.
- Keep a consistent structure with `h1`, `h2`, `h3`, `p`, `ul`, `ol`, `table`, `blockquote`, `pre`, and `code`.

## Layout And Spacing
- HTML must be visually compact and readable without downstream Odoo CSS patching.
- Do not use excessive wrapper spacing.
- Use these spacing values unless there is an explicit reason to deviate:
  - `ul, ol { margin: 8px 0 11.2px 28px; }`
  - `li { margin-bottom: 0; }`
  - `.toc ol { margin-top: 8px; }`
  - `.toc li { margin-bottom: 3.2px; }`
- If a spacing change is needed in one tutorial for layout reasons, verify whether the same pattern should be applied to the other tutorial HTML files.

## Code And Prompt Formatting
- `pre` blocks must use a dark background and sufficient contrast.
- `.ascii-diagram` blocks must visually match the code-block style.
- Inline `code` must remain visually aligned, including at the start of a line.
- Explicitly verify prompt and path lines such as:
  - `C:\dev\KomITi\...`
  - `git init`
  - `git clone`
  - `git checkout ...`

## Content Fidelity
- Keep HTML content aligned with the Serbian markdown source.
- If the source says `feature -> staging -> main`, do not output another branch model.
- Do not omit explicitly important filenames or terms from the source.

## Runtime And Responsiveness
- HTML must remain readable inside Odoo Tutorials layout.
- Do not depend on iframe-specific behavior.
- Do not require JavaScript for basic readability.
- Horizontal overflow is acceptable only for `pre` and `.ascii-diagram`, not for normal body text.

## Avoid
- Do not introduce a new visual language per tutorial without a reason.
- Do not create different spacing systems across tutorials.
- Do not rely on downstream Odoo CSS patches for basic readability.

## Required Self-Check
- Verify source fidelity.
- Verify branch and workflow correctness.
- Verify `pre` and `.ascii-diagram` consistency.
- Verify inline `code` alignment.
- Verify wrapper spacing.
- Verify readability without runtime CSS patching.
- Verify stable filename and slug.