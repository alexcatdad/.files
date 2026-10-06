# Dotfiles review runbook

## Authorized repository rename

The user requests the standard name `dotfiles`. Rename the existing public repository with `gh repo rename dotfiles --repo alexcatdad/.files --yes`, update origin to `git@github.com:alexcatdad/dotfiles.git`, update current documentation links, and append the outcome decision. Review and commit only the changed public documents, push main, then verify the repository name, visibility and remote head. No device configuration changes are needed. To reverse a rename, obtain task authorization and use the same sequence with the prior name.

## Authorized publication and current Mac activation

Completed under the user's authorization: the public `dotfiles` repository contains exactly 39 reviewed files in fresh history, and the current Mac baseline is active. Inherited Git metadata and rollback state were preserved privately outside the project. Public commits use GitHub no-reply authorship. The following sequence records the performed operation and is not authorization for another target.

The selected 18 destinations made 17 writes and one identical-file no-op; a repeated application made zero writes. Seven original symlink objects were backed up without modifying their targets. Existing identical ledger skill files and private startup overrides were retained. Three missing Zsh plugins were installed without upgrades; the verified manually installed ChatGPT app was preserved. A native completion audit required removal of the group-write bit from one Homebrew completion parent directory; its prior mode and ownership were recorded privately for guarded rollback. All 18 live checks passed with synthetic fixtures. Real connectivity, visual appearance, licenses, accounts, and permissions remain separate acceptance checks.

1. Refresh public review and hashes after documentation changes; stage individual reviewed paths only. Create the public repository and push only the fresh main branch.
2. Confirm target paths/owners/includes and freeze candidate hashes. Keep private backups and journal outside this checkout. Replace old symlink objects, never their targets. Retain an identical existing skill as a no-op and avoid duplicating the existing ledger skill in another discovery directory.
3. Preserve live Git identity and approved authentication helpers in the existing private local include when needed; never import their values into the public source. Reconcile global instructions using the reviewed portable defaults.
4. Install missing packages without upgrades or cleanup. A verified manually installed app already satisfying a requirement must not be overwritten merely to register a cask. On this target, preserve the existing app using the documented `HOMEBREW_BUNDLE_CASK_SKIP=chatgpt` environment flag and record its unmanaged status privately; this is not a change to the shared Brewfile.
5. Apply dependencies/configuration before startup entrypoints, using journaled atomic per-file copies and no-op equality checks. Verify native completion security, fresh shell behavior with synthetic history, required runtimes and native Ghostty configuration. Do not read real history or enroll/change Tailscale or SSH.
6. Record actual activation/publication separately, retain private rollback state, update status documentation, review the precise follow-up diff, and push only those reviewed changes. Visual appearance, account/license/permission state and fresh agent discovery remain manual acceptance checks.

## Authorized headless macOS rehearsal

The user authorized installing Tart and downloading a disposable macOS test image. This exception permits the host VM tool installation; candidate activation remains confined to the disposable guest. Use a task-specific `TART_HOME` on a volume with sufficient capacity. The initial external-volume pull stalled; after the user's disk cleanup, the retry uses excluded `work/tart-state` on internal APFS. The partial external disk was removed through an exact three-file allowlist after its process exited.

The Homebrew Tart formula failed evaluation under the installed Homebrew DSL. The documented release-archive fallback is Tart 2.40.1, SHA-256 `363e2701154a8155cbc1bb6d845430c9b42697d2a186bc49574471ca2877db46`. It is extracted in task storage without changing the host PATH. The downloaded prepared image is `ghcr.io/cirruslabs/macos-tahoe-base`, manifest digest `sha256:87f3aa5ce21b5c876268f233bdfecf38b4c2a8116fe9bbb718e714cbae187377`; inventory its preinstalled packages instead of describing it as factory-fresh.

```sh
# Point this at the verified release app; use only task-owned VM storage.
dotfiles_tart=/path/to/tart.app/Contents/MacOS/tart
export TART_HOME="$PWD/work/tart-state"
export TART_NO_AUTO_PRUNE=1
"$dotfiles_tart" clone --concurrency 16 ghcr.io/cirruslabs/macos-tahoe-base@sha256:87f3aa5ce21b5c876268f233bdfecf38b4c2a8116fe9bbb718e714cbae187377 dotfiles-rehearsal
"$dotfiles_tart" set dotfiles-rehearsal --cpu 4 --memory 6144
"$dotfiles_tart" run --no-graphics --no-audio --no-usb-accessories --no-clipboard dotfiles-rehearsal
```

Use the image guest agent to inventory before any shell startup execution, transfer the exact allowlisted candidate archive, and authorize only a freshly generated experiment SSH public key. SSH uses task-owned known-hosts and key files, with agent forwarding disabled and host SSH configuration ignored. Local harnesses in excluded `work/` are disposable rehearsal code, not a new deployment framework. The shell runner delegates to reviewed startup files through temporary wrappers and redirects history/Atuin data to synthetic temporary fixtures before interactive history loading.

1. Check capacity and installed tooling; install Tart with Homebrew auto-update and automatic cleanup disabled. Do not upgrade unrelated packages.
2. Inspect the installed CLI, record its version, select a minimal official Cirrus Labs macOS image and record its resolved digest. Use task-owned storage and no host home mounts, clipboard sharing, or SSH agent forwarding.
3. Boot headlessly and connect with task-owned SSH state. Do not modify host SSH configuration, network privacy settings, or credential stores. Stop and report any permission or virtualization blocker.
4. Transfer only reviewed candidate files. Inventory guest state before installing missing requirements without upgrades. Rehearse per-file activation, identical second-run no-ops, interruption recovery, and guarded rollback using synthetic prior state.
5. Keep detailed evidence in excluded `outputs/`. Separate command-line macOS results from GUI, hardware, licensing, permission, and real Tailscale acceptance. Stop the owned VM after testing; retain or remove owned images explicitly, never prune unrelated resources. No publication or live host activation.

Status: approved baseline preparation and isolated Docker validation. Live activation and publication remain outside this phase.

## Agent instruction maintenance

For activation/publication preparation, use `ACTIVATION.md` for exact destinations, ownership, drift checks, backup, and rollback; `PUBLIC-CONTENTS.md` for the reviewed individual public files; and `SKILL-SOURCES.md` for upstream skill provenance. Prepare these documents locally, validate references and append the decisions. Do not perform the rollout or Git operations while preparing them. Documentation-only changes do not require the container suite.

1. Maintain project-specific rules in root `AGENTS.md`; portable defaults belong in `home/.codex/AGENTS.md`.
2. Check both against accepted decisions and current authorization. Global defaults must not import this project's temporary Git/publication freeze or imply automatic device changes.
3. Keep both files generic and free of machine identities, private endpoints, credentials, and personal paths. Update README placement instructions and record decisions.
4. For documentation-only changes, review scope, links, and privacy; do not rebuild the container suite.
5. Deployment is a separate authorized step. Inspect the destination Codex home and existing `AGENTS.md`/`AGENTS.override.md`; preserve and reconcile existing instructions. Do not install Codex on other devices just to distribute guidance. Verify loaded instructions in a fresh session after an authorized deployment.

## Portable skill maintenance

1. Select reusable personal skills by their actual scope. The device-wide candidate includes Scratchpad memory and personal ledger. Frontend design, React/Next.js, and other stack-specific skills belong in the relevant project. Infrastructure-specific homelab/workspace skills remain separate.
2. Prepare plain candidate files under `home/.agents/skills/`, copying only inspected entrypoints, required references, UI metadata, and license/attribution files. Do not copy a whole skills directory, plugin caches, symlinks to host files, executable installers, MCP configuration, or generated private state.
3. Use the maintained source and reviewed revision in `SKILL-SOURCES.md`; preserve the ledger snapshot while its upstream skill package is unresolved. Preserve source instructions and provenance. For third-party skills retain license notices; unresolved source/license details must be resolved before publication. Do not silently substitute a newly downloaded version for the reviewed local copy.
4. Review skill frontmatter, relative references, symlinks, and file contents for private values. Parse JSONL with jq or Bun. Use shell, Bun/TypeScript, or Go for any validation helpers; do not invoke the Python skill validator under the user's current preference. This is documentation packaging; do not rerun shell/container tests.
5. During a separately authorized rollout, merge selected skills into the user's personal skill directory, normally `~/.agents/skills/`. Inspect existing names and plugin equivalents before overwriting or duplicating a skill. Check discovery in a fresh session. Installing instructions does not connect an MCP server; configure and verify private connections separately only when authorized.

## Container validation

The user authorized a complete setup test using Docker or Apple containers. Use the existing OrbStack Docker daemon; the Apple container CLI is not installed.

The runner is `tests/container/verify.ts`, executed with Bun. Its actual pseudo-terminal Ctrl-R test uses `tests/container/history-pty.go`, compiled during image setup with Go module and toolchain downloads disabled. Alias reminders are plain Zsh. Python is absent from the candidate package requirements and is checked as absent in the test image. Parse changed Zsh before execution; preserve the behavioral suite and use synthetic fixtures.

1. Build only from the allowlisted context in `.dockerignore`. Never send `.git`, reports, host histories, credentials, or the live home to Docker.
2. Use official Debian ARM64, native Debian packages, and pinned official tool/plugin downloads. Record checksums for downloaded artifacts.
3. Run as a disposable non-root user. Copy candidate files into the image; do not bind-mount the host home or Docker socket. Tests run with `--network none`, no capabilities, and no new privileges.
4. Exercise login/non-login/non-interactive shells, aliases, plugin loading, history search, fnm switching, direnv load/unload, prompt rendering, and selected functions. Verify Go by compiling and running a synthetic standard-library program with module and toolchain downloads disabled. Fixture Git repositories and histories may be created only in the disposable container.
5. Remove each test container after exit using `--rm`. Retain only the named test image and build cache for reproduction; do not prune unrelated resources.
6. Inspect Mac-specific files statically and validate Ghostty configuration using the installed validator when available. Linux tests cannot prove macOS startup, GUI appearance, or real SSH/Tailscale connectivity.
7. Save results in `outputs/container-validation.md`. No Git operations, host installs, live relinking, or service changes.

## Current review

For desktop app recommendations, inventory application bundle names under `/Applications` and `~/Applications`, plus installed Homebrew cask names. Read only app/package metadata; do not launch apps, inspect documents/browser profiles, infer usage from installation, or copy app state. Keep the detailed inventory in local `outputs/`. Recommend a reviewed desktop core separately from development, hardware, communication, and optional apps. Confirm installation sources before drafting any approved app manifest. Recommendations do not authorize package installation or removal.

1. Use non-login shell probes. Read startup files as text before considering execution.
2. Check live file existence, symlink destinations, includes, and installed package metadata. Do not read credential files, keys, histories, or environment databases.
3. Check syntax with `zsh -f -n FILE`; this parses without executing the inspected file. Do not launch the live interactive startup: it can download plugins and write history/cache state.
4. Record findings and proposed keep/simplify/omit choices in `outputs/capture-plan.md`.
5. Record consequential decisions in `decisions.jsonl`. Keep reports free of secrets, identities, device identifiers, and host access details.
6. The original review boundary was satisfied by the user's baseline approval and container-test request. Candidate drafting/testing is now authorized; stop before live activation or publication.

## Later phases, requiring authorization

- Separate dependency inspection, installation, and upgrades. During authorized setup, check the inspected Brewfile with `brew bundle check --no-upgrade --file=packages/Brewfile`; install missing requirements with `brew bundle --no-upgrade --file=packages/Brewfile`. Only perform explicit upgrades when authorized. `--no-upgrade` is not a version lock and does not disable an app's own updater. Never chain a failed check into automatic installation during an inventory.

- Homebrew 7 requires explicit trust before loading third-party tap packages. At an authorized setup, tap the two approved sources if absent (`brew tap oven-sh/bun` and `brew tap alexcatdad/tap`), inspect their Bun formula and USB Boop cask, and trust only those entries with `brew trust --formula oven-sh/bun/bun` and `brew trust --cask alexcatdad/tap/usb-boop`. Trust is private package-manager state, not a public dotfile. Do not trust entire taps automatically. Earlier Homebrew versions without `brew trust` need their supported source-review procedure; do not upgrade Homebrew just to add this command. The macOS VM rehearsal detected this prerequisite before the bundle could install.

- Verify native completion permissions before shell acceptance. Load `compaudit` in `zsh -f` with the reviewed completion paths and inspect its reported paths/ownership. The prepared macOS VM had a guest-owned, group-writable `/opt/homebrew/share`; explicit `chmod g-w /opt/homebrew/share` during guest setup fixed it. On another target, repair only an inspected, authorized path; do not copy this permission change blindly or recursively. Never disable completion security checks or add permission repairs to startup files. A clean `compaudit` is required before verifying interactive startup and Ctrl-R.

- The accepted Mac desktop set is in `packages/Brewfile`: Zen, ChatGPT, Wispr Flow, Proton Pass, Raycast, Ghostty/font, BetterDisplay, usb-boop, and Tailscale. Verify cask names, sources, and OS/architecture requirements before rollout; use `brew bundle --no-upgrade --file=packages/Brewfile` only during an authorized setup. Never run cleanup implicitly. Keep optional apps separate and do not apply GUI manifests to headless machines. Check account/license activation, permissions, Zen default-browser selection, and application behavior as separate private device acceptance steps.

- Review the candidate files and isolated results before activation. Never bulk-copy a home or `.config` directory; retain live settings until a rollback/activation plan is approved.
- Review public candidates for credentials and personal details before any staging or commit. No Git initialization, commits, remotes, pushes, or GitHub creation until publication is authorized.
- Before Git work, inspect existing `.git` metadata: this workspace already contains a `.git` directory. Do not reuse, delete, or publish inherited history automatically.
- Plan reversible activation separately. Check Paw Proxy consumers before stopping or uninstalling it.
- Inventory other machines before synchronization; no scheduled maintenance during this review.
