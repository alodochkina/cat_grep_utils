# cat_grep_utils

Implementation of Bash text utilities: `cat` and `grep`.

## Overview

- s21_cat: simple implementation of the `cat` utility (see [`s21_cat_print`](cat/s21_cat.c)).
- s21_grep: simple implementation of the `grep` utility (see [`main`](grep/s21_grep.c) and [`s21_grep_flags`](grep/s21_grep_flags.c)).

## Build

Build each tool from its directory:

- Build cat:
  - cd into [cat](cat) and run `make` (uses [cat/Makefile](cat/Makefile)):
    ```
    make
    ```
  - Produces `s21_cat`.

- Build grep:
  - cd into [grep](grep) and run `make` (uses [grep/Makefile](grep/Makefile)):
    ```
    make
    ```
  - Produces `s21_grep`.

## Usage examples

- s21_cat:

./s21_cat [OPTIONS] [FILE...]

Supported flags (implemented in `cat/s21_cat.c`):
- Short: `-b`, `-e`, `-n`, `-s`, `-t`, `-v`, `-E`, `-T`
- Long: `--number-nonblank`, `--number`, `--squeeze-blank`

Examples:
- Print a file:
  ```
  ./s21_cat file.txt
  ```
- Number non-blank lines:
  ```
  ./s21_cat -b file.txt
  ```

- s21_grep

./s21_grep [OPTIONS] PATTERN [FILE...]

Supported flags (implemented in `grep/s21_grep_flags.c`):
- `-e` (pattern), `-i` (ignore case), `-v` (invert match), `-c` (count), `-l` (list filenames), `-n` (line numbers)

Examples:
- Search pattern in file:
  ```
  ./s21_grep "pattern" file.txt
  ```
- Case-insensitive count:
  ```
  ./s21_grep -i -c "pattern" file.txt
  ```

## Tests

- Each tool includes a test script in its directory:
- `cat/cat_test.sh`
- `grep/grep_test.sh`

Run the scripts from the project root or their respective directories:
