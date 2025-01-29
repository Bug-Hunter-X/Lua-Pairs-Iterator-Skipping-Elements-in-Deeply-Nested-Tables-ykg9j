# Lua Pairs Iterator Bug

This repository demonstrates a subtle bug related to Lua's `pairs` iterator when dealing with deeply nested tables.  Under specific conditions, the iterator might skip elements during traversal, leading to unexpected behavior.

## Bug Description

The `pairs` iterator, commonly used to iterate over Lua tables, may exhibit unexpected behavior when encountering deeply nested tables. In this example, the `foo` function recursively iterates through a nested table. However, depending on the structure and depth of the nested tables, certain elements might not be processed by the iterator.

## Reproduction

1. Clone this repository.
2. Run `bug.lua`. Observe the lack of full traversal in the output.
3. Run `bugSolution.lua` to see the corrected implementation.

## Solution

The solution involves using a different iteration technique that guarantees complete traversal of the table elements, even in deeply nested structures.  This prevents the potential issue encountered with the `pairs` iterator in certain edge cases. The corrected implementation is provided in `bugSolution.lua`.