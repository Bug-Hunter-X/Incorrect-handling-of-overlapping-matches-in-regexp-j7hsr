# Incorrect handling of overlapping matches in Tcl's `regexp` command

This example demonstrates an issue with the `regexp` command in Tcl when dealing with overlapping matches.  The provided `count_occurrences` procedure is intended to count the number of times a pattern appears in a given text. However, the implementation incorrectly handles overlapping matches, leading to an undercount.

The `bug.tcl` file contains the buggy implementation. The `bugSolution.tcl` file provides a corrected version.

## Problem

The original `count_occurrences` procedure uses `regexp` to find matches and then updates the text using `string range`. This approach fails when there are overlapping matches because the range is updated incorrectly after a match is found.  The pattern is correctly found but the index is not correctly updated for the next iteration.