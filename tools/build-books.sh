#!/bin/bash

for book_path in ./books/*; do
    if [ $(basename -- "$book_path") != "_template" ]; then
        echo "Building $book_path"
        mdbook build $book_path
    fi
done