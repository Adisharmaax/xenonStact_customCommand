#!/bin/bash

file_name=""
size_option=false
permissions_option=false
owner_option=false
last_modified_option=false

while [ "$#" -gt 0 ]; do
    case "$1" in
        --size|-s)
            size_option=true
            ;;
        --permissions|-p)
            permissions_option=true
            ;;
        --owner|-o)
            owner_option=true
            ;;
        --last-modified|-m)
            last_modified_option=true
            ;;
        *)
            file_name="$1"
            ;;
    esac
    shift
done

if [ -z "$file_name" ]; then
    echo "Error: Missing file name. Usage: internsctl file getinfo [options] <file-name>"
    exit 1
fi

if [ ! -e "$file_name" ]; then
    echo "Error: File not found: $file_name"
    exit 1
fi

if [ "$size_option" = true ]; then
    stat --printf="%s\n" "$file_name"
fi

if [ "$permissions_option" = true ]; then
    ls -ld "$file_name" | awk '{ print $1; }'
fi

if [ "$owner_option" = true ]; then
    stat --printf="%U\n" "$file_name"
fi

if [ "$last_modified_option" = true ]; then
    stat --printf="%y\n" "$file_name"
fi

if [ "$size_option" = false ] && [ "$permissions_option" = false ] && [ "$owner_option" = false ] && [ "$last_modified_option" = false ]; then
    stat --printf="File: %n\nAccess: %A\nSize(B): %s\nOwner: %U\nModify: %y\n" "$file_name"
fi
