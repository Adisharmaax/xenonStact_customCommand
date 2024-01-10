#!/bin/bash

case "$1" in
    create)
        if [ -z "$2" ]; then
            echo "Error: Missing username. Usage: internsctl user create <username>"
            exit 1
        fi
        useradd "$2"
        passwd "$2"
        ;;
    list)
        cut -d: -f1 /etc/passwd
        ;;
    *)
        echo "Error: Invalid subcommand for 'user'"
        exit 1
        ;;
esac

