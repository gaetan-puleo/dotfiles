---
description: Clarify task and create initial spec in .ai/specs
agent: build
---

Context: $ARGUMENTS

You are in planning/clarification phase only.
Do not implement code in this command.

Goal:
- Clarify the task from context.
- Create a spec file in `.ai/specs/`.

Filename behavior (mandatory):
1. If the user already provided a filename in the prompt, use it.
2. Otherwise, ask:
   "Quel fichier spec veux-tu utiliser dans .ai/specs/ ?"
3. Propose a filename based on context using kebab-case.
4. Confirm final filename before writing.

Filename rules:
- Directory is always `.ai/specs/`
- Lowercase kebab-case
- Keep concise and meaningful
- Ensure `.md` extension
- If the name already exists, propose a safe variant (for example `-v2`)

Target path:
- `.ai/specs/<chosen-name>.md`

Write the spec with this structure:

# <Title>

## 1. Summary
- Problem to solve
- Expected outcome
- Business/user value

## 2. Scope
### In scope
- ...
### Out of scope
- ...

## 3. Assumptions & Constraints
- Technical constraints
- Product constraints
- Dependencies

## 4. Acceptance Criteria
- [ ] Criterion 1 (testable)
- [ ] Criterion 2 (testable)
- [ ] Criterion 3 (testable)

## 5. Risks
- Risk
- Impact
- Mitigation

## 6. Open Questions
- ...

Output behavior:
- Show the chosen file path first.
- Then show a concise summary of what was written.
- Keep content clear, practical, and implementation-ready for `/spec`.
