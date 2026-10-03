# Practice 8: LFSR and known-plaintext worksheet

Saved work on an eight-stage linear feedback shift register, including a known-plaintext prefix, binary row operations and register-update helpers. A second statement describes an A5/1-style combination of three equal register systems. The solutions are incomplete.

## Helpers

[lfsr_helpers.sage](lfsr_helpers.sage) contains the common function definitions from the worksheet:

| Function | Saved behaviour |
| --- | --- |
| `xor(a, b)` | Adds matching binary entries modulo 2, stopping at the shorter vector length |
| `trf(M, i, lin)` | XORs row `i` into the selected rows of `M` in place, then prints every row |
| `shift(c, x)` | Forms one feedback bit from the coefficient/state dot product modulo 2 and shifts the state |
| `stream(c, xp, n)` | Copies eight initial state entries, repeatedly emits the leading bit, and advances the state |

The helper file defines functions only. It does not recover the coefficient vector or decrypt either ciphertext. `stream` is specifically written for an eight-entry initial state, even though `shift` derives its loop bound from the supplied state length.

## Known-prefix work

The first task supplies plaintext prefix `PR` and a ciphertext byte array. The saved cells start by XORing the two known characters with the first two ciphertext bytes, then work on matrices of bits. The second matrix snapshot contains the unresolved symbol `z0`, and both snapshots leave the coefficient vector as `c = []`.

The original XOR expressions use SageMath's `^^` notation. The helper functions themselves are Python-style definitions, but the complete worksheet context is SageMath. No missing coefficients, state, majority-clock logic or plaintext have been invented.

## Saved material

- [lfsr_helpers.sage](lfsr_helpers.sage): the common helper definitions.
- [worksheet-notes.md](worksheet-notes.md): both ciphertexts, the task statements and both unique matrix-reduction stages.

This folder is a partial worksheet, not a complete runnable decryption program, and is excluded from the main run list. Source: `kripto8.txt`, labelled practice 8, variant 32. The variant number identifies the assigned exercise; it does not mean there were 32 labs.
