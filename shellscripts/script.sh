#!/bin/bash

# hacky way to make shure the script 
# gets allways run from parent-dir 
# so relative paths get resolved the righ way
cd "$(dirname "${BASH_SOURCE[0]}")" && cd ..
# run scripts
./shellscripts/dl_saxon.sh
./shellscripts/dl_imprint.sh
