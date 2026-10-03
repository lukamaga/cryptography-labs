# Saved eight-register worksheet

The original labels this material `8 pratyvos`, identifies Lukaš Patrik Magalinski, and assigns variant 32. The variant number is not a count of labs.

## Task 1: known prefix

The supplied plaintext begins with `PR`. The exercise asks for decryption of a stream produced by an eight-register system.

Ciphertext:

```text
[160, 4, 62, 199, 227, 253, 70, 214, 181, 248, 166, 75, 34, 43, 127, 122, 148, 11, 155, 89, 157, 181, 18, 62, 197, 250, 238, 65, 200, 175, 231, 163, 76, 52, 50, 106, 118, 148, 3, 144, 95, 137, 177, 4, 56, 209, 224, 245, 80, 211, 175, 230, 170, 78, 38, 58, 100, 119, 132, 20, 142, 75, 131, 181, 2, 54, 204, 231, 245, 82, 216, 172, 255, 185, 68, 52, 46, 98, 126, 146, 24, 159, 68, 154, 163, 2, 54, 206, 252, 245, 71, 205, 178, 229, 170, 86, 46, 54, 108, 116, 146, 10, 151, 79, 128, 191, 5, 39, 206, 246, 234, 80, 211, 161, 226, 187, 92, 52, 57, 127, 104, 151, 24, 151, 94, 143, 185, 6, 62, 199, 224, 245, 84, 214, 165, 229, 188, 81, 50, 43, 120, 126, 146, 28, 146, 67, 155, 163, 26, 62, 204, 250, 246, 84, 206, 164, 237, 166, 78, 51, 57, 101, 104, 148, 10, 151, 70, 135, 181, 28, 54, 204, 240, 245, 64, 206, 186, 233, 161, 78, 43, 45, 120, 114, 147, 30, 151, 88, 154, 165, 25, 60, 206, 250, 239, 89, 196, 167, 252, 174, 78, 34, 42, 110, 111, 128, 10, 144, 79, 128, 165, 26, 50, 203, 247, 230, 92, 220, 174, 249, 160, 79, 50, 57, 96, 114, 148]
```

The first matrix-reduction cell is preserved as recorded:

```sage
bin(ord('P')^^160)+bin(ord('R')^^4)
k='0b111100000b1010110'
M=[[0,1,1,1,1,0,0,0,0,0], 
   [1,1,1,1,0,0,0,0,0,1], 
   [1,1,1,0,0,0,0,0,1,0], 
   [1,1,0,0,0,0,0,1,0,1], 
   [1,0,0,0,0,0,1,0,1,0], 
   [0,0,0,0,0,1,0,1,0,1], 
   [0,0,0,0,1,0,1,0,1,1], 
   [0,0,0,1,0,1,0,1,1,0]
    ]

c=[]
trf(M,4,[5,7])
```

A later cell revises the bit-string representation and matrix. It contains the unresolved name `z0`; this is not a completed coefficient calculation.

```sage
bin(ord('P')^^160)+bin(ord('R')^^4)
k='1111000001010110'
M=[[1, 1, 1, 1, 0, 0, 0, 0, 0],
   [0, 0, 0, 1, 0, 0, 0, 0, 1],
   [0, 0, 1, 1, 0, 0, 0, 1, 0],
   [0, 1, 1, 1, 0, 0, 1, z0, 1],
   [0, 0, 0, 0, 0, 1, 0, 1, 0],
   [0, 0, 0, 0, 1, 0, 1, 0, 1],
   [0, 0, 0, 1, 0, 1, 0, 1, 1],
   [0, 0, 1, 0, 1, 0, 1, 1, 0]]

c=[]
trf(M,1,[0,4])
```

Both cells leave `c = []`. No recovered coefficient vector, completed initial state or final plaintext is saved. The [helper definitions](lfsr_helpers.sage) retain the common functions that appear in both snapshots.

## Task 2: three-register-system exercise

Original statement and ciphertext:

```text
2. Teksto šifravimui naudotos trys vienodos registrų sistemos kaip 1 užduotyje.
Šifras sudaromas pagal a5/1 schemą; 1,2,3 sistemų registrai - kontroliniai. 
 Numeruojant nuo 0
Registrų sistemų pradinės padėtys sutampa su koeficientų vektoriumi.
Iššifruokite šifrą 
[163, 204, 17, 2, 204, 79, 103, 33, 133, 247, 7, 223, 74, 126, 39, 152, 241, 10, 200, 87, 100, 39, 130, 226, 18, 222, 83, 103, 60, 158, 233, 7, 204, 78, 113, 34, 132, 240, 15, 202, 83, 120, 60, 152, 237, 3, 201, 83, 112, 50, 152, 246, 10, 196, 73, 126, 39, 130, 240, 3, 222, 95, 120, 33, 130, 232, 20, 196, 84, 96, 41, 144, 237, 18, 222, 78, 117, 36, 158, 234, 20, 204, 84, 96, 58, 158, 240, 15, 194, 73, 103, 33, 148, 237, 9, 222, 93, 125, 58, 133, 246, 9, 198, 86, 125, 59, 156, 230, 1, 196, 84, 117, 56, 144, 240, 9, 198, 78, 125, 42, 144, 234, 11, 200, 73, 115, 38, 152, 226, 19, 215, 78, 117, 33, 130, 246, 21, 221, 91, 97, 44, 139, 234, 7, 199, 91, 121, 47, 148, 241, 13, 193, 95, 126, 33, 130, 238, 3, 202, 83, 122, 41, 130, 246, 20, 196, 81, 96, 33, 147, 230, 18, 196, 73, 118, 61, 131, 237, 9, 222, 83, 103, 59, 152, 245, 3, 223, 64, 125, 41, 133, 234, 13, 201, 79, 103, 36, 132, 240, 1, 204, 72, 115, 41, 157, 234, 7, 219, 83, 121, 41, 130, 228, 15, 223, 78, 97, 39, 154, 239, 15, 222, 76, 125, 59, 132, 240, 16, 194, 72, 125, 61, 154, 237, 15, 216, 87, 118, 41, 144, 237, 18, 222, 78, 117, 36, 158, 225, 19, 217, 95, 120, 33, 130, 243, 7, 222, 83, 103, 39, 154, 234, 8, 200, 94, 117, 37, 144, 240, 20, 196, 95, 112, 41, 150, 241, 15, 195, 94, 125, 37, 152, 240, 9, 202, 83, 120, 60, 152, 237, 3, 202, 72, 113, 50, 152, 226, 21, 196, 83, 102, 50, 148, 237, 1, 201, 91, 121, 41, 157, 226, 19, 198, 91, 122, 38, 132, 225, 10, 194, 73, 127, 33, 144, 239, 3, 192, 74, 117, 38, 132, 236, 21, 196, 95, 122, 39, 130]
```

This describes an A5/1-style construction using three equal systems, with positions 1, 2 and 3 as control registers under zero-based numbering. No majority-clock implementation or solution for this second task is present in the saved material. The statement does not establish an implementation of the full GSM A5/1 design.
