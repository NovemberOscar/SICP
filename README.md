# SICP
> Structure and Interpretation of Computer Programs 2/E

## Setup environment

Only for macOS

### Interpreter

#### racket

recommended way

```bash 
brew install racket
raco pkg install sicp
racket FILENAME
```

#### mit-scheme
first, comment out all `#lang sicp`

```bash
brew install mit-scheme
scheme < FILENAME
```

### Editor setting

install VSCode and extension `sjhuangx.vscode-scheme`