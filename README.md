# haskell-study-notes
Personal study notes on Haskell written in LaTeX.
Some of the exercises I'm following from Haskell from First Principles can be found in `work`

## Requirements
- `texlive`
- `pdflatex`

## Building

### Linux/OSX
Install `texlive` and `pdflatex` from your distributions package manager.

- On Arch Linux, install `texlive-most`.
- On Ubuntu install `texlive-full`.

```sh
pdflatex -halt-on-error -output-directory pdf notes.tex
```

### Windows
Just use WSL and follow the above steps for Linux, or check out the `pdf` directory containing the built PDFs.