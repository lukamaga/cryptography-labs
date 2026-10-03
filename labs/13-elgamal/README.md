# ElGamal signatures with a reused nonce

This Python script studies a supplied ElGamal instance in which two messages were signed with the same nonce. It verifies the signatures, recovers candidate secret values, decrypts a ciphertext, and signs and verifies the recovered text using the exercise data.

The source is a complete script with fixed parameters. Its heading `11 užduotis` is the exercise variant; the archived filename `kripto_13.py` associates it with lab 13.

## Run

Use Python 3.8 or later from the repository root:

```sh
python3 labs/13-elgamal/elgamal_nonce_reuse.py
```

Only the Python standard library is needed. The minimum version follows from the use of three-argument `pow` with a negative exponent for modular inverses. This is ordinary Python, not a SageMath worksheet.

The script has top-level calls and no main guard, so importing it also starts its calculations. It prints intermediate signature-verification values, recovered exercise values and the final signature check. It does not read files, contact services or generate cryptographic keys for real use.

## Exercise sequence

1. Encode the two known messages using the supplied character-number format.
2. Check each signature against the public parameters.
3. Derive nonce candidates from the two signatures' shared first component.
4. Derive private-exponent candidates and compare their public values.
5. Decrypt the supplied ElGamal ciphertext.
6. Sign the decoded message using the recovered exercise values and check that signature.

The final step deliberately continues the exercise with the recovered nonce. It is part of the nonce-reuse demonstration, not a nonce-generation strategy for an application.

## Mathematical relationships

For private exponent $a$, the public value is $\beta=g^a\bmod p$. A signature $(\gamma,\delta)$ on the encoded integer $m$ satisfies

$$
g^m\equiv\beta^\gamma\gamma^\delta\pmod p.
$$

With nonce $k$, its components satisfy $\gamma=g^k\bmod p$ and

$$
\delta k\equiv m-a\gamma\pmod{p-1}.
$$

For two signatures using the same nonce, subtraction gives

$$
(\delta_1-\delta_2)k\equiv m_1-m_2\pmod{p-1}.
$$

The script constructs candidates and checks them against the known public values. Its recovery functions inspect two candidates each and are tailored to the supplied instance; they do not implement general enumeration of all solutions of every modular linear congruence.

The decryption function calculates

$$
m\equiv C_2(C_1^a)^{-1}\pmod p
$$

before applying the exercise's text decoder.

## Instructor-provided formatting helpers

The original comment above `i_skaiciu` explicitly identifies the formatting functions as the instructor's functions. That comment is preserved in the source.

The alphabet is `abcdefghijklmnopqrstuvwxyz `, including a final space. Characters are assigned two-digit decimal positions from `01` through `27`; unsupported characters are skipped by the encoder. This format is used directly as the message integer, rather than through a production signature hash-and-encoding scheme.

The instructor's name and a license for the helper functions are not specified in the source. The repository retains that attribution without asserting sole authorship of those helpers.

## Source and separate answer note

`elgamal_nonce_reuse.py` is a byte-identical copy of the existing `Downloads/kripto_13.py`, renamed for clarity. All 129 source lines, numeric exercise parameters and the instructor comment are retained.

The archive also contains a [three-line answer note](recorded-answer.md). Its signature's first component differs from the one in this script, so the note is preserved as an unlinked historical answer and is not labelled this script's expected output.
