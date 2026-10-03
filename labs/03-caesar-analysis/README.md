# Practice 3: Caesar frequency analysis

A Python frequency heuristic for a 32-letter Lithuanian alphabet. The script evaluates each possible Caesar shift against a set of frequent letters and prints the score, shift index and associated alphabet letter.

## Method

For each candidate shift `k`, `guess(test, k, sifr)` shifts the reference set `IAOERS` through `abc`. It then counts what fraction of alphabet characters in the ciphertext belong to that shifted set. A higher fraction is a candidate-key heuristic; the script does not automatically choose a key or print decrypted text.

The alphabet contains Lithuanian letters such as `Ą`, `Č`, `Ę`, `Ė`, `Į`, `Š`, `Ų`, `Ū` and `Ž`. Characters outside the alphabet are ignored when scoring. The denominator is the length of the filtered ciphertext, so an empty filtered input is not supported.

## Run

From the repository root, using Python 3:

```sh
python3 labs/03-caesar-analysis/caesar_frequency.py
```

There are no command-line arguments or external dependencies. The ciphertext `fr`, reference letters and alphabet are defined in the file. The final loop visits all 32 shifts in index order; its output is not sorted by score. No output files are written.

## Saved material

- [caesar_frequency.py](caesar_frequency.py): the original scoring cell from `prat1.txt`, lines 139 to 168.
- [worksheet-notes.md](worksheet-notes.md): the four recorded practice answers and their relationship to the script.

This cell uses ordinary Python syntax. It can be kept separate from the SageMath worksheets elsewhere in the repository.
