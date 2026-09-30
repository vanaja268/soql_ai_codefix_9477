# TC-20 - Inter-Method Data Flow

## Simple explanation
User input enters through one method, is passed to a helper, then reaches the dynamic SOQL sink.

## Expected validation
Scanner: violation expected when cross-method taint is supported. AI fix should neutralize the value without corrupting method signatures or callers.

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
