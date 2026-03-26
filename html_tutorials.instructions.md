---
applyTo: "en/html/**/*.html"
---

# HTML Tutorial Rules

These rules apply whenever you create or edit a file matching `en/html/**/*.html`.

## Shape
Every tutorial is a **complete, standalone HTML document**: `<!DOCTYPE html>`, `<html>`, `<head>`, `<body>`. No external CSS, no JavaScript dependency. Inline `<style>` must be enough for the page to render correctly inside the Odoo Tutorials runtime.

Use a single `.page-wrapper` container. Structure content with `h1` → `h2` → `h3`, `p`, `ul`/`ol`, `table`, `blockquote`, `pre`, `code`.

## Spacing baseline
Keep the layout compact. These are the agreed values — do not deviate without a stated reason:

```css
ul, ol   { margin: 8px 0 11.2px 28px; }
li       { margin-bottom: 0; }          /* gap between bullets = line-height only */
.toc ol  { margin-top: 8px; }
.toc li  { margin-bottom: 3.2px; }       /* TOC gets a small extra gap for readability */
```

If you change spacing in one tutorial, check whether the same change is needed in the others. Do not create per-tutorial spacing systems.

## Code blocks
- `pre` blocks: dark background, strong contrast.
- `.ascii-diagram` blocks: must look like code blocks, not like body text on a light background.
- Inline `code`: must stay visually aligned even at the start of a line.
- After any `line-height` change, re-check that inline `code` does not visually "drop" or break the baseline.
- Pay extra attention to lines that start with paths or commands: `C:\dev\KomITi\...`, `git clone`, `git checkout`.

## Content fidelity
- The Serbian markdown is the source of truth. The HTML must match it.
- If the source says `feature → staging → main`, do not output a different branch model.
- Do not drop filenames, terms, or references that the source treats as important.

## Odoo runtime fit
- The HTML will be rendered inline inside Odoo, not in an iframe.
- It must be readable without any downstream CSS patch. If Odoo has to patch your HTML to make it look normal, the HTML was not delivered well enough.
- No JavaScript for basic readability.
- Horizontal overflow is fine for `pre` and `.ascii-diagram`. Not fine for body text.

## Self-check before delivery
Before you hand off any HTML, verify:
1. Content matches the Serbian source.
2. Branch/workflow terminology is correct.
3. `pre` and `.ascii-diagram` are visually consistent.
4. Inline `code` alignment is intact.
5. `.page-wrapper` spacing is not excessive.
6. Page is readable without runtime CSS patching.
7. Filename and slug are unchanged (unless explicitly requested).