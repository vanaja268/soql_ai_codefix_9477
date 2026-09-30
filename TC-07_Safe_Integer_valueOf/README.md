# TC-07 - Safe Integer.valueOf

## Simple explanation
A numeric request parameter is converted to Integer before being appended to the query.

## Expected validation
Scanner: no violation expected if Integer.valueOf() is recognized as safe coercion.

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
