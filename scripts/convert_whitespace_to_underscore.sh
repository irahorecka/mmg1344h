#!/bin/bash
# Recursively converts whitespace in directory and file names to underscore

find . -depth -name '* *' \
| while IFS= read -r f ; do mv -i "$f" "$(dirname "$f")/$(basename "$f"|tr ' ' _)" ; done
