#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Użycie: $0 <katalog_źródłowy> <katalog_docelowy>"
    exit 1
fi

SRC=$1
DEST=$2
DATA=$(date +%F)

if [ ! -d "$SRC" ]; then
    echo "Katalog źródłowy nie istnieje"
    exit 1
fi

mkdir -p "$DEST"

for folder in "$SRC"/*; do
    if [ -d "$folder" ]; then
        nazwa=$(basename "$folder")
        zip -r "$DEST/$nazwa-$DATA.zip" "$folder"
    fi
done

zip "$DEST/__pliki-$DATA.zip" "$SRC"/* 2>/dev/null

echo "Gotowe"