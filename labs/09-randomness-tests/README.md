# Statistical analysis of bit streams

This worksheet compares a plaintext-derived bit stream with two supplied ciphertext-derived streams. It applies poker, bit-frequency, overlapping bit-pair and autocorrelation-style statistics to the three sequences.

## Run

Use SageMath from the repository root:

```sh
sage labs/09-randomness-tests/randomness_tests.sage
```

The program prints the statistic, a tail probability and the original Lithuanian decision message for each stream. It uses SageMath's `RealDistribution` and `sqrt`, with no external dataset or additional Python package.

The `.sage` extension is significant: Sage's preparser interprets `^` as exponentiation. Ordinary Python interprets that operator as XOR and does not provide the Sage distribution objects automatically.

## Data representation

The source defines one uppercase plaintext and two lists of integer ciphertext values. Each value is converted with `bin(value)[2:]`, and the resulting strings are concatenated. This is a **variable-width binary representation**: bytes are not padded to eight bits. Consequently, the three sequences need not have equal lengths, and the statistics describe the strings constructed by this worksheet.

Commented alternative bit strings remain in the original source, but they are not used by the active assignments.

## Statistics and parameters

Let $n$ be the length of the current bit string, $N_0$ and $N_1$ its zero and one counts, and $N_{ij}$ the counts of overlapping adjacent pairs.

| Section | Parameters | Reference distribution |
| --- | --- | --- |
| Poker | Non-overlapping blocks of length `m=3`; incomplete trailing block ignored | Chi-square, `2^m - 1 = 7` degrees of freedom |
| Frequency | Counts of zero and one bits | Chi-square, 1 degree of freedom |
| Bit pairs | Overlapping adjacent pairs | Chi-square, 2 degrees of freedom |
| Autocorrelation-style calculation | Source parameter `d=5`; see the indexing note below | Gaussian distribution with Sage parameter `1` |

For the poker statistic, $k=\lfloor n/m\rfloor$ and $N_j$ counts each of the $2^m$ possible blocks:

$$
T_3=\frac{2^m}{k}\sum_{j=0}^{2^m-1}N_j^2-k.
$$

The frequency and bit-pair sections calculate

$$
T_1=\frac{(N_1-N_0)^2}{n},
$$

$$
T_2=\frac{4}{n-1}\sum_{i,j\in\{0,1\}}N_{ij}^2
-\frac{2}{n}(N_0^2+N_1^2)+1.
$$

Those three sections compare the upper-tail probability with `alpha=0.1`. The final section selects a Gaussian tail according to the statistic's sign and compares that single-tail probability with `0.1/2`.

## Original autocorrelation indexing

The source sets `d=5` but constructs `bt=b[d-1:]`. It therefore counts disagreements against a stream shifted by **four positions**, over `n-4` comparisons. Its subsequent formula still uses `d=5`:

$$
T_5=\frac{2X_d-n+d}{\sqrt{n-d}}.
$$

This indexing/formula mismatch is retained as part of the original worksheet. The last section should not be described as a corrected implementation of a standard lag-five test.

The printed phrase `Seka atsitiktinė` records the worksheet's decision rule. A non-rejection does not prove that a sequence is random or establish the security of an encryption scheme.

## Source

`randomness_tests.sage` preserves all 128 lines of `kripto_9sav.txt` byte-for-byte under a SageMath filename. There are no saved numerical outputs in that source file; the explanatory formulas above describe its active calculations.
