# RSA factorization scratch cells

These excerpts are retained from `kriptografija11.txt` as incomplete worksheet work. They are not additional executable entry points. The two complete RSA calculation cells are described in the [lab README](README.md).

## Active scratch cell

Source: lines 58-76. The cell starts from a known RSA private exponent and explores recovering another exponent for the same modulus. It keeps intermediate values and bare expressions in their original form.

```sage
[n,em,dm]=  [783022693522923704053070534403467350686105947502853, 43, 291357281310855331740677374904888361483777011850883]
[n,ea]=  [783022693522923704053070534403467350686105947502853, 89]

c = 553484627165960679097862041553305620392474764997680
#t = (em*dm-1)//2//2//2//2//2//2//2//2//2//2//2//2//2
t = 1529341198286960359478653213001733342749317811229
a = 1
a0 = power_mod(a,t,n)
#a0 = 701401720603557495630980488370622336858391765673374
a1 = power_mod(a0, 2, n)
a1 = 1

gcd(a0-1,n)
p = 1
q = n/p
q
fi=(p-1)*(q-1)
da = 1/ea%fi
da
```

In this saved state, `p=1` makes `fi=(p-1)*(q-1)` equal to zero. The subsequent operation modulo `fi` therefore cannot complete this recovery. The bare `gcd(...)` expression is displayed but not assigned to `p`. These lines are preserved to show the state of the work, without supplying missing steps or replacing the original values.

## Commented alternative

Source: lines 164-181, originally inside a triple-quoted block. The outer quote delimiters are omitted below so the code itself is readable.

```sage
a = 33223381285
a0 = power_mod(a,t,n)
#a0 = 701401720603557495630980488370622336858391765673374
a1 = power_mod(a0, 2, n)
a2 = power_mod(a1, 2, n)
a3 = power_mod(a2, 2, n)
a4 = power_mod(a3, 2, n)
a5 = power_mod(a4, 2, n)
a6 = power_mod(a5, 2, n)
a6
gcd(a5-1,n)
#79496847203390844133441669
p = 79496847203390844133441669
q = n/p
q
fi=(p-1)*(q-1)
da = 1/ea%fi
da
```

This alternative refers to `t` and `ea` from earlier worksheet state. It is preserved separately rather than spliced into the direct-decryption script. SageMath arithmetic is intended: `power_mod` and `gcd` are Sage functions, and the exact division/modulo expressions must not be silently interpreted as Python floating-point arithmetic.

## Recorded answer

The worksheet separately annotates the second RSA exercise with `rupesciai baigti`. It is retained as a historical answer; the unfinished active cell above is not presented as a script that reproduces it.
