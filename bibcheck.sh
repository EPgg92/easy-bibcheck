#!/usr/bin/env bash

# Set coloration variables
RESET="\e[39m"
GREEN="\e[32m"
RED="\e[91m"

# Set a temporary working path.
TMP='/tmp/bibcheck.bib'
# If there is no arg take user input with gedit,
# Else use the first arg as input file.
[ $# -eq 0 ] && (rm $TMP 2>&-; gedit $TMP 2>&- ; true) || TMP=$1;
echo -e $RED;
# Check if the file exists.
[ -f $TMP ] || echo -e "File $TMP does not exist" $RESET && false &&
# Lint errors and redirect output in a .checked file.
bibclean $TMP 1> $TMP.checked || false &&
# Set clipboard with pretify result if no error.
xclip -selection clipboard < $TMP.checked &&
# Print message and remove working files.
echo -e $GREEN "Linted and pretify version to copy to clipboard.";
echo -e $RESET;
[ $# -eq 0 ] && rm $TMP 2>&-
rm $TMP.checked 2>&-
