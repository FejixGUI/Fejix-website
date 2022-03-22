+++
title = 'First project'
weight = 999
summary = 'How to create your first project'
+++

1. Create a new directory `project1` and open it.

2. Create the project manifest `fejix.toml`:

    ```toml
    [project]
    name = 'Project1'
    version = '0.0.1'
    source = 'src'
    ```

3. Create the source directory `src` and there a new file `ui.fj`. The name does not matter but the extension must be ".fj".