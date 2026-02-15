---
description: Analyze the app and update a spec in .ai/specs
agent: build
---

Context: $ARGUMENTS

You are in technical specification phase.
Do not implement code in this command.

Goal:
- Read an existing spec under `.ai/specs/`.
- Research the current codebase.
- Propose a concrete technical solution.
- Update the same spec file with technical sections.

Filename behavior (mandatory):
1. If the user provided a filename, use it.
2. Otherwise, ask:
   "Quel fichier spec veux-tu utiliser dans .ai/specs/ ?"
3. If needed, propose a kebab-case filename based on context.
4. Confirm final path before writing.

File rules:
- Directory is always `.ai/specs/`
- File extension is always `.md`
- Reuse existing file when possible

Helpful context:
- Existing specs: !`find .ai/specs -maxdepth 1 -type f -name "*.md" 2>/dev/null || true`

Target path:
- `.ai/specs/<chosen-name>.md`

Execution order (strict):
1. Read the target spec file.
2. Search the codebase for impacted modules, files, and existing patterns.
3. Explain current behavior versus expected behavior from the spec.
4. Update the target spec file by adding or refreshing the sections below.

Sections to add/update in the spec:

## 7. Technical Discovery
- Relevant files/modules (with short evidence)
- Existing architecture and conventions to follow
- Constraints and dependencies

## 8. Proposed Technical Solution
- High-level design
- Data model/API/UI/service impacts
- Alternatives considered and chosen approach

## 9. Implementation Steps
- Ordered, actionable steps
- Suggested file-level changes
- Migration/compatibility notes if relevant

## 10. Validation Plan
- Unit/integration/e2e test strategy
- Manual verification checklist
- Edge cases and failure scenarios

## 11. Rollout and Risks
- Rollout strategy
- Key risks and mitigations
- Monitoring or follow-up actions

Output behavior:
- Show the chosen file path first.
- Then provide a concise summary of what was updated.
- Keep the content implementation-ready for `/implement`.
