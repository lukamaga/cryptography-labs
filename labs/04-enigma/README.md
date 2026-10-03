# Practice 4: rotor-cipher worksheet

Partial SageMath work on a two-rotor cipher with a supplied reflector. The saved material contains the exercise data, character-index conversion, shifted rotor lookup and an inverse-permutation construction. It does not contain a complete Enigma decoder.

## Rotor mapping

`rot(a, m, l)` converts an input index to a rotor-shifted index, applies permutation `l`, then subtracts the shift modulo the alphabet length:

```text
c = (a + m) mod n
result = (l[c] - m) mod n
```

The alphabet has 26 uppercase Latin letters. `pr(t)` strips characters outside that alphabet and returns letter indices. The saved starting positions are `[19, 11]`.

## What the source contains

[rotor_helpers.sage](rotor_helpers.sage) is the last worksheet cell. It defines `L_1`, `L_2`, the reflector `s`, a two-line ciphertext prefix, and the helper functions. It then constructs `L_1a`, the inverse of the first rotor permutation, and prints both lists.

There are two saved functions named `enc`. The latter replaces the former. It is an unfinished reverse-direction attempt, not an additional complete decoder. The reflector is never applied, and no final ciphertext-processing loop is saved.

The original `/` expressions are retained for the SageMath environment. Substituting Python integer-division operators or rewriting the rotor path would change the worksheet, so the file is not presented as a standalone Python program.

## Completeness

This folder is a helper worksheet and recorded notes. It is intentionally absent from the repository's complete-script run list. The [worksheet notes](worksheet-notes.md) preserve the full ciphertext, permutations, saved answers and unique earlier preprocessing display.

Source: `kriptografija4.txt`. Repeated copies of the same cells are consolidated without adding a missing reflector/decryption algorithm.
