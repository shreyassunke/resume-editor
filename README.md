# Shreyas Sunke — Resume System

This repo holds one master resume and three targeted base versions. The goal is a
repeatable system: **3 base versions, ~15 minutes of tailoring per application.**
Anything more is over-engineering.

## Files

| Path | Purpose |
| --- | --- |
| [`resume.tex`](resume.tex) | Master/base resume. Source of truth. Edit facts here first, then propagate. |
| [`v1-swe-bigtech/`](v1-swe-bigtech/) | Software Engineering / Big Tech version. |
| [`v2-fintech-datascience/`](v2-fintech-datascience/) | Fintech / Data Science version. |
| [`v3-vc-startup/`](v3-vc-startup/) | VC / Startup / Generalist version. |

Each version folder contains its own `resume.tex` plus a `README.md` explaining the
version's purpose, the ATS keywords it leads with, and a cheat sheet for tweaking it
toward sub-roles within that segment.

## The three versions

| Version | Targets | Leads with |
| --- | --- | --- |
| **V1 — SWE / Big Tech** | SWE Intern, Backend, Full-Stack @ Amazon, Microsoft, Tableau, AI startups | ATLAS technical depth, HUMN AI architecture, full-stack specifics |
| **V2 — Fintech / Data Science** | Fintech SWE, Data Science, Quant/Analytics @ Stripe, Remitly, Accolade, Gravity Payments | Stripe integration, KTP financial infrastructure, DSAIL data work |
| **V3 — VC / Startup** | VC Intern, Founding Engineer, Product+Eng generalist @ Madrona, Flying Fish, Series A/B | ATLAS as a venture, ProfessorAI founding story, HUMN AI operator narrative |

## How to use this (the 15-minute rule)

1. **Pick the closest base version** for the job's segment.
2. **Open that folder's `README.md`** and read the sub-role cheat sheet.
3. **Move 2-3 bullets up or down** to match the job description's emphasis. Do not
   rewrite the whole resume.
4. **Compile** and submit.

Suggested order to perfect them: **V1 first** (most applications), then **V2**, then
**V3** last (VC recruiting is relationship-driven; the pitch matters more than the
resume there).

## Compiling

Each `resume.tex` uses the Jake Gutierrez template and compiles with `pdflatex`:

```bash
cd v1-swe-bigtech
pdflatex resume.tex
```

## Open items

- The DSAIL research bullet is a placeholder in the master and in V2. Fill in the
  dataset, method, tools, and outcome before submitting V2 to data science roles.
- The ProfessorAI founding-story metrics in V3 need real numbers (students reached,
  courses sold, revenue). Placeholders are marked in that file.
