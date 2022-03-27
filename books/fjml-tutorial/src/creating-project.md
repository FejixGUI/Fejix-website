# Creating a project

In short:

```sh
mkdir my-first-fjml-project
cd my-first-fjml-project
touch fejix.toml
mkdir src/ui
touch src/ui/ui.fj
```

This will create the following structure:

```
my-first-project/
    
    fejix.toml

    src/
        ui/
            ui.fj
```

`fejix.toml` is your Fjml project configuration file.

`ui.fj` is the main UI file.

### Contents of `fejix.toml`

```toml
[project]
name = "my-first-project"
version = "0.0.1"
source = "src/ui"
```

`source` is the path to the directory that contains all of your `.fj` files.

### Contents of `ui.fj`

```fjml
Window
    .title "Hello world!"
```