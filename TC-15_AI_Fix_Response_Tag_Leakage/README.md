# TC-15 - AI Fix Response Tag Leakage

## Simple explanation
This class intentionally contains a normal SOQL injection issue. The scenario is used to inspect the generated AI-fixed file for parser leakage.

## Expected validation
Scanner: violation expected. After AI fix, verify the saved .cls contains no <fixed_code_codefix>, Markdown fences, duplicated drafts, or conversational prose.

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
