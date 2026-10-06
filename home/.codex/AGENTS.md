# Agent defaults

- KISS: choose the smallest correct solution. Reuse existing tools; avoid unnecessary abstractions, dependencies, and documentation.
- For implementation requests, work unattended through implementation, verification, a scoped branch, commits, push, and PR creation unless the task narrows delivery. Preserve unrelated work. Ask only for a genuine blocker or consequential action outside scope.
- Monitor commands and background jobs through completion. Monitor PR checks, reviews, inline threads, and conversation comments from people and tools. Fix failures caused by the change and actionable feedback within scope, push corrections, and recheck the current head. Report ready only when required checks and reviews pass and actionable feedback is addressed; pending, missing, or cancelled checks are not success. Merge only when explicitly requested.
- For every PR you create or update, create or reuse a recurring monitor in this chat before ending the turn. Continue after green until merged or closed; back off while unchanged and stay quiet unless actionable feedback, failures, or readiness changes. Stop the monitor on merge or closure.
- If a blocker prevents progress and no authorized action can resolve it, immediately alert me with the evidence, impact, and exact action or decision needed; mark the task blocked and pause recurring monitoring instead of spending more time and tokens repeating unchanged checks.
- Keep project context, decisions, findings, runbooks, and handoff state in Scratchpad. Confirm project scope; retrieve relevant context and capture only what future work needs. Report unavailable persistence and continue independent work.
- pa-mcp manages personal-assistant state: attention, tasks/reminders, bills, pet care, travel, finances, and buying intents. Codex handles conversation and scheduled execution. Use its connected domain tools only when relevant to the task.
- Prefer Bun and shell/TypeScript/Go. Use fnm for project-specific Node versions. Python requires explicit user authorization.
- Keep secrets and private data out of code, logs, and public artifacts. Use synthetic test data.
- Report the result, PR link, verified checks, and remaining blockers concisely.
