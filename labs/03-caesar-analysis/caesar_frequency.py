fr = u'GBGSČBĄĖHĖVĖČGĖCVHĘVHDČBNRLĖČSĘŲČAYĖĖLCSĄDAĄOSBĘEMĄREVVĄOYVVDGŲNAVČABZGLBFĖTĄDVLHEVEHHEVGGVHLSRĘGVĮSČLLVLDSGYLVVDAŽEIČSNDRIĖSGDĄSSVDČĖEYBVVĘČĖCBLHIĘĖVVLLDGĘVVDVHSLZĄĘNGČBH'


from collections import defaultdict
abc=u'AĄBCČDEĘĖFGHIĮYJKLMNOPRSŠTUŲŪVZŽ'
n=len(abc)

def guess(test, k, sifr): #test - dažniausių raidžių eilutė, k - spėjamas šifro raktas
    tst=u''
    for r in test:
        if r in abc:
            tst+=r    
    tstk=u''
    for r in tst:
        tstk+=abc[(abc.index(r)+k)%n]
    d = defaultdict(int)
    sifrn=u''
    for r in sifr:
        if r in abc: sifrn+=r
    for r in sifrn:
        if r in tstk: d[r]+=1
    kiek=len(sifrn)
    s=0
    for a in d.keys(): s+=d[a]
    return 1.*s/kiek
test=u'IAOERS'
sifr=u'ABABABASSDDHHDKKKCCCCCLKLDKSJJSJSJLL'

for k in range(0,32):
    print(guess(test,k,fr),k,abc[k])
