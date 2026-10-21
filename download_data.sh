#!/bin/bash
mkdir -p ./data/austen ./data/shakespeare ./data/bbc

kaggle datasets download -d joshmcadams/jane-austin-and-charles-dickens -p ./data/austen --unzip
kaggle datasets download -d thedevastator/the-bards-best-a-character-modeling-dataset -p ./data/shakespeare --unzip
kaggle datasets download -d shivamkushwaha/bbc-full-text-document-classification -p ./data/bbc --unzip

echo "Done. Contents:"
ls ./data/austen ./data/shakespeare ./data/bbc
