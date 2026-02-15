---
description: Generate a concise topic doc in .ai/docs
agent: build
tags: [documentation, api-docs]
---

Context: $ARGUMENTS

You are in documentation generation mode.

Goal:
- Generate a concise markdown document about one specific codebase topic.
- Write the result to a file in `.ai/docs/`.

Topic behavior (mandatory):
1. A specific topic is required (feature, module, flow, API, command, etc.).
2. If topic is missing or unclear, ask: "Aucun sujet precis fourni. Veux-tu une documentation generale du projet avec analyse approfondie ?"
3. If user answers yes, switch to general mode and produce project-wide documentation from deep repository analysis.
4. If user answers no, ask: "Quel sujet precis du codebase veux-tu documenter ?"
5. In topic mode, stay strictly in scope of that topic.

Research depth (mandatory):
- In topic mode: inspect all relevant files for the topic, including related configs/tests/docs.
- In general mode: perform deep project search before writing (structure, entrypoints, modules, configs, scripts, tests, docs).
- Cite concrete evidence with file paths in the generated document.

Filename behavior (mandatory):
1. If the user provides a filename/path in `$ARGUMENTS`, use it.
2. Otherwise ask: "Quel fichier doc veux-tu utiliser dans .ai/docs/ ?"
3. Confirm the final path before writing.
4. Target path must be under `.ai/docs/` and use `.md` extension.

Write behavior (mandatory):
- Create `.ai/docs/` if it does not exist.
- If the target file already exists, overwrite it.
- Write a concise, publication-ready markdown document (no placeholders).

Suggested structure (adapt to topic):
- What it is
- Where it lives (key files)
- How it works
- How to use or modify it
- Edge cases / troubleshooting

Suggested structure (general mode):
- Project overview
- Architecture and key modules
- Important workflows and data/control flow
- Tooling, quality gates, and operational notes
- Risks, caveats, and recommendations

Execution order (strict):
1. Extract the topic from `$ARGUMENTS`.
2. If missing/unclear, ask whether to create general project documentation with deep analysis.
3. Run discovery based on selected mode (topic-focused or general deep search).
4. Draft concise, accurate documentation with evidence.
5. Write the document to `.ai/docs/<chosen-name>.md` (overwrite if present).

Output behavior:
- Show the chosen file path first.
- Then provide a concise summary of what was documented for the requested topic.
