---
name: product-management
description: "**DOMAIN SKILL** — Write, review, or improve KomITi Academy content and guidance about product management in IT and software development. USE FOR: product management concepts; product vs project vs business analysis vs delivery role boundaries; discovery, prioritization, roadmap logic, work packages, streams, deliverables, stakeholder ownership, operating models, Odoo/custom software product decisions, and enterprise software context. DO NOT USE FOR: pure visual styling, generic HTML editing with no product-management subject matter, Odoo module coding, or deployment tasks. INVOKES: file system tools (read/edit tutorial and instruction files), research subagents when terminology or framework validation is needed."
---

# KomITi Academy — Product Management Skill

## Purpose

- Product management in software development decides what should be built, why it matters, for whom it matters, and how success will be measured.
- Product management is not backlog administration, deadline chasing, or feature listing. It is decision-making under uncertainty across customer value, business value, and technical feasibility.
- Product management content in `komiti_academy` must stay grounded in software delivery reality, especially B2B, internal enterprise products, and Odoo/custom software implementations.

## Sources behind this skill

This skill is based on a synthesis of the most respected practitioner and learning sources in software product management:

- **SVPG (Silicon Valley Product Group)** and **Marty Cagan** — product operating model, empowered teams, discovery before delivery, and product vs project role boundaries.
- **Melissa Perri** and *Escaping the Build Trap* — outcomes over outputs, product operations, and strategy execution.
- **Teresa Torres** and *Continuous Discovery Habits* — continuous discovery and evidence-driven product work.
- **Eric Ries** and *The Lean Startup* — experimentation, MVP logic, and validated learning.
- **Jobs to Be Done** school, especially **Clayton Christensen** and **Bob Moesta** — problem framing and user motivation.
- **Reforge** — operator-led practice in product strategy, experimentation, growth, and product leadership.
- **Mind the Product** — practitioner community, conferences, and widely used field vocabulary.
- **Product School** — mainstream training provider and common market terminology used by practitioners and hiring managers.

Use these sources as a professional baseline, not as dogma. When sources disagree, prefer the interpretation that best matches enterprise software, Odoo/custom software constraints, and explicit role boundaries.

## Credentials and programs to recognize

No single universal gold-standard certification exists for product management. In practice, shipped outcomes, judgment, and operating model understanding matter more than badges. Still, these credentials and programs carry market signal:

### Product-management credentials

- **AIPMM CPM / CPMM** — strong formal credential path with broad lifecycle coverage; useful when you want a more standardized certification signal.
- **Pragmatic Institute product certifications** — well-known in B2B and go-to-market-heavy environments; useful when product decisions must stay commercial and practical.
- **Product School Certificate in Product Management** — widely visible and commonly recognized by hiring managers; useful as an accessible market-facing credential.

### Adjacent but not the same as product management

- **Scrum.org PSPO** — respected for product-owner and agile backlog work, but narrower than full product management.
- **Scrum Alliance CSPO** — common agile credential, but focused more on Scrum execution than on discovery and product strategy.
- **SAFe POPM** — relevant in scaled enterprise environments using SAFe, but framework-specific and not a full substitute for product-management practice.

### High-signal programs even without classic certification

- **Reforge** — strong practitioner signal for modern software product work, especially in growth, strategy, and experimentation.
- **SVPG training / masterclasses** — high credibility for product thinking and operating model, even though they are not classic certifications.
- **Mind the Product training** — respected practitioner learning path, especially for broader community exposure.

When writing or advising inside `komiti_academy`, distinguish clearly between `product management certification`, `product owner certification`, and `respected training program`.

## Abbreviation policy

- Do **not** use **PM** for product management in our context, because **PM** is reserved for **Project Manager**.
- Do **not** use **PrM** for product management in our context, because **PrM** is reserved for **Program Manager**.
- For the **discipline**, prefer the full term **product management** in formal documentation. If a short form is unavoidable, use **ProdMgmt**.
- For the **role**, prefer the full term **Product Manager** in formal documentation. If a short form is unavoidable, use **PdM**.
- When one document contains Project Manager, Program Manager, and Product Manager together, define all role names in full before using any abbreviation.

## Default lens for future work

Use this lens whenever you write, review, or explain product-management-related material:

1. Start from the problem, not the solution.
2. Separate outcomes from outputs.
3. Treat the roadmap as a sequence of bets and dependencies, not as a promise list.
4. Keep discovery and delivery connected; do not pretend discovery ends before implementation begins.
5. Show ownership, decision points, constraints, and measurable success criteria.

## Role boundaries you must keep explicit

- **Product management** — owns `what` and `why`: problem framing, prioritization, roadmap logic, expected outcomes, and trade-offs.
- **Project management / delivery management** — owns coordination of timeline, scope execution, dependencies, and follow-through.
- **Business analysis** — owns detailed requirement decomposition, business-rule clarification, process analysis, and documentation depth where that role exists separately.
- **UX / design** — owns interaction quality, user flows, and usability exploration; partners with product management in discovery.
- **Engineering management / tech lead / architect** — own technical design decisions, feasibility, implementation approach, and long-term maintainability.
- **Founders / executives / sponsors** — set business direction, constraints, investment logic, and escalation priorities.

Never collapse these roles into vague language. If one person performs multiple roles, state that explicitly.

## Terms to use precisely

Use the following distinctions consistently in future work:

- **Platform** — shared technical and business foundation reused across multiple apps, teams, or capabilities.
- **Product** — enduring capability or service that solves a user and business problem over time.
- **Project** — time-bounded implementation effort with a start, an end, and planned outputs.
- **Work package** — bounded scope slice inside a project or program, with its own deliverables and ownership.
- **Stream** — parallel lane of related work moving at the same time as other lanes.
- **Deliverable** — named output or artifact expected from a work package or project.
- **Roadmap** — ordered sequence of initiatives, bets, dependencies, and milestones.
- **Discovery** — work that clarifies problem, user, opportunity, and assumptions before committing heavily to build.
- **PoC** — proof of concept that tests technical or solution feasibility.
- **MVP** — minimum viable product that tests value with real users; do not confuse it with a low-quality first release.
- **As-Is / Current-State Assessment** — documented view of the existing environment or process.
- **To-Be / Target-State Solution Design** — documented view of the intended future solution.

When a user says something informal such as "glavni projekat" or mixes project and product language, normalize the terminology constructively.

## Product-management operating model for software development

Use this operating model as the default mental model:

### 1. Discovery

- Understand the user problem, business objective, operating context, and constraints.
- Identify stakeholders, owners, dependencies, and risks early.
- Validate assumptions with interviews, workflow observation, analytics, or artifact review.
- Frame the problem before discussing detailed implementation.

### 2. Strategy and prioritization

- Express the desired outcome first.
- Explain why this initiative matters now.
- Make prioritization logic visible through impact, urgency, dependency, risk reduction, revenue, cost, or adoption value.
- Use frameworks such as RICE, WSJF, Kano, or MoSCoW only as support tools, never as substitutes for judgment.

### 3. Delivery

- Keep product, design, and engineering aligned on scope intent and trade-offs.
- Distinguish between the main delivery stream and enabling work packages.
- Track assumptions that must be revalidated during implementation.
- Keep adoption, rollout, support readiness, and data implications in scope where relevant.

### 4. Launch and lifecycle

- Define what success looks like after release.
- Track adoption, usage, reliability, support load, and business impact.
- Revisit roadmap decisions based on evidence, not on sunk cost.

## What matters specifically in Odoo and custom software work

- **Configuration before customization** — first ask whether standard Odoo capabilities can solve enough of the problem before proposing custom code.
- **Integration and data migration are product scope** — do not treat them as mere technical afterthoughts.
- **Upgrade path is part of product quality** — every customization increases future maintenance and upgrade cost.
- **Adoption is organizational change** — enterprise software succeeds only when workflows, ownership, training, and expectations are aligned.
- **Architecture constraints affect product decisions** — involve architect or tech lead early when module dependencies, security, reporting, or multi-company behavior can reshape the solution.
- **Reporting and analytics are not “later extras”** — in enterprise systems they are often part of the core value proposition.

## How to write product-management content in KomITi Academy

When writing or revising tutorials, explanations, or diagrams about product management:

- Start by naming the operating model or delivery context.
- Explain what each stream or work package is responsible for.
- Name deliverables explicitly instead of hinting at them vaguely.
- Make dependencies visible when one stream enables another.
- Distinguish discovery artifacts from implementation artifacts.
- Prefer professional artifact names such as `Current-State Assessment`, `Target-State Solution Design`, `Infrastructure Solution Design`, `Roadmap`, `Work Package`, and `Decision Gate`.
- Tie each major activity to a reason: risk reduction, scope definition, technical enablement, user validation, adoption, or reporting.
- In roadmap explanations, clarify which work is foundational, which work is parallel, and which work depends on prior foundation.

## Common anti-patterns

Avoid these mistakes in future work:

- Treating product management as feature factory coordination.
- Presenting a roadmap as a fixed commitment instead of a controlled sequence of bets.
- Mixing product, project, stream, and work package language without definitions.
- Describing deliverables as tasks instead of outputs or artifacts.
- Ignoring data migration, reporting, support, or change management in enterprise software scope.
- Assuming custom development is automatically better than platform-native configuration.
- Writing vague statements such as “the team will work on this” without naming owner, scope, or intended result.

## What this research changed for KomITi future work

These are the most important lessons to preserve:

- Product management topics in `komiti_academy` must stay anchored in software delivery, not generic marketing language.
- Product-management explanations must always separate `what/why` from `how/when`.
- Roadmap sections should explain streams, dependencies, work packages, and deliverables explicitly.
- Enterprise and Odoo topics must account for governance, integration, migration, reporting, and adoption.
- Outcome language is stronger than activity language; prefer “what changes” over “what gets done.”
- When the user asks for naming help, default to professional artifact names instead of ad hoc phrasing.

## Quick checklist for future tasks

Before finalizing product-management-related content, check:

- Is the problem or objective stated clearly?
- Are roles and ownership boundaries explicit?
- Are stream, work package, project, and deliverable terms used correctly?
- Are dependencies and sequencing explained?
- Is the enterprise/Odoo context reflected where relevant?
- Is success described in terms of outcomes, not just shipped work?
- Are abbreviations explicit and consistent: `product management` or `ProdMgmt`, `Product Manager` or `PdM`?
