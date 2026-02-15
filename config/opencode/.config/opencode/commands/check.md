---
description: Check scope, tests, eslint, and prettier gates
agent: build
---

Context: $ARGUMENTS

You are running a strict pre-delivery quality gate.

Goal:
- Ensure local changes stay within scope from an existing spec in `.ai/specs/`.
- Verify tests pass.
- Verify ESLint passes.
- Verify Prettier passes in check mode.
- Return a strict PASS/FAIL verdict.

Hard constraints:
- Do NOT create or modify files in `.ai/specs/`.
- Do NOT implement or edit product code in this command.
- Do NOT run auto-fix commands (`eslint --fix`, `prettier --write`, etc.).
- Treat missing scripts/tools as FAIL (never silently skip).

Spec selection (mandatory):
1. If `$ARGUMENTS` includes a spec filename/path, use it.
2. Otherwise ask: "Quel fichier spec veux-tu utiliser dans .ai/specs/ ?"
3. Confirm final path before running checks.
4. The file must exist under `.ai/specs/` and end with `.md`.

Helpful context:
- Existing specs: !`find .ai/specs -maxdepth 1 -type f -name "*.md" 2>/dev/null || true`
- Current branch/status: !`git status --short --branch`
- Changed files: !`git diff --name-only && git ls-files --others --exclude-standard`

Execution order (strict):
1. Read the chosen spec and extract:
   - `## 2. Scope` -> `In scope` and `Out of scope`
   - `## 4. Acceptance Criteria`
2. Inspect local changes:
   - `git status --short`
   - `git diff --staged`
   - `git diff`
3. Run scope audit:
   - Map each changed file/hunk to in-scope items when possible.
   - Flag any change that aligns with out-of-scope items.
   - If uncertain, mark as `NEEDS_REVIEW` (counts as FAIL).
4. Detect package manager and scripts from lockfiles and `package.json`:
   - Prefer project scripts when available.
   - Tests: `test` (or explicit `test:*` scripts if `test` is missing).
   - ESLint: `lint` or `eslint`.
   - Prettier check: `format:check`, `prettier:check`, or equivalent.
   - If scripts are missing, run non-fixing direct checks only when tool exists:
     - ESLint: `<runner> eslint .`
     - Prettier: `<runner> prettier --check .`
5. Run and record all required checks with exit code and key output:
   - tests
   - eslint
   - prettier check

Final output format (mandatory):
- Spec file used: `<path>`
- Scope audit:
  - In-scope evidence
  - Out-of-scope findings (or `none`)
  - Unclear findings (or `none`)
- Checks:
  - Tests: `PASS|FAIL` + command used
  - ESLint: `PASS|FAIL` + command used
  - Prettier: `PASS|FAIL` + command used
- Final verdict:
  - `PASS` only if no out-of-scope/unclear findings and all checks pass
  - otherwise `FAIL`
- If verdict is `FAIL`, provide a short action list to reach `PASS`.
