# Opening up baryon-number-violating operators

Code, topology files, and supplementary material for a series of projects on tree-level UV completions of baryon-number-violating operators in the Standard Model effective field theory, including right-handed neutrinos.

**Project website:**  
https://julian-heeck.github.io/BNV/

## Papers

### Opening up baryon-number-violating operators

**Julian Heeck, Diana Sokhashvili, and Anil Thapa**

https://arxiv.org/abs/2603.17050

This work constructs tree-level UV completions of **non-derivative** baryon-number-violating operators up to high mass dimension.

### Opening up derivative baryon-number-violating operators

**Julian Heeck and Diana Sokhashvili**

https://arxiv.org/abs/2611.08621

This follow-up extends the analysis to **derivative** baryon-number-violating operators and uses a modified version of the topology/UV-completion code.

## Repository contents

- `topologies/` — Mathematica/FeynArts code and model files used to generate the tree-level topologies.
- `images/` — figures used by the project website.
- `index.html`, `style.css` — source files for the GitHub Pages project website.

Additional code and material for the non-derivative and derivative UV-completion analyses will be organized separately within this repository.

## Shared topology files

The two projects use the same underlying set of tree-level topologies.

The source code for generating the topologies is version-controlled in:

https://github.com/julian-heeck/BNV/tree/main/topologies

Pre-generated topology files are archived on Zenodo:

**Zenodo record:** https://zenodo.org/records/24324313  
**DOI:** https://doi.org/10.5281/zenodo.24324313

The archive contains:

- `topology_files.zip` — Mathematica topology files;
- `topology_text_files.zip` — text representations of the same topologies;
- `topology_pdfs.zip` — PDF representations of the topology diagrams.

## UV-completion data

The UV-completion datasets are substantially larger than the source code and are therefore kept outside the Git repository.

The non-derivative and derivative projects have distinct UV-completion datasets and slightly different generation code. Links to the current datasets and documentation are collected on the project website:

https://julian-heeck.github.io/BNV/

## Requirements

The topology and UV-completion generation code uses:

- [Mathematica](https://www.wolfram.com/mathematica/)
- [FeynArts](https://feynarts.de/)

Additional requirements, file descriptions, and usage notes are given in the README files inside the relevant subdirectories.

## Citation

If you use the topology files or code, please cite the paper(s) relevant to your application.

For the non-derivative analysis:

> Julian Heeck, Diana Sokhashvili, and Anil Thapa,  
> *Opening up baryon-number-violating operators*,  
> arXiv:2603.17050.

For the derivative analysis:

> Julian Heeck and Diana Sokhashvili,  
> *Opening up derivative baryon-number-violating operators*,  
> arXiv:2611.08621.

For archival access to the shared topology files, please also cite the Zenodo dataset where appropriate.
