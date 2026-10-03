# Attribution and source handling

This repository organizes cryptography coursework from Lukaš Patrik Magalinski's autumn 2024 study archive at Vilnius University, Faculty of Mathematics and Informatics. The eighth-practice worksheet includes his name.

The course is *Kriptografija ir informacijos sauga* (Cryptography and Information Security). The [official VU module description](https://www.vu.lt/ind/files/am%24lpd_adm_app.public_view_lpd_sandasp_sarasas_id%3D8EE548EC97B1ADCC9E3DF374845A845D3C978E26AB09EEA6.pdf) names Vilius Stakėnas as coordinator. This public description is course context, not a verified transcript or an exact 2024 assignment schedule.

## Classroom material

The saved worksheets combine assigned ciphertexts and numerical parameters, helper functions, calculations and recorded answers. They implement established cryptographic methods used in the course.

The ElGamal script explicitly credits the instructor for the `i_skaiciu` and `i_teksta` formatting helpers. That comment is preserved. The supplied file does not name the author of those functions, so the coordinator's name is not assigned to them by inference.

The original Lithuanian comments, alphabets and exercise data are retained. The English documentation explains the calculations and distinguishes full source blocks from partial notes.

The author identifies SageMathCell as the browser environment used for the Sage worksheets. The separately saved ElGamal file is ordinary Python.

## Publication changes

- Code is extracted into `.sage` or `.py` files according to its runtime requirements.
- Sage preparser semantics are preserved, including `^^`, exponentiation with `^`, and exact rational arithmetic.
- Repeated notebook cells and duplicated prompts are consolidated. Unique scratch work and recorded answers are kept in Markdown.
- The statistical worksheet and the standalone ElGamal Python script retain their original file contents.
- Extracted RSA notebook expressions use explicit `print` calls so their results are visible when run as files.
- Extracted helper cells retain their original whitespace. Algorithmic gaps are documented rather than filled with newly invented historical solutions.
- Unrelated personal notes and operating-system files are excluded.

The original local files are unchanged. The [source manifest](docs/provenance.json) identifies source files, line ranges and individual transformations. The [coverage record](docs/coverage.md) lists recovered and missing labels.
