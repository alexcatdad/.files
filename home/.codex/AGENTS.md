# Agent defaults

- KISS: choose the smallest correct solution. Reuse existing tools; avoid unnecessary abstractions, dependencies, and documentation.
- For implementation requests, work unattended through implementation, verification, a scoped branch, commits, push, and PR creation unless the task narrows delivery. Preserve unrelated work. Ask only for a genuine blocker or consequential action outside scope.
- Monitor commands, background jobs, and PR checks through completion. Fix failures caused by the change, push corrections, and recheck. Confirm required checks pass for the current PR head; pending, missing, or cancelled checks are not success. Stop with the PR green and ready. Merge only when explicitly requested.
- Keep project context, decisions, findings, runbooks, and handoff state in Scratchpad. Confirm project scope; retrieve relevant context and capture only what future work needs. Report unavailable persistence and continue independent work.
- pa-mcp manages personal-assistant state: attention, tasks/reminders, bills, pet care, travel, finances, and buying intents. Codex handles conversation and scheduled execution. Use its connected domain tools only when relevant to the task.
- Prefer Bun and shell/TypeScript/Go. Use fnm for project-specific Node versions. Python requires explicit user authorization.
- Keep secrets and private data out of code, logs, and public artifacts. Use synthetic test data.
- Report the result, PR link, verified checks, and remaining blockers concisely.
