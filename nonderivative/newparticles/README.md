# New particles in non-derivative BNV UV completions

This directory contains lists of new particles that first appear in tree-level UV completions of **non-derivative baryon-number-violating operators** at a given mass dimension.

The files are organized by particle spin and by the lowest operator dimension at which the corresponding particle representation appears.

## File naming convention

The files are named

```text
NewFermions_DimX.wl
NewScalars_DimX.wl
NewVectors_DimX.wl
```

with `X = 6, ..., 15`.

Here `DimX` denotes the **lowest mass dimension of a non-derivative BNV operator whose tree-level UV completion contains that particle representation**.

For example,

```text
NewFermions_Dim7.wl
```

contains fermion representations that appear for the first time in UV completions of dimension-7 non-derivative BNV operators.

## File format

Each `.wl` file contains a Wolfram Language list. For example,

```Mathematica
{
 {"F", {0, 0}, {0}, 0},
 {"F", {0, 0}, {0}, 1},
 {"F", {0, 0}, {1}, 1/2},
 {"F", {0, 0}, {2}, 0},
 {"F", {1, 0}, {0}, -1/3},
 {"F", {1, 0}, {0}, 2/3},
 {"F", {1, 0}, {1}, -5/6},
 {"F", {1, 0}, {1}, 1/6},
 {"F", {1, 0}, {2}, -1/3}
}
```

Each entry has the form

```Mathematica
{"F", SU3rep, SU2rep, Y}
```

for fermions, and analogously

```Mathematica
{"S", SU3rep, SU2rep, Y}
{"V", SU3rep, SU2rep, Y}
```

for scalars and vectors.

The first entry specifies the particle type:

- `F` — fermion
- `S` — scalar
- `V` — vector

The remaining entries specify the representation under

**SU(3)C × SU(2)L × U(1)Y**.

The non-Abelian representations are given by Dynkin labels:

- `{a,b}` for SU(3)C
- `{n}` for SU(2)L

while the final number is the hypercharge `Y`.

For example,

```Mathematica
{"F", {1, 0}, {1}, 1/6}
```

denotes a fermion transforming as

**(3, 2, 1/6)**

under SU(3)C × SU(2)L × U(1)Y.

Some useful examples of the Dynkin-label notation are:

| Dynkin label | Representation |
|---|---|
| SU(3): `{0,0}` | 1 |
| SU(3): `{1,0}` | 3 |
| SU(3): `{0,1}` | anti-3 |
| SU(3): `{1,1}` | 8 |
| SU(2): `{0}` | 1 |
| SU(2): `{1}` | 2 |
| SU(2): `{2}` | 3 |

## Interpretation

These files list the new-particle representations according to the **first mass dimension at which they occur**.

Thus, a particle contained in

```text
NewFermions_Dim7.wl
```

may also appear in UV completions of higher-dimensional operators, but it is not repeated in the higher-dimensional files merely for that reason.

The lists therefore provide a compact way to identify when increasingly exotic scalar, fermion, or vector representations first become necessary in tree-level UV completions.

## Scope

The files cover non-derivative baryon-number-violating operators from dimension 6 through dimension 15.

They are associated with the non-derivative analysis described in

**Julian Heeck, Diana Sokhashvili, and Anil Thapa,  
“Opening up baryon-number-violating operators”**  
[arXiv:2603.17050](https://arxiv.org/abs/2603.17050)

The corresponding operator lists are available in

[`../operators`](../operators)

and the project website is

https://julian-heeck.github.io/BNV/

## Using the files in Mathematica

A file can be loaded with

```Mathematica
newFermions = Get["NewFermions_Dim7.wl"];
```

after which the entries can be manipulated as ordinary Wolfram Language lists.

## Citation

If you use these particle lists or the associated UV-completion results, please cite

> Julian Heeck, Diana Sokhashvili, and Anil Thapa,  
> *Opening up baryon-number-violating operators*,  
> arXiv:2603.17050.
