{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    (pkgs.python3.withPackages (ps: with ps; [
      streamlit
      biopython
      numpy
      scipy
      plotly
      scikit-learn
      joblib
      pandas
      pyzmq
    ]))
    pkgs.python3Packages.pip
    pkgs.stdenv.cc.cc.lib
    pkgs.zlib
  ];

  shellHook = ''
    export LD_LIBRARY_PATH=${pkgs.stdenv.cc.cc.lib}/lib:${pkgs.zlib}/lib:$LD_LIBRARY_PATH

    if [ ! -d .nix-venv ]; then
      python -m venv .nix-venv --system-site-packages
    fi
    source .nix-venv/bin/activate
    pip install \
      py3Dmol==2.1.0 \
      stmol==0.0.9 \
      ipython_genutils==0.2.0 \
      --quiet
    alias streamlit="python -m streamlit"
    echo "✅ Environment ready"
  '';
}
