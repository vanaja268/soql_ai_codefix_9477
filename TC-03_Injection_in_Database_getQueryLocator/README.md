# TC-03 - Injection in Database.getQueryLocator

## Simple explanation
A user-controlled status value is concatenated into a query passed to Database.getQueryLocator().

## Expected validation
Scanner: violation expected. AI fix: bind or sanitize status while preserving the Database.QueryLocator return type.

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
