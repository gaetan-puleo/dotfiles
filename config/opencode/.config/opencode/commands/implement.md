---
description: Implement a solution from a spec in .ai/specs
agent: build
---

Context: $ARGUMENTS

You are in implementation phase.
Use the spec file as the source of truth.

Goal:
- Read the technical spec in `.ai/specs/`.
- Implement the solution in the codebase.
- Validate with relevant checks/tests.

Filename behavior (mandatory):
1. If the user provided a filename, use it.
2. Otherwise, ask:
   "Quel fichier spec veux-tu utiliser dans .ai/specs/ ?"
3. If needed, propose a kebab-case filename based on context.
4. Confirm final path before proceeding.

File rules:
- Directory is always `.ai/specs/`
- File extension is always `.md`
- The spec must exist before implementation

Helpful context:
- Existing specs: !`find .ai/specs -maxdepth 1 -type f -name "*.md" 2>/dev/null || true`
- Current branch: !`git status --short --branch`

Target path:
- `.ai/specs/<chosen-name>.md`

Execution order (strict):
1. Read the target spec file fully.
2. Implement only the in-scope items defined in the spec.
3. Follow existing project conventions and patterns.
4. If the spec is ambiguous, list the blocker and choose a reasonable default.
5. Add or update tests according to the validation plan in the spec.
6. Run relevant checks/tests and fix issues when possible.

Final output requirements:
- Chosen spec file path
- Files changed
- What was implemented
- Test/check commands run and results
- Remaining follow-ups or known limitations
