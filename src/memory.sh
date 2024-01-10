#!/bin/bash

case "$1" in
    getinfo)
        free -m
        ;;
    *)
        echo "Error: Invalid subcommand for 'memory'"
        exit 1
        ;;
esac

