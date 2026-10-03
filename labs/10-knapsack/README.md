# Modular decoding with a known weight relation

This short exercise transforms supplied ciphertext integers using a known relation between a public weight and a corresponding weight before decoding a fixed bit field as text. Its structure is consistent with a knapsack-style modular transformation; the complete original assignment statement was not saved.

## Run

Use SageMath from the repository root:

```sh
sage labs/10-knapsack/knapsack_decode.sage
```

The file contains its weight list, modulus, known weight and ciphertext, and prints a decoded string. It has no arguments or external data dependencies.

## Calculation

The source supplies a list `V`, sets `v_1=V[0]`, and gives a corresponding value `w_1`. Its stated relation is

$$
t v_1\equiv w_1\pmod p.
$$

The original comment claims `gcd(v_1,p)=1`, but the supplied values actually have a common factor of **2**. Thus `v_1` itself has no inverse modulo `p`.

The worksheet writes `t=w_1/v_1%p`. Sage treats the division as an exact rational number, cancels common factors and takes its residue using an invertible denominator. Cancelling a common factor of two gives the equivalent fraction

$$
\frac{w_1}{v_1}=\frac{4805034039}{40585996647},
$$

whose denominator is coprime to `p`. This is why the exact rational expression can have a residue even though the original weight has no modular inverse. The source comment is retained as written; it should not be used to justify an inverse of `v_1`.

Running the expression through ordinary Python's floating-point division changes its meaning. Each ciphertext item is then transformed as `c*t%p`.

For each transformed integer, the original decoder takes `bin(i)[-18:-10]`, interprets the selected bits as a base-two integer, and passes it to `chr`. The bit slice and lack of binary padding are part of this specific exercise, not a general-purpose knapsack decoding interface.

## Source and recorded answer

`knapsack_decode.sage` contains lines 23 through 36 of `kript10.txt`, with the arithmetic unchanged. The original `////2` separator and the plaintext answer following the code are not executable source.

The note immediately after this block records:

```text
geras darbas
```

This is a historical answer transcribed from the worksheet. The earlier lines of the same note contain a separate set of weights, bit groups and the answer `smagus laikas`, but no corresponding complete program; they are not merged into this calculation.

<details>
<summary>Earlier numerical work from the same worksheet</summary>

The following is the saved first block, including its weight list, ciphertext, binary groups and answer. The initial scalar values were not labelled in the source; no new interpretation is assigned to them.

```text
2
797057
[828912, 838465, 1741154, 3484230, 6972399, 13891898, 27803362, 55606903]
[89474114, 79050819, 58186522, 99881782, 75562650, 89474114, 1741154, 23443916, 58186522, 65158921, 92962283, 58186522, 89474114]
11001110
10110110
10000110
11100110
10101110
11001110
00000100
00110110
10000110
10010110
11010110
10000110
11001110
smagus laikas
```

</details>
