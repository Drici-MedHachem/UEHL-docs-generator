# CS Department Document Generator

## Requirements

The project uses:

* LuaLaTeX
* TeX Live
* `latexmk`
* Libertinus fonts
* `minted`
* Python 3 + Pygments

## Installation

On a fresh Debian system:

```bash
sudo apt update
sudo apt install texlive-full python3 python3-pygments
```

This installs LuaLaTeX, `latexmk`, the required LaTeX packages and fonts, `minted`, and Pygments.

Verify the installation:

```bash
lualatex --version
latexmk --version
pygmentize --version
```

All three commands should return version information.

## Build

Make the build script executable:

```bash
chmod +x build.sh
```

Build a document with:

```bash
./build.sh test.tex
```

The generated files will be placed in:

```text
build/test/
```

For example:

```text
build/
└── test/
    ├── test.pdf
    ├── test.aux
    ├── test.log
    └── ...
```

The build script automatically:

* Uses LuaLaTeX.
* Enables `shell-escape` for `minted`.
* Makes the local `csdept` class and packages available.
* Cleans only the build directory belonging to the document being built.

## Reference Documentation

The `reference/` folder contains:

* `reference.tex` — the source code demonstrating the available features provided by the project.
* `reference.pdf` — the compiled reference document showing how those features appear in the final document.

Use these files as a reference when creating documents with the `csdept` class and its packages.

## Project Structure

```text
csdept/
├── build.sh
├── texmf/
│   └── tex/
│       └── latex/
│           └── csdept/
│               ├── csdept.cls
│               ├── csdept-math.sty
│               ├── csdept-code.sty
│               ├── csdept-theorems.sty
│               ├── csdept-algorithms.sty
│               └── csdept-boxes.sty
└── reference/
    ├── reference.tex
    └── reference.pdf

```

The `reference/` folder contains a complete reference document demonstrating the features available in the project:

* `reference.tex` — source code illustrating how to use the available features.
* `reference.pdf` — compiled document showing the resulting appearance.


## Notes

The documents must be built with the provided `build.sh` script so that LaTeX can locate the local `csdept` class and packages.

`minted` requires `shell-escape` to run Pygments. Only build documents from sources you trust.
