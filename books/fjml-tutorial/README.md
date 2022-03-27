# Fjml tutorial

Made with [mdBook](https://github.com/rust-lang/mdBook)

Install mdBook:
```sh
cargo install mdbook
```

Build:
```sh
cd Fejix-website/books/fjml-tutorial
mdbook build
```

## Modifications

I modified default mdBook's index.hbs file:

1. Added "Back to home" button.
2. Added `<script>` tag which adds `fjml.min.js` highlighting for _Highlight.js 10_ after `highlight.js` is loaded and before `book.js` is loaded (`book.js` triggers code highlighting)