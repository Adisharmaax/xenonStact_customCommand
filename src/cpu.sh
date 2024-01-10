#!/bin/bash

case "$1" in
    getinfo)
        lscpu
        ;;
    *)
        echo "Error: Invalid subcommand for 'cpu'"
        exit 1
        ;;
esac

