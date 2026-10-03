# RSA decryption and the common-modulus attack

Two separate SageMath scripts preserve the complete calculation cells in the RSA worksheet: direct decryption with a supplied private exponent, and recovery of a message encrypted under the same modulus with two coprime public exponents.

The worksheet's heading `27 užduotis` identifies an exercise variant. The lab number comes from the archived filename `kriptografija11.txt`.

## Run

From the repository root:

```sh
sage labs/11-rsa/rsa_decrypt.sage
sage labs/11-rsa/common_modulus.sage
```

Each script includes its own constants and text-conversion functions and prints its decoded text. There are no command-line arguments or external data files. SageMath supplies `power_mod` for the common-modulus calculation.

The terminal `print(...)` calls replace bare expressions that displayed their values in an interactive worksheet. They do not change the arithmetic or character encoding.

## Direct decryption

`rsa_decrypt.sage` uses the supplied tuple `(n,e,d)` and ciphertext `c`, then calculates

$$
m\equiv c^d\pmod n.
$$

The source expresses modular exponentiation with `pow(c,d,n)`. The private exponent is given as part of the educational task; this example does not recover it or generate a new RSA key.

The saved worksheet answer for this task is `iskelta veliava`. That spacing is a human-readable annotation: the source's alphabet omits spaces, so it is not a literal transcription of the script's console formatting.

## Common modulus

`common_modulus.sage` contains two encryptions of the same message with a shared modulus and public exponents `31` and `109`. The retained coefficients satisfy

$$
(-7)\cdot31+2\cdot109=1.
$$

Writing $c_a=m^{31}\bmod n$ and $c_b=m^{109}\bmod n$ gives the recovery calculation

$$
m\equiv c_a^{-7}c_b^2\pmod n.
$$

The negative modular exponent requires the corresponding ciphertext to be invertible modulo `n`. The program uses the exercise's fixed coefficients and Sage's `power_mod`; it is not a generic search for arbitrary RSA vulnerabilities.

The worksheet records the answer as `susitikimo ne bus`. Its codec omits spaces, so that spacing is a human-readable answer annotation rather than the script's character representation.

## Text encoding

The `i_skaiciu` helper maps lowercase letters `a` through `z` to decimal values `01` through `26` and concatenates them. It skips characters outside that alphabet. `i_teksta` reverses the two-digit representation and uses `?` for an unrecognized group.

This is an educational text encoding, not RSA padding. It also differs from the ElGamal lab's related helper, whose alphabet contains a space. The helpers remain local to each exercise so their original encoding conventions stay intact.

## Incomplete factorization work

The original note also explores deriving another private exponent for a shared modulus. Its active scratch cell sets `p=1`, which makes `(p-1)*(q-1)` zero before a subsequent modular operation. A second, commented cell depends on state from earlier calculations.

Those cells are preserved as [factorization notes](factorization-notes.md), not presented as another standalone solver. The code fragments retain their original values and status.

## Source mapping

| File | Source lines in `kriptografija11.txt` | Packaging changes |
| --- | --- | --- |
| `rsa_decrypt.sage` | 135-161 and 183-184 | Extracted the direct-decryption cell; added `print` around the final decoded expression |
| `common_modulus.sage` | 84-118 | Extracted the common-modulus cell; added `print` around the final decoded expression |
| `factorization-notes.md` | 58-76 and 164-181 | Kept incomplete cells as labelled code excerpts |

The source contains no explicit license or named instructor credit for these RSA helpers. A related formatting helper is explicitly credited to the instructor in the ElGamal source, but that does not establish the full provenance of every RSA worksheet line.
