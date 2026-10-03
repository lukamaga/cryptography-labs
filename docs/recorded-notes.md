# Recorded notes and answers

These sections preserve coursework material for which the archive contains manual work or answers rather than a complete program. Original Lithuanian text is retained. The labels follow the saved files; they do not establish the total number of practical classes in the course.

## Practice 1: classical ciphers

The first part of `prat1.txt` contains work on scytale transposition, keyed permutations, a Fleissner grille and a Delastelle cipher. It records ciphertext layouts, intermediate grids and partial plaintexts. No corresponding implementation was saved in this section.

| Exercise | Saved material |
| --- | --- |
| Scytale | A 24-row ciphertext layout and a plaintext opening |
| Keyed permutation | Six rows, the key `TIKRAS` and ordering `6 2 3 4 1 5` |
| Another permutation | A ciphertext grid and a partial plaintext |
| Fleissner grille | Ciphertext, marked grids and the recorded key indices |
| Delastelle | A keyed alphabet using `SMAGUS`, block size 5 and coordinate calculations |

<details>
<summary>Preserved manual worksheet</summary>

```text
1. Iššifruokite skytalės šifrą:144

KŽYSOA
UIPNSR
OUOEET
ATVTBY
UUISEN
KOSUTK
ŠLKNJI
ČAAKIL
IBSUEO
AIDBNP 
UAAUER
LURVSI
ĖVĖOIE
KISLLA
ĖSIAIN 
SKBIAG
UAJKUE
VSAYDL
EJUTAŲ
IARIMI 
DMERIR
RESAVD
OKNNII
DRIKSE  

Kuo aukščiau lėkė su veidrožiu tuo labiau viskas jame...

2. Iššifruokite perstatų šifrą: 16 raidziu eiluteje

6)LVUIILIVMNNTŪŠTE
2)AITDUOKIOEOOTKAL
3)KSURIPOEGIKKŲRSA
4)SUOORNNNAVRUNEJK
1)TRVDGEEOUIAREIAS 
5)ĖSEŽALIŽSEŠBIPMT     

Jei raktas T I K R A S
           6 2 3 4 1 5

Lakstė visur su tuo veidrodžiu ir...

3. Iššifruokite perstatų šifrą:

IAĄMŠ TAVOI RSKPE 
ŠURĄT YIYID AIAAS 
KVIŠA NINRA ŽASTŲ 
ĖIEVU TŠIPR ISIDI  
LETYK ASOAĖ ATKEŠ 
INIKŠ SIJSG UAIBK 

Iškėliau veiną rietimą...


1 2 3 4 5 6
Iškėl
4. Iššifruokite Fleisnerio  šifrą:

BEABEPSAETOSINUK
NIESTIKSESKYSVIA
MOEJUNNEELAKYUKS
KBTUVOOLAIAUYPAI 

jei rakto dalys =[0, 8, 9]

0 8 9 11 1 3 5 13 4 6 7 11 

X O O O
O O O O
X X O G 
O O O O

O X O X
O X O O
O O O O
O G O O

O O O O
G O X X
O O O O
O O O X

O O G O
O O O O
O O X O
X O X O

...................................

O O O O
O O O O
O O O G
O O O O



 Iššifruokite Delastelio šifrą:

ETKOW SPQWR KOIBP GULQW SAAVD 
QKMEB CGOOV XLHFW OACHB ALKTM 
SYQVG AQAEQ OOINI HORIN ARQCO 
VRSLZ AOOFI KLPPS 
  jei raktas =SMAGUS, bloko ilgis =5,

SMAGU 
BCDEF
HIKLN
OPQRT
VWXYZ 

ETKOW 
24453  DROZIAU PETI
34152

SPQWR 
11424 
35244

KOIBP 
33413
22142
```

</details>

The grid markings and incomplete plaintexts are retained as written. They are not reconstructed solutions. The later Caesar-analysis section in the same file is published separately under [practice 3](../labs/03-caesar-analysis/).

## Practice 6: recorded plaintexts

`kripto5-6.txt` contains four answers labelled 6.1 through 6.4. No implementation or enough cipher parameters to reconstruct these four solutions was saved with them. For 6.3 and 6.4, consecutive output lines have been joined; spelling and existing spaces are preserved.

### Answer 6.1

```text
ZMOGUSSUSUKELEAKYJEVISKAMATEISVIRKSCIAIARBATIKTAIKASBUVONEGERONESMAZIAUSIASKRISLELISTUREJOVISOVEIDRODZIOYPATYBES
```

### Answer 6.2

```text
O BUVO LABAI ISALKES IR MEGO ARKLIENAKADPULSISKRUMUKULIAISPERSIVERTEPERMANOSKRUZDESPOKSTGALVAJPUSIIRISSITIESENEGYVASISIVERCIAUIVEZIMANULUPSIMEKAILIBUSEZELIUISUEZIENEPASITIESTIPRIELOVOS
```

### Answer 6.3

```text
VORASBEREGINTSUREZGEVORATINKLISVYKSTJIUZPUOLIKAMSANTGALVUSUSEMIAUVISUSKAIPZUVISJTINKLAUZSIVERCIAUANTPECIUIRKILSTPAKILSTSTRYKTPASTRYKTTOLIAUPRISUOLIUOJAMPRIEDURU
```

### Answer 6.4

```text
JEI NETIKI PATS PASIKINKYKDVISKRUZDESJSKIEDRAIRPAMATYSITURIUTOKIBOTAGELIPLIAUSKINUEIDAMASIRVISKASVIRSTATUOKOPANORIUPRIETAKELIOKUPSTASKURRADAUPRIRISTASSKRUZDES
```

## Practice 14: numerical answers

The entire relevant content of `kriptografija14.txt` is the short answer record below. It does not identify the scheme, the questions or a decoding procedure, so these values are not assigned an inferred algorithm.

| Original label | Recorded answer |
| --- | --- |
| NR 1 | `10103420` |
| NR 2 | `9018020` |
| NR 3 | `8952919, 9792980, 11538203, 14188588, 17744135` |
| p | `18036047` |

The separate practice 13 answer fragment is described with the [ElGamal material](../labs/13-elgamal/). It uses different signature values from the recovered Python script and is not that script's expected output.
