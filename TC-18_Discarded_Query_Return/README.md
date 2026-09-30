# TC-18 - Discarded Query Return

## Simple explanation
The result of Database.query() is intentionally not assigned or returned. This checks that AI Code Fix does not replace it with an illegal bare static SOQL expression.

## Expected validation
Scanner: violation expected. AI fix must preserve a legal executable statement.

## What to check in CodeScan / AI Code Fix
1. Run analysis with rule `sf:SOQLInjection` enabled.
2. Confirm whether the scanner result matches the expected result above.
3. If a violation is expected, assign it to AI Code Fix.
4. Compare the generated code with the original code.
5. Re-run analysis and confirm the violation is removed only when the fix is genuinely safe.
6. Compile or validate the Apex after the fix.
7. Check that unrelated query clauses, method signatures, and behavior are preserved.

## Important
A scanner-clean result alone is not enough. The generated Apex must remain syntactically valid and must preserve application behavior.
