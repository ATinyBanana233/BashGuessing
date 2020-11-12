
* **Mutant 1 KILLED:**
  * `negated conditional → KILLED` Changed Line 147 `if (!ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` to `if (ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` 
  * This mutant affects the result only when both ordinaryChecks and commentChecks are empty, because there is a relational OR in the condition check. When both checks are empty, we do not expect tree walks or messages added, but the mutant will added messages.
* **Mutant 2 KILLED:**
  * `negated conditional → KILLED` Changed Line 147 `if (!ordinaryChecks.isEmpty() || !commentChecks.isEmpty())` to `if (!ordinaryChecks.isEmpty() || commentChecks.isEmpty())` 
  * The mutant is a duplicate of **Mutant 1**, they both affect the function result when ordinaryChecks and commentChecks are empty in a similar fashion.
* **Mutant 3 KILLED:**
  * `negated conditional → KILLED` Changed Line 150 `if (!ordinaryChecks.isEmpty())` to `if (ordinaryChecks.isEmpty())`
  * The mutant would perform tree walk on empty ordinaryChecks instead of non-empty checks which will affect the result. 
* **Mutant 4 SURVIVED:**
  * `removed conditional - replaced equality check with false → SURVIVED` Changed Line 150 `if (!ordinaryChecks.isEmpty())` to `if (false)`
  *  The original condition performs a tree walk on non-empty ordinaryChecks, the mutant prevents the tree walk on non-empty ordinaryChecks by always bypass the if statement with false. We can create a testcase `testBehaviourWithNonEmptyOrdinaryChecks()` and assert appropriate resulted message to reflect a tree walk with ordinaryChecks to kill this mutant.
* **Mutant 5 KILLED:**
  * `removed conditional - replaced equality check with true → KILLED` Changed Line 150 `if (!ordinaryChecks.isEmpty())` to `if (true)`
  * The mutant allows the ordinaryChecks be tree walked even when empty which would affect the result.
* **Mutant 6 KILLED:**
  * `negated conditional → KILLED` Changed Line 153 `if (!commentChecks.isEmpty())` to `if (commentChecks.isEmpty())`
  * The mutant would perform tree walk on empty commentChecks instead of non-empty checks which will affect the result.
* **Mutant 7 SURVIVED:** 
  * `removed conditional - replaced equality check with false → SURVIVED` Changed Line 153 `if (!commentChecks.isEmpty())` to `if (false)`
  * The original condition performs a tree walk on non-empty commentChecks, the mutant prevents the tree walk on non-empty commentChecks by always bypass the if statement with false. We can create a testcase `testBehaviourWithNonEmptyCommentChecks()` and assert appropriate resulted message to reflect a tree walk with commentChecks to kill this mutant.
* **Mutant 8 KILLED:**
  * `removed conditional - replaced equality check with true → Killed` Changed Line 153 `if (!commentChecks.isEmpty())` to `if (true)`
  *  The mutant allows the commentChecks would be walked even when empty which would affect the result.
* **Mutant 9 SURVIVED:**
  * `removed conditional - replaced equality check with false → SURVIVED` Changed Line 157 `if (filters.isEmpty())` to `if (false) `
  * The original condition adds non-filtered messages when there is no filter, the mutant prevents bypass the if statement with false. The function will always try to retreive and add filtered messages. We can create a testcase `testBehaviourWithEmptyFilter()` and assert appropriate resulted messages that indicate no filter has been processed to kill this mutant.
* **Mutant 10 KILLED:**
  * `removed call to java/util/SortedSet::clear → KILLED` Removed Line 165 `messages.clear();`
  * The mutant prevents message clearing which would affect consequent methods that works with messages.
