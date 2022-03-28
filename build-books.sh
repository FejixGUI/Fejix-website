#!/bin/bash
for book_path in books/*; do
    echo "Building $book_path"
    mdbook build $book_path
done