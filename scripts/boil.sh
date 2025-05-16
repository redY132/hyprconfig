#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <new_name>"
    exit 1
fi

new_name="$1.cpp"

cp "$HOME/coding/hi/boilerplate.cpp" "./$new_name"

nvim "./$new_name"
