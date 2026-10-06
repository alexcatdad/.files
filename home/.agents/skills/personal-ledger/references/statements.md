# Statement reconciliation

Use this procedure when importing or reconciling a complete bank statement. The
assistant/client parses CSV/PDF; the server receives structured evidence and
explicit mappings. Discover current schemas for `stage_statement_import`,
`get_statement_import`, `preview_statement_import` and `commit_statement_import`.
If these are unavailable, prepare a reconciliation proposal without replacing the
workflow with unchecked bulk posting.

## Prepare source coverage

Inspect the supplied statement and query current accounts, dated transactions,
observations, adjustments, budget history and `query_statement_links`. Request
missing account/currency coverage, starting/ending balances or transfer counterpart
statements when these prevent exact reconciliation. Preserve source identities,
references and original-file SHA256; do not guess CSV layouts, dates or amounts.

Each statement covers one account and its complete period. Opening balance is
immediately before the first day's posted movements; closing is after the last
day's posted movements. Row amounts are signed account-currency movements, not
merchant-currency expense amounts. Expected row count includes posted, pending and
cancelled rows. Source limits are 100 statements and 10,000 rows per workspace.

## Stage and resolve

1. Create or resume the intended workspace. `query_statement_imports` lists it;
   `get_statement_import` returns current rows, version and any committed receipt.
   A committed workspace is not a new import to replay under a fresh key.
2. `stage_statement_import` upserts/removes at most 100 rows per call. Updates use
   current `id`/`expected_version`, a new operation key and the full title/statement
   metadata. Rows merge by `(statement_key,row_key)`; removal is explicit. Exact
   retries retain their payload and key. Staging does not move account money.
3. Give each posted row an explicit `create` or `link` disposition and group its
   effect by `transaction_key`. For creates, exactly one row per group carries the
   supported transaction draft. Links identify the existing kind, ID and version
   and must match its exact account/date/signed amount/currency leg.
4. Pair both legs of owned transfers across accounts included in the workspace;
   use one transaction key. Savings round-ups are separate transfers, and fees
   are separate expenses. Do not classify internal transfers as income/spending.
5. Exclude pending/cancelled rows only with a reason and no financial mapping.
   Unsupported posted refunds or other movements remain unresolved; do not hide
   them as income, adjustments or excluded rows. Ask for the missing meaning or
   report the unsupported representation.
6. Preview using the current workspace version. Inspect every blocking issue,
   candidate, projected balance and observation difference. Equal date/amount
   alone does not deduplicate payments. Link the proven existing effect or mark
   a proven separate payment `duplicate_resolution=distinct`. Existing source
   identities must retain their previously posted effect; changed source evidence
   needs investigation. Active `budget_record_ids` may link history without
   changing those records or applying money twice.
7. Resolve issues with further staging and preview again. Staging invalidates
   older previews; any intervening audited ledger change also invalidates their
   fingerprint. Do not reuse a stale fingerprint after refreshing a version.

## Baselines and commit

Historical coverage before an account's opening date needs explicit
`replace_baseline=true` and `expected_account_version`. The source opening balance
becomes its historical baseline. Present this balance-affecting change and any
`superseded_adjustments` with their expected versions as part of the concrete
proposal; execute only within the user's authorization. Preserve later activity.
Do not add balancing adjustments or force older observations to match.

A ready preview requires complete source rows, opening plus signed posted rows
equal to closing, every existing period movement explained, each transaction leg
matched exactly once, exact account opening/closing balances and no unresolved
duplicates, unsupported rows, unmatched adjustments or estimated/unresolved debits.

Before posting, summarize account periods, new versus linked movements, baseline
changes, adjustment voids and projected closing balances. If posting is already
authorized, continue; otherwise obtain authorization for that concrete proposal.
Commit the current version and exact ready `preview_fingerprint` with one operation
key. On an uncertain outcome retry the identical request. On stale-state rejection,
query and preview again, reassessing any changes to the authorized proposal.

Read the committed workspace receipt and current affected reports. Report committed
reconciliations/source links separately from later current balances. A preview is
not posting evidence; a document upload is not a statement-import receipt. Do not
create schedules, synchronize banks or alter unrelated account history.
