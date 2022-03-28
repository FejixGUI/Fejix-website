#!/bin/bash

# Usage: ./new-book.sh BOOK_NAME

book_name=$1
book_path=./books/$book_name
template_path=./books/_template

mkdir $book_path

mdbook init $book_path --ignore none --title $book_name

cp -r $template_path/theme $book_path
cp $template_path/fjml.min.js $book_path
cat $template_path/book.toml >> $book_path/book.toml