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
- For short YAML/config/code excerpts embedded inside explanatory prose, prefer a more compact snippet variant instead of full-sized terminal blocks. Use a generic `.snippet` class:
	`padding: 10px 18px; margin: 8px 0 14px 0; line-height: 1.45;`
	Keep the same dark theme and monospace font as `pre`, but reduce vertical whitespace so short excerpts do not create large empty areas.

## Command-first bullets
When a bullet point (or sentence) explains what a command does, **start with the command in `<code>`**, then follow with the explanation. Do not bury the command at the end.

```html
<!-- ✅ correct -->
<li><code>docker compose stop</code> &mdash; stops containers but keeps data (run from the respective directory).</li>

<!-- ❌ wrong -->
<li>To stop containers but keep data: <code>docker compose stop</code> (run from the respective directory)</li>
```

This makes the list scannable: the reader sees the command first, then decides whether to read the explanation.

## Content fidelity
- HTML tutorials in `en/html/` are the canonical source. There is no separate Serbian markdown to sync against.
- If a tutorial says `feature → staging → main`, do not output a different branch model.
- Do not drop filenames, terms, or references that the tutorial treats as important.

## Odoo runtime fit
- The HTML will be rendered inline inside Odoo, not in an iframe.
- It must be readable without any downstream CSS patch. If Odoo has to patch your HTML to make it look normal, the HTML was not delivered well enough.
- No JavaScript for basic readability.
- Horizontal overflow is fine for `pre` and `.ascii-diagram`. Not fine for body text.

## Callout boxes

Four callout classes exist. Each has a consistent colour, label, and semantic role:

| Class   | Colour       | Label               | Purpose |
|---------|-------------|----------------------|---------|
| `.note` | amber/brown | `<strong>Important:</strong>` | Gotchas, common mistakes, things that break if ignored |
| `.info` | blue        | `<strong>Note:</strong>`      | Neutral extra context, clarifications, background info |
| `.tip`  | green       | `<strong>Tip:</strong>`       | Shortcuts, best practices, productivity hints |
| `.ascii-diagram` | dark terminal | _(none)_ | ASCII diagrams rendered as code blocks |

Markup pattern (same for all callout classes):

```html
<div class="info">
    <strong>Note:</strong> PowerShell accepts both <code>/</code> and
    <code>\</code> when navigating directories&hellip;
</div>
```

CSS definitions (must be present in every tutorial `<style>`):

```css
.note {
    background: #fffbe6; border-left: 4px solid #f0b429;
    padding: 12px 18px; margin: 14px 0;
    border-radius: 0 6px 6px 0; font-size: 14px;
}
.note strong { color: #b07d00; }
.info {
    background: #e3f2fd; border-left: 4px solid #1976d2;
    padding: 12px 18px; margin: 14px 0;
    border-radius: 0 6px 6px 0; font-size: 14px;
}
.info strong { color: #0d47a1; }
.tip {
    background: #e8f5e9; border-left: 4px solid #43a047;
    padding: 12px 18px; margin: 14px 0;
    border-radius: 0 6px 6px 0; font-size: 14px;
}
.tip strong { color: #2e7d32; }
```

Rules:
- **Do not mix labels and classes.** `.note` always starts with `Important:`, `.info` always starts with `Note:`, `.tip` always starts with `Tip:`.
- The first word after the bold label is lowercase (sentence continues).
- Keep callout text concise — aim for 1–3 sentences.
- Older tutorials may use `.vscode-sc` or `.change` for blue boxes; when editing those files, migrate them to `.info`.

## Styling conventions
- Use the existing CSS classes: `note` (amber/brown), `info` (blue), `tip` (green), `ascii-diagram` (dark terminal block).
- Use the standard tutorial typography baseline from the existing `en/html/` files:
	`body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 15px; line-height: 1.225; color: #2c2c2c; background: #f4f6f9; }`
	`.page-wrapper { max-width: 980px; margin: 20px auto; background: #ffffff; border-radius: 8px; box-shadow: 0 2px 16px rgba(0,0,0,0.1); padding: 30px 36px; }`
	`code`, `pre`, and `.ascii-diagram` use `font-family: 'Consolas', 'Courier New', monospace;`.
- Standard font sizes:
	body text = `15px`
	inline `code` = `13.5px`
	`pre` / compact snippets = `13.5px`
	`.ascii-diagram` = `13px`
- Do not invent a per-tutorial body font, background, or wrapper system unless explicitly requested.
- Terminal commands use `<pre><code>PS C:\dev\path> command</code></pre>`.
- Inline code uses `<code>term</code>`.
- YouTube videos: use clickable thumbnail with play button overlay (not iframe — iframes break on `file:///`).

## Self-check before delivery
Before you hand off any HTML, verify:
1. Branch/workflow terminology is correct.
2. `pre` and `.ascii-diagram` are visually consistent.
3. Inline `code` alignment is intact.
4. `.page-wrapper` spacing is not excessive.
5. Page is readable without runtime CSS patching.
6. Filename and slug are unchanged (unless explicitly requested).