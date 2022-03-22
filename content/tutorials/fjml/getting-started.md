+++
title = 'Getting started'
weight = 1000
summary = 'How to install FjML compiler'
toc = true
+++

**F**e**j**ix **M**arkup **L**anguage (FjML) is the language used to define GUI.

It is (will be) an extensible alternative to HTML, SCSS and, partially, JavaScript.

## Installation

0. Install [Cargo](https://www.rust-lang.org/tools/install), the Rust's package manager.
   
    As of now, Fjml compiler is too young to have binary releases, so the only way to get it is to build from source. 

1. Download the compiler's source code:

    ```bash
    git clone https://github.com/FejixGUI/Fejix-compiler
    ```

2. Build & install:

    ```bash
    cargo install --path Fejix-compiler
    ```

    By default, the executable is installed to `~/.cargo/bin`. To install into another directory:

    ```bash
    cargo install --path Fejix-compiler --root <DESTINATION>
    ```

3. Create environment variable `FEJIX_CONFIG` with the path to compiler's global configuration:

    ```bash
    echo "export FEJIX_CONFIG=$(pwd)/Fejix-compiler/fejix_config.toml" >> ~/.bashrc
    ```

    The configuration file is `fejix_config.toml` in the source directory `Fejix-compiler`.

4. Update your PATH:
   
   ```bash
   source ~/.bashrc
   ```

   Or, alternatively, reopen your shell.

5. Test the installation:

    ```bash
    fjc --version
    ```

    If no "fjc" executable was found or you get an error saying that "fejix_config.toml" was not found, check the previous steps.

## Compiler's configuration

You do not _have_ to define `FEJIX_CONFIG` variable. The compiler also searches `fejix_config.toml` in its CWD.

If you wish to dump the compiler and its configuration file into one directory, also organise the important subdirectories located in the source directory, their names start with `fejix_`.
`fejix_config.toml` contains their paths, by default set to `./fejix_<name>`, so you can either copy all the important directories to the destination place or modify `fejix_config.toml` to point to them.

Cargo by default installs all executables to `~/.cargo/bin`.