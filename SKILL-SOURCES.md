# Portable skill sources

Reviewed 2026-10-06 through read-only GitHub repository metadata, complete trees,
branch revisions, and public source files. These references identify provenance;
they do not install instructions, connect an MCP server, or authorize data access.
Runtime capabilities must still be discovered before use.

## Scratchpad memory

Maintained source: [alexcatdad/scratchpad](https://github.com/alexcatdad/scratchpad).
Reviewed commit: `868d785b0abc96217d8c8cffcbe6d88ba26cc44c`.

The upstream package contains one file:
[skills/scratchpad-memory/SKILL.md](https://github.com/alexcatdad/scratchpad/blob/868d785b0abc96217d8c8cffcbe6d88ba26cc44c/skills/scratchpad-memory/SKILL.md).
Its Git blob SHA is `57c23d50ef23717267301bb5b293d9d54d8890aa`;
the candidate `home/.agents/skills/scratchpad-memory/SKILL.md` matches that blob.
There are no bundled relative references or executable installers in that package.
Its external documentation links are supporting references, not additional skills.

The repository owns future changes. Keep the candidate as a reviewed installation
snapshot until separately authorized rollout; do not independently rewrite it and
leave the upstream source divergent. A URL alone is not an installed Codex skill.

## Personal ledger

Verified public service source:
[alexcatdad/personal-ledger-mcp](https://github.com/alexcatdad/personal-ledger-mcp).
Reviewed commit: `d0bef66de7fb95a8ceaf4b40514472caa6f176e7`.
Its [README](https://github.com/alexcatdad/personal-ledger-mcp/blob/d0bef66de7fb95a8ceaf4b40514472caa6f176e7/README.md)
describes the ledger service. The complete tree at that revision contains no
`SKILL.md` or distributable personal-ledger skill package.

The current candidate uses a reviewed local skill snapshot. Its statement and
evidence references are required files; the UI metadata is also retained. The
public README does not document the `search_ledger`, `get_ledger_evidence`, or
statement-workspace capabilities described in the snapshot. This is an upstream
documentation/package gap, not proof that any connected deployment has or lacks
those tools. Do not substitute the README for the skill or downgrade its workflows
to match the older public source.

Before switching to repository-sourced installation, place the complete reviewed
skill package in the appropriate maintained source repository under a separately
authorized change, confirm its public scope, and record its immutable revision
here. Until then, retain the local snapshot and flag its upstream provenance as
unresolved. No private deployment checkout or configuration was read for this
source review.

## Reviewed candidate checksums

SHA-256 values identify the exact reviewed snapshots, not authentication or
compatibility with every server version:

| Candidate file | SHA-256 |
| --- | --- |
| `home/.agents/skills/scratchpad-memory/SKILL.md` | `b1bc29b2c39784b7f731e7b9e91bdd6899451e0d8cec753d0b04f07957802634` |
| `home/.agents/skills/personal-ledger/SKILL.md` | `19c789e05295525a0d88cfa1994594af9d95176258a6c2487ec3fc3a9df7f8ad` |
| `home/.agents/skills/personal-ledger/agents/openai.yaml` | `57497ff48245888518c887533e02907507840e4ebeb6b8c0b8e1bfb4f41b7f36` |
| `home/.agents/skills/personal-ledger/references/evidence.md` | `74bb1ae27b9d449fb7030ea6ee5a818e4593ba148b411bf349fae0ed491722e9` |
| `home/.agents/skills/personal-ledger/references/statements.md` | `eb2b38e51034c3ecf18e665aee50ef39d07148222e77f206a38a70d7f00b3bbe` |

## Explicit update review

1. Identify the maintained repository and an immutable commit. Inspect its complete
   skill directory before obtaining files; never select an unrelated project or
   silently follow a changing `main` branch during installation.
2. Obtain only the entrypoint, required relative references, UI metadata, and
   applicable attribution/license files into a local review area. Inspect new
   dependencies, scope, and authorization rules; do not execute downloaded code.
3. Compare the reviewed upstream files with the existing candidate using ordinary
   file diffs. Preserve project-specific skills in projects. Do not bundle plugin
   caches, credentials, connection configuration, financial data, or memory records.
4. Update candidate files, this source record/checksums, and the decision log only
   after accepting the exact changes. Documentation-only updates need reference,
   structure, and privacy review rather than another container run.
5. Installation remains a separately authorized device operation. Inspect existing
   same-name skills, preserve them for rollback, and check discovery after rollout.
   Configure private MCP connections separately. Never fetch or update skills in
   shell startup, and do not introduce a skill synchronization daemon or manager.
