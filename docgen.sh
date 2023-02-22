#!/bin/sh

OUTPUT_DIR="docs/technical"

# clean output directory
rm -rf $OUTPUT_DIR

# generate docs
yarn solidity-docgen -i solidity/interfaces -o $OUTPUT_DIR --solc-module solc-0.8

# leave only docs/interfaces files in docs directory
rm -rf $OUTPUT_DIR/for-test $OUTPUT_DIR/contracts

# set directory title
echo "# Technical" > $OUTPUT_DIR/README.md
