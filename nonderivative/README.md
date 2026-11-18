# Non-derivative BNV UV completions

This directory contains the Mathematica code and input files used to construct tree-level UV completions of **non-derivative baryon-number-violating SMEFT operators** in

**Julian Heeck, Diana Sokhashvili, and Anil Thapa,  
“Opening up baryon-number-violating operators”**  
[arXiv:2603.17050](https://arxiv.org/abs/2603.17050)

## Contents

### `Generate_UV_completions.nb`

The main Mathematica notebook for generating and analyzing tree-level UV completions of non-derivative operators.

Given an operator field content and a compatible tree-level topology, the notebook determines the possible quantum numbers of the internal particles and constructs the corresponding UV completions.

The notebook also contains routines for

- identifying equivalent UV completions,
- checking whether diagrams vanish because of Higgs-field symmetries,
- calculating amplitudes,
- displaying UV completions as Feynman diagrams,
- and importing previously generated UV-completion files.

The notebook uses the topology conventions and several auxiliary functions developed in the [`../topologies`](../topologies) part of this repository.

### `operators/`

Contains the field-content lists for all non-derivative BNV operators considered in the analysis, through mass dimension 15.

See [`operators/README.md`](operators/README.md) for the file naming convention, field notation, and format.

### `newparticles/`

Contains lists of scalar, fermion, and vector representations according to the **lowest operator mass dimension at which they first occur** in a tree-level non-derivative BNV UV completion.

See [`newparticles/README.md`](newparticles/README.md) for details.

## Requirements

The notebook requires

- [Wolfram Mathematica](https://www.wolfram.com/mathematica/)
- [GroupMath](https://renatofonseca.net/groupmath) by Renato Fonseca

Please also cite GroupMath if you use the notebook for research.

The common topology-generation code and topology files are documented in

[`../topologies`](../topologies).

Pre-generated topology files are archived on Zenodo:

https://doi.org/10.5281/zenodo.24324313

## Project website

Additional documentation and downloadable data are available at

https://julian-heeck.github.io/BNV/

## Citation

If you use this code or the associated non-derivative UV-completion results, please cite

> Julian Heeck, Diana Sokhashvili, and Anil Thapa,  
> *Opening up baryon-number-violating operators*,  
> arXiv:2603.17050.

Please also cite the software packages used by the calculation where appropriate.
