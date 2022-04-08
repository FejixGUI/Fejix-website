# Installation

0. Install [Cargo](https://www.rust-lang.org/tools/install), the Rust's package manager.
   
    As of now, Fjml compiler is too young to have binary releases, so the only way to get it is to build from source.

1. Define where to install Fejix standard library and compiler's configuration:
   
   ```sh
   export FEJIX_CONFIG_PATH=~/.fejix
   ```

   This is recommended, but not necessary if you already have the stdlib and config installed.

   The variable is needed only for the next two steps and can be deleted afterwards.

2. Install Fjml compiler:
    ```sh
    cargo install fejix-compiler
    ```

3. Create an environment variable that contains the path to `fejix_config.toml` that has been downloaded:

   ```sh
   echo "export FEJIX_CONFIG=$FEJIX_CONFIG_PATH/fejix_config.toml" >> ~/.bashrc
   source ~/.bashrc
   ```

   In Windows you can do that through Settings.

   Shortcut (using Win+R):
   ```
   rundll32.exe sysdm.cpl,EditEnvironmentVariables
   ```

   The variable tells the compiler where to find its configuration.

4. Check the installation:

   ```sh
   fjc --version
   ```

   This should output the version of the compiler.