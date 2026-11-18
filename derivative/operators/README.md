# Derivative operator lists

This directory contains the field-content lists for **derivative baryon-number-violating operators up to and including mass dimension \(d=12\)**.

The files are Wolfram Language (`.wl`) files and are used as input for the generation of tree-level UV completions in

**Julian Heeck and Diana Sokhashvili,  
“Opening up derivative baryon-number-violating operators”**  
[arXiv:2611.08621](https://arxiv.org/abs/2611.08621)

All operators listed here are complex operators with **positive baryon number**. For every listed operator, the Hermitian-conjugate operator with negative baryon number is implicitly present but is **not listed separately**.

## File naming convention

Files are named according to the mass dimension, number of fermion and scalar fields, baryon and lepton number, and number of derivatives. For example,

```text
dim11_4F_1S_1B_-1L_4D.wl
```

denotes operators with

- mass dimension d=11,
- 4 fermion fields,
- 1 scalar field,
- baryon number B=1,
- lepton number L=-1,
- 4 covariant derivatives.

Analogous filenames are used for the other field multiplicities, \(B,L\) sectors, and derivative orders.

## File format

Each `.wl` file contains a Wolfram Language list specifying the field and derivative content of the operator classes. For example,

```Mathematica
{
 {"\[ScriptCapitalD]", "\[ScriptCapitalD]", "\[ScriptCapitalD]",
  "\[ScriptCapitalD]", "Hc", "dR", "dR", "Q", "ec"},

 {"\[ScriptCapitalD]", "\[ScriptCapitalD]", "\[ScriptCapitalD]",
  "\[ScriptCapitalD]", "Hc", "dR", "Q", "Q", "Lc"},

 ...
}
```

Each inner list specifies the **field and derivative content of one operator class**.

The entries

```Mathematica
"\[ScriptCapitalD]"
```

represent derivatives \(\mathcal D\). Repeated entries therefore specify the total number of derivatives in the operator class.

These lists specify the field and derivative content only. In particular, they do not by themselves specify the individual Lorentz, gauge-index, flavor, or derivative contractions of the corresponding operator basis, nor how the derivatives are distributed among the fields.

## Field conventions

The field labels are

| Label | Meaning |
|---|---|
| `H` | Higgs doublet \(H\) |
| `Hc` | charge conjugate of \(H\) |
| `Q` | left-handed quark doublet \(Q\) |
| `Qc` | charge conjugate of \(Q\), i.e. the corresponding right-handed antiquark field |
| `L` | left-handed lepton doublet \(L\) |
| `Lc` | charge conjugate of \(L\), i.e. the corresponding right-handed antilepton field |
| `uR` | right-handed up-type quark \(u_R\) |
| `uc` | charge conjugate of \(u_R\), i.e. the left-handed anti-up field |
| `dR` | right-handed down-type quark \(d_R\) |
| `dc` | charge conjugate of \(d_R\), i.e. the left-handed anti-down field |
| `eR` | right-handed charged lepton \(e_R\) |
| `ec` | charge conjugate of \(e_R\), i.e. the left-handed anti-electron field |
| `NR` | right-handed neutrino \(N_R\) |
| `Nc` | charge conjugate of \(N_R\), with opposite chirality |
| `D` | derivative \(\mathcal D\); stored in the `.wl` files as `"\[ScriptCapitalD]"` |

Thus the suffix `c` denotes **charge conjugation**, rather than Hermitian conjugation. For fermions, charge conjugation reverses the gauge quantum numbers and flips chirality.

## Using the files in Mathematica

A file can be loaded directly with

```Mathematica
operators = Get["dim11_4F_1S_1B_-1L_4D.wl"];
```

After loading, `operators` is an ordinary Mathematica list whose entries give the field and derivative contents of the operator classes in that sector.

For example,

```Mathematica
Length[operators]
```

returns the number of field-content classes in the file, while

```Mathematica
operators[[1]]
```

returns the first entry.
