# Coursework coverage

The source collection consists of nine text worksheets in the `Kriptografija` archive and one Python script saved separately. A text file can contain several numbered practices, repeated notebook cells, exercise inputs and handwritten-style answer records.

## Numbered material

| Label | Source file | Published material | Scope |
| --- | --- | --- | --- |
| 1 | `prat1.txt` | [Manual notes](recorded-notes.md#practice-1-classical-ciphers) | Five classical-cipher exercises with layouts and partial calculations |
| 3 | `prat1.txt` | [Caesar analysis](../labs/03-caesar-analysis/) | A complete shift-scoring source block and four answer snippets |
| 4 | `kriptografija4.txt` | [Rotor worksheet](../labs/04-enigma/) | Constants, rotor helpers and incomplete decryption cells |
| 5 | `kripto5-6.txt` | [Feistel exercises](../labs/05-feistel/) | A two-round script for 5.2, a partial search for 5.3 and answers for 5.1 to 5.3 |
| 6 | `kripto5-6.txt` | [Recorded plaintexts](recorded-notes.md#practice-6-recorded-plaintexts) | Answers 6.1 to 6.4; no implementation preserved |
| 8 | `kripto8.txt` | [LFSR worksheet](../labs/08-lfsr/) | Register helpers, a partial known-plaintext calculation and A5/1-style exercise data |
| 9 | `kripto_9sav.txt` | [Bit-stream statistics](../labs/09-randomness-tests/) | A complete source worksheet with four statistical analyses |
| 10 | `kript10.txt` | [Knapsack material](../labs/10-knapsack/) | A modular decoding script and additional numeric/answer notes |
| 11 | `kriptografija11.txt` | [RSA exercises](../labs/11-rsa/) | Two extracted scripts plus factorization scratch work |
| 13 | `kripto_13.py`, `kriptografija13.txt` | [ElGamal material](../labs/13-elgamal/) | A complete Python script and a separate answer fragment with different signature values |
| 14 | `kriptografija14.txt` | [Numerical record](recorded-notes.md#practice-14-numerical-answers) | Three answers and a parameter; algorithm not identified |

Here, a **complete source block** means that its visible definitions and exercise inputs are present. It does not mean a new execution or correctness test was performed. The seven standalone scripts belong to practices 3, 5, 9, 10, 11 and 13; practice 11 has two scripts.

## Numbering and gaps

The recovered material covers 11 labels: **1, 3, 4, 5, 6, 8, 9, 10, 11, 13 and 14**. No corresponding coursework files were identified for labels **2, 7, 12, 15 or 16**. This records what is available in the saved archive, rather than whether a particular class was attended or an assignment completed.

The headings `32 užduotis`, `27 užduotis` and `11 užduotis` inside individual files are exercise identifiers. They do not establish that this repository contains 32, 27 or 11 complete laboratories.

The [official VU module description](https://www.vu.lt/ind/files/am%24lpd_adm_app.public_view_lpd_sandasp_sarasas_id%3D8EE548EC97B1ADCC9E3DF374845A845D3C978E26AB09EEA6.pdf) lists 32 hours of practical teaching, but does not establish exactly 16 separately graded laboratory assignments. Its numbered topic groups are not a laboratory checklist.

## Search and selection

Related desktop, document, download, development-project and available university/cloud folders were checked for additional coursework. Source-like text, readable PDF and Word documents, and archive file inventories were considered. The additional ElGamal Python file was the only matching program outside the main cryptography folder.

No Sage worksheet or CoCalc notebook export was located. Cloud placeholders, password-protected documents and browser history were not used to reconstruct missing work. Reference textbooks, unrelated software projects and application libraries are not counted as coursework.

Repeated prompts and duplicate helper definitions are consolidated. Unique inputs, partial calculations and recorded answers remain in the relevant lab notes. Missing algorithms have not been recreated and presented as historical submissions.

See [attribution](../ATTRIBUTION.md) and the [source manifest](provenance.json) for extraction and preservation details.
