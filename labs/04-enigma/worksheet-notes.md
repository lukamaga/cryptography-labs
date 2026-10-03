# Saved rotor worksheet

## Recorded answers

```text
1)JIE ZVILGA LYG PINIGELIAI IRPIRKLYSAPAKESGODZIAIJUOSGRIEBIASUSIRENKASAUJONOTENKAULIUKAIVELSUSIDESTODAIKTANIRPIRKLYSPAMATOBELAIKASPLASTAKAOTOJIPLASTAKASUKIBUSISURANKAIRTADAGILTINEATSISTOJAKITAPUSSTALOIRISMEIGIAIPIRKLIAKIS
2)PRIE PASKUTINES TAURES SEDI GIRTUOKLIS
3)JIE ZVILGA LYG PINIGELIAI
```

## Complete saved exercise statement

The statement includes two rotor permutations, the reflector permutation, starting positions and the full ciphertext. The helper file's `cph` variable contains only the first two ciphertext lines.

```text
Enigma  šifro (su atspindžiu) raktas =[19, 11]
Rotoriai:
 L_1=[10, 2, 11, 18, 8, 20, 19, 25, 23, 1, 15, 9, 14, 6, 24, 0, 17, 7, 22, 21, 4, 12, 5, 3, 16, 13]
 L_2=[14, 2, 7, 20, 18, 9, 19, 25, 23, 1, 13, 17, 22, 5, 3, 0, 24, 8, 21, 10, 11, 12, 15, 4, 6, 16]
Atspindžio keitinys s=[2, 4, 0, 6, 1, 11, 3, 8, 7, 13, 16, 5, 15, 9, 18, 12, 10, 19, 14, 17, 25, 22, 21, 24, 23, 20]
Iššifruokite šifrą 
VXUIQ SDTJF SIHWV JJSFE RVJUQ 
QKDJI HGUDY QNNVP DKXTS KMGRE 
HGEOT XHCUN YICOY OXSZI PXWQM 
MCUAJ QSYBR BRMTM JYFPL PZKGB 
URONV AIOFH HMYJK MTRRJ ISXHY 
SELNJ CDLSU HZCHP HYWDA XTZSJ 
NNWOL MYQYB WGBAL XFOYA DRZDF 
YNBLO QHUSF BRALY JPMBE GGJMZ 
TTJXU WDXSF PUNEK Y     
```

## Worksheet stages

The text file contains repeated snapshots of the same work. The selected source is the last cell, lines 118 to 163. It retains both definitions named `enc`, in their saved order. The second definition replaces the first in the worksheet namespace. It constructs `L_1a` as the inverse permutation and prints `L_1` and `L_1a`.

The first snapshot also displays the character-index preprocessing result with this expression:

```sage
print(pr(cph))
```

That expression is documented here rather than added to the final cell. An earlier copied statement contains a stray character in the reflector list; the final list matches the clean first statement.

The reflector `s` is defined but not applied by the saved helper functions. No complete reflector traversal, reverse traversal through both rotors, or final plaintext loop is present. The recorded answers therefore must not be presented as output reproduced by this helper file.
