# Pedagogy Codex

Rules for writing learning material in `komiti_academy`.

## 1. Lead with the concept being explained

When a sentence introduces a term or concept, start the sentence with that term — don't bury it after a subordinate clause.

**Bad:**
> You can only have one paper open at a time — `git checkout` is you pulling one paper out and putting the others away.

**Good:**
> `git checkout` is you pulling one paper out and putting the others away, as you can only have one paper open at a time.

The reader should see the concept name first, then the explanation. This makes scanning easier and keeps the focus on what is being taught.

## 2. Sub-sections are numbered and listed in Contents

Every `<h3>` (the first level below an `<h2>` main heading) must:

1. **Carry a number** in the format `N.M)` where `N` is the parent `<h2>` number and `M` is a sequential sub-counter (e.g. `4.1) Install Git`, `4.2) Configure Git`).
2. **Have an `id` attribute** so the Table of Contents can link to it (e.g. `<h3 id="s7-1">`).
3. **Appear in the Table of Contents** as a nested `<ol>` under the parent `<li>`, following the pattern already used in `03_infra_terraform_docker_aws.html`.

This applies to every tutorial HTML document in the library. The glossary (`99_glossary.html`) is exempt because its structure is alphabetical, not hierarchical.
