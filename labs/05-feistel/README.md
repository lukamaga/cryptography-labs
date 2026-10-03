# Practice 5: two-round Feistel exercises

The complete saved exercise 5.2 cell processes ciphertext pairs with two specified round keys, then swaps the pair and prints its two character codes as text. Other material in the same worksheet includes a recorded answer for 5.1 and an unfinished two-key search for 5.3.

## Complete cell

In [feistel_decrypt.sage](feistel_decrypt.sage), the round helper takes a pair `M = [left, right]`, sets `r = right` and returns:

```text
[right, left XOR F(right, key)]
F(r, k) = (r AND k) XOR ((k mod 16) OR r)
```

The active loop applies keys 207 and 3 in that order and reverses the pair before calling `chr` on both values. Each ciphertext pair is printed on its own line. The original `raktas = [207]` assignment and disabled candidate-key loop remain in the file.

## Run with SageMath

From the repository root:

```sh
sage labs/05-feistel/feistel_decrypt.sage
```

The script takes no command-line arguments and uses the ciphertext embedded in the file. SageMath supplies the worksheet's native arithmetic and preparsing environment; there are no separate pip dependencies for this cell.

## Operator semantics

The round helper uses `^^`, SageMath's syntax for bitwise XOR. The expression stored in the string `f` contains a single `^`; it is evaluated by Python's `eval`, so it denotes XOR there. These two contexts must not be mechanically replaced with exponentiation or a different operator. The expression is a fixed part of the saved exercise, not external input.

## Other saved work

[worksheet-notes.md](worksheet-notes.md) retains the 5.1 answer, the 5.2 answer fragments, and all unique 5.3 ciphertext/search material. The 5.3 cell refers to an unresolved `m` inside its round-function expression, so it is documented as incomplete rather than exposed as a runnable program.

Source: `kripto5-6.txt`. This folder covers section 5; the file also contains practice 6 notes elsewhere in the repository.
