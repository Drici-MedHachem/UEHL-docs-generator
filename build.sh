#!/usr/bin/env bash

set -e

if [ $# -ne 1 ]; then
    echo "Usage: $0 <document.tex>"
    exit 1
fi

SOURCE="$1"

if [ ! -f "$SOURCE" ]; then
    echo "Error: file '$SOURCE' does not exist."
    exit 1
fi

# Get the filename without the .tex extension
BASENAME="$(basename "$SOURCE" .tex)"

# Build directory for this document
BUILD_DIR="build/$BASENAME"

# Clean only this document's build directory
rm -rf "$BUILD_DIR"

# Recreate it
mkdir -p "$BUILD_DIR"

# Build
TEXINPUTS="$PWD/texmf/tex/latex/csdept//:" \
latexmk \
    -lualatex \
    -shell-escape \
    -outdir="$BUILD_DIR" \
    "$SOURCE"