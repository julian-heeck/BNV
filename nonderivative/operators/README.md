# Non-derivative operator lists

This directory contains the field-content lists for **all non-derivative baryon-number-violating operators up to and including mass dimension \(d=15\)**.

The files are Wolfram Language (`.wl`) files and are used as input for the generation of tree-level UV completions in

**Julian Heeck, Diana Sokhashvili, and Anil Thapa,  
“Opening up baryon-number-violating operators”**  
[arXiv:2603.17050](https://arxiv.org/abs/2603.17050)

All operators listed here are complex operators with **positive baryon number**. For every listed operator, the Hermitian-conjugate operator with negative baryon number is implicitly present but is **not listed separately**.

## File naming convention

Files are named according to the mass dimension, number of fermion and scalar fields, and baryon- and lepton-number sector. For example,

```text
dim14_4F_8S_1B_1L.wl
```

denotes operators with

- mass dimension d=14,
- 4 fermion fields,
- 8 scalar fields,
- baryon number B=1,
- lepton number L=1.

Analogous filenames are used for the other field multiplicities and \(B,L\) sectors.

## File format

Each `.wl` file contains a Wolfram Language list of field contents. For example,

```Mathematica
{
 {"H", "H", "H", "H", "H", "Hc", "Hc", "Hc", "dR", "dR", "Q", "L"},
 {"H", "H", "H", "H", "H", "Hc", "Hc", "Hc", "dR", "Q", "Q", "eR"},
 {"H", "H", "H", "Hc", "Hc", "Hc", "Hc", "Hc", "uR", "uR", "Q", "L"},
 ...
}
```

Each inner list specifies the **field content of one operator class**. These lists, generated using Sym2Int, specify only the particle content; they do not encode the individual Lorentz, gauge-index, or flavor contractions of the corresponding operator basis.

## Field conventions

The field labels are

| Label | Meaning |
|---|---|
| `H` | Higgs doublet \(H\) |
| `Hc` | charge-conjugate Higgs field |
| `Q` | left-handed quark doublet \(Q\) |
| `Qc` | charge conjugate of \(Q\), i.e. the corresponding right-handed antiquark doublet |
| `L` | left-handed lepton doublet \(L\) |
| `Lc` | charge conjugate of \(L\), i.e. the corresponding right-handed antilepton doublet |
| `uR` | right-handed up-type quark \(u_R\) |
| `uc` | charge conjugate of \(u_R\), i.e. the left-handed anti-up field |
| `dR` | right-handed down-type quark \(d_R\) |
| `dc` | charge conjugate of \(d_R\), i.e. the left-handed anti-down field |
| `eR` | right-handed charged lepton \(e_R\) |
| `ec` | charge conjugate of \(e_R\), i.e. the left-handed anti-electron field |
| `NR` | right-handed neutrino \(N_R\) |
| `Nc` | charge conjugate of \(N_R\), with opposite chirality |

Thus the suffix `c` denotes **charge conjugation**, rather than Hermitian conjugation. In particular, charge conjugation reverses the gauge quantum numbers and flips fermion chirality.

## Using the files in Mathematica

A file can be loaded directly with

```Mathematica
operators = Get["dim14_4F_8S_1B_1L.wl"];
```

After loading, `operators` is an ordinary Mathematica list whose entries are the field contents of the operator classes in that sector.

For example,

```Mathematica
Length[operators]
```

returns the number of field-content classes in the file, while

```Mathematica
operators[[1]]
```

returns the first field content.
