#!/bin/bash

awk '{gsub(/[\+\|]\s+[\+\|]/, "|\n|", $0); print}' | \
enscript $1 --output=- | \
ps2pdf -> $2
