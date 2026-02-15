---
description: Run lint, prettier, typecheck, and tests
agent: build
---

Run repository quality checks using the `check_quality` tool.

Instructions:
1. Call the `check_quality` tool.
2. Return a concise summary with:
   - overall status
   - each step status (lint, prettier, typecheck, tests)
   - failing command(s) and first actionable error
