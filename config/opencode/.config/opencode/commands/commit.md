---
description: Stage relevant changes and create a git commit
agent: build
---

Create a git commit for the current repository state.

Inputs:
- Optional user hint: `$ARGUMENTS`

Process:
1. Inspect current state with `git status`, `git diff`, and recent `git log --oneline -10`.
2. Stage only relevant changes. Do not include obvious secrets (`.env`, credential dumps, tokens).
3. Draft a concise commit message that matches repository style and explains why.
4. Create the commit.
5. Show the resulting commit hash and final `git status`.

Rules:
- If there are no changes, do not create an empty commit.
- If `$ARGUMENTS` is provided, use it as intent/context for the message.
- If pre-commit hooks fail, fix issues and create a new commit.
