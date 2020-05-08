#! /bin/bash

set -e

TMP_FILE=$(mktemp)

$EDITOR ${TMP_FILE}
mail -s "Braindump" cedric.geissmann@gmail.com < ${TMP_FILE}
rm ${TMP_FILE}
