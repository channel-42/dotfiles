#!/bin/bash

#Luke Smith's file opener script
# opout: "open output": A general handler for opening a file's intended output,
# usually the pdf of a compiled document.  I find this useful especially
# running from vim.

#get suffix
basename="$(echo "$1" | sed 's/\.[^\/.]*$//')"

#exec depending on file's suffix
case "$1" in
	*.tex|*.md|*.[rR]md|*.ms|*.me|*.mom) zathura "$basename".pdf >/dev/null 2>&1 & ;;
esac
