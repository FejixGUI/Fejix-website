# Fejix website :smile:

Most of Fejix documentation lives here.

## How to build

1. Install [Hugo](https://gohugo.io/getting-started/installing/)

You can downlaod the Hugo binary for your platform from the [binary releases page](https://github.com/gohugoio/hugo/releases) on GitHub.

2. Download the source

```bash
git clone https://github.com/FejixGUI/Fejix-website --depth 1 --shallow-submodules
```

3. Build locally

```bash
hugo
```

Or, run at localhost:

```bash
hugo serve
```

4. Or deploy on GitHub Pages

> This step does not require the step **3** to be done.

```bash
./deploy.sh
```