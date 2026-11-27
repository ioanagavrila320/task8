#!/bin/bash

if [ $# -ne 1 ]; then
        echo "Scriptul $0 trebuie apelat cu argumentul py sau c"
        exit 1
fi

if [ "$1" == "py" ]; then
        python3 zar.py
elif [ "$1" == "c" ]; then
        gcc zar.c -o zar && ./zar
        rm ./zar
else 
        echo "Limbaj necunoscut: $1"
        exit 1;
fi
