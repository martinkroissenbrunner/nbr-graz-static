#!/bin/bash

# Entferne alte Datenverzeichnisse
echo "Cleaning up old data directories..."
rm -rf data/editions data/meta data/mets data/register

# Klone das Repository mit den neuesten Daten
echo "Cloning the latest version of the data repository..."
git clone https://github.com/nuntiaturberichte/nbr-graz-data.git temp-data-repo

# Verschiebe die benötigten Daten
echo "Moving data to the correct locations..."
mv temp-data-repo/editions data/
mv temp-data-repo/meta data/
mv temp-data-repo/mets data/
mv temp-data-repo/register data/

# Bereinige das temporäre Klonverzeichnis
echo "Cleaning up..."
rm -rf temp-data-repo

echo "Data fetch complete."
