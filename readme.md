# 🧬 ProteinScope: Mutation & Pathogen Detection Dashboard
# ProteinScope Command Center 🧬
Advanced Molecular Alignment & Bio-Threat Assessment System

> Real-time 3D protein structural comparison and pathogenicity prediction in your browser.

## 🎯 What It Does
Drop two PDB files (a reference protein and a variant) → ProteinScope:
1. **Parses** the atomic coordinates
2. **Aligns** them via the Kabsch algorithm (SVD-based optimal rotation)
3. **Computes** global + per-residue RMSD
4. **Renders** an interactive, rotatable 3D overlay
5. **Flags** mutation hotspots above your threshold
6. **Predicts** pathogenicity with a Random Forest classifier

## 🛠️ Stack
Streamlit · Biopython · NumPy · SciPy · py3Dmol + stmol · Plotly · scikit-learn

## ⚡ Install & Run
1. Clone this repo to a destination directory and change PATH:
```
git clone https://github.com/Cresol3127/ProteinScope /path/to/dest/ && cd /path/to/dest/ProteinScope
```

2. Install required libraries for python:
```
pip install -r requirements.txt         # for Windows users
pip3 install -r requirements.txt        # for MacOS users
nix-shell                               # for Nix users
```

3. Run model to train on the data:
```
python models/train_classifier.py     # one-time: builds rf_pathogen.pkl
```

4. Finally, launch the dashboard: (it'll auto-open in a browser, or you can click one of the links from the output)
```
streamlit run app.py
```

## 📂 Project Structure
```
ProteinScope/
├── app.py
├── core/
│   ├── pdb_parser.py
│   ├── aligner.py
│   ├── mutation_detector.py
│   ├── pathogen_classifier.py
│   └── synthetic_data.py
├── models/
│   ├── train_classifier.py
│   └── rf_pathogen.pkl
├── requirements.txt
├── shell.nix
└── README.md
```

## 📸 Project Showcase
** Homepage seen upon launching the dashboard **
<img width="928" height="986" alt="home" src="https://github.com/user-attachments/assets/036583e7-c842-456c-8bcd-b7c78f5c38b5" />

** Sidebar with utilities **
<img width="270" height="1077" alt="sidebar" src="https://github.com/user-attachments/assets/e4d69876-ccff-42e1-b508-0a477a2313c8" />

** Final Output **
<img width="781" height="844" alt="final-output" src="https://github.com/user-attachments/assets/cb9527a0-25af-443b-9430-9590839de9c7" />

## License
This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
