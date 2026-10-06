# Public contents review

Status: exact candidate review passed; the user now authorizes public repository creation after this review. Only fresh history containing the reviewed allowlist may be published. Current Mac activation is separately included in that task.

## Reviewed boundary

Read each current file in the inventory below, including hidden candidate files, as text. Checked for candidate symlinks and obvious private key/token patterns, personal absolute paths, email addresses, and numeric network addresses. No embedded credentials, private endpoints, real histories, ledger records, private connection configuration, or symlinks were found in those reviewed files. Pattern checks supplement the content review; they do not guarantee absence of every possible secret.

The public upstream repository links and Homebrew tap identify published projects intentionally. Tool versions, archive digests, image digests, and synthetic fixture names are test provenance rather than credentials. The device profile name records a deliberate machine class, not a network target.

The existing `.git` directory and all inherited history are entirely unreviewed. This review says nothing about what that history contains. Do not reuse, stage, commit, configure a remote, push, or publish it based on this document. User authorization must cover the final reviewed public files separately.

## Exact candidate inventory

The files below are publication candidates, not a staging command. New files under an allowlisted directory still require review; a directory allowlist is never permission to publish arbitrary later additions.

| Group | Reviewed files |
| --- | --- |
| Project guidance | `README.md`, `AGENTS.md`, `RUNBOOK.md`, `decisions.jsonl`, `.gitignore`, `.dockerignore` |
| Shared startup and Git | `home/.zshenv`, `home/.zprofile`, `home/.zshrc`, `home/.gitconfig` |
| Shell features | `home/.config/shell/path.zsh`, `home/.config/shell/aliases.zsh`, `home/.config/shell/functions.zsh`, `home/.config/shell/plugins.zsh`, `home/.config/shell/alias-tips.zsh` |
| Preferences | `home/.config/atuin/config.toml`, `home/.config/git/ignore`, `home/.config/ghostty/config`, `home/.config/ripgrep/config`, `home/.config/starship.toml` |
| Portable guidance | `home/.codex/AGENTS.md` |
| Scratchpad skill | `home/.agents/skills/scratchpad-memory/SKILL.md` |
| Personal ledger skill | `home/.agents/skills/personal-ledger/SKILL.md`, `home/.agents/skills/personal-ledger/agents/openai.yaml`, `home/.agents/skills/personal-ledger/references/statements.md`, `home/.agents/skills/personal-ledger/references/evidence.md` |
| Deliberate machine difference | `machines/mac-studio.zsh` |
| Mac package requirements | `packages/Brewfile` |
| Disposable validation | `tests/container/Dockerfile`, `tests/container/install-tools.sh`, `tests/container/install-plugins.sh`, `tests/container/verify.ts`, `tests/container/history-pty.go` |
| Documents added in this review | `PUBLIC-CONTENTS.md`, `ACTIVATION.md`, `SKILL-SOURCES.md` |
| Synthetic override examples | `examples/.gitconfig.local.example`, `examples/.zshenv.local.example`, `examples/.zshrc.local.example` |

Final integration review includes the completed activation/source documents, synthetic override examples, and updated project/device guidance. The examples contain only comments and synthetic placeholders, including an example.invalid address. The exact reviewed hashes are recorded locally in excluded `outputs/public-files.sha256`; any later change requires another review and snapshot. This is candidate content review, not approval of Git history, activation, or publication.

The native macOS rehearsal revision reviews two shared shell changes (Homebrew completion paths and explicit automatic icons for tree), its updated synthetic alias assertion, and the setup/results documentation and decisions. They add only generic paths, public software provenance, synthetic tests, and measured outcomes. VM disks, temporary SSH material, host state and detailed logs remain excluded. Refresh the same exact 39-file hash snapshot after these changes; native test success does not authorize publication or live host activation.

## Private and generated exclusions

| Keep outside public contents | Reason |
| --- | --- |
| `work/`, `outputs/`, `.git/` | Local artifacts and unreviewed history |
| `.gitconfig.local`, `.zshenv.local`, `.zshrc.local` | Identity, credentials, or device-private overrides |
| Live `.config/shell/machine.zsh` | Locally selected integration; distribute the reviewed profile source separately |
| SSH keys, SSH configuration, authorized keys, known hosts | Credentials and private connectivity/access details |
| Zsh/Atuin histories, Atuin keys, session, databases | Command history and authentication |
| Direnv environment state, real `.env`/`.envrc`, private project settings | Secrets and executable project-specific environments |
| App profiles, browser state, account sessions, license keys | Private and generated application state |
| MCP connections, service addresses, signing-key paths, captured service records | Private integrations and user data |
| Shell caches, completion dumps, tool downloads, installed plugin trees | Regenerable dependency/runtime state |

Never bulk-copy a home or configuration directory. Ignore rules are defense in depth; they do not remove already tracked files or secrets from existing history.

## Runtime output and remaining decisions

- The preserved prompt displays the current hostname and project context at runtime. The configuration contains no actual hostname, but screenshots and terminal transcripts need their own privacy review.
- `suggest-aliases` reads the user's real Atuin history only when deliberately invoked. Its live output can contain private command arguments. Do not run it to generate public documentation; tests use synthetic history only.
- Scratchpad and personal-ledger instructions currently ship as local snapshots. `SKILL-SOURCES.md` records the verified pinned Scratchpad source and the public ledger skill-package gap. Ledger upstream packaging remains unresolved; retain its reviewed snapshot until that gap is addressed. A skill does not establish an MCP connection or authorize access to service data.
- Recheck the exact final inventory, required upstream notices, example override placeholders, and links immediately before requesting publication approval. Privacy approval, software validation, device activation, and publication are separate outcomes.
