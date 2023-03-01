#!/bin/sh

# Simple script to package up all the files that are required for assignment submission

export MODULE="WorkHealth&Safety"
export VARIANT="Game"
export NAME="PeterDonald"
export BASE_NAME="${MODULE}_${NAME}"
export REPORT_FILE="${BASE_NAME}/${BASE_NAME}.pptx"
export BASE_DIRECTORY="${BASE_NAME}/${MODULE}_${VARIANT}_${NAME}"

export FILES=`git ls-tree -r --name-only HEAD | grep '^WorkHealth'`

rm -f "${BASE_NAME}.zip"
zip -9 "${BASE_NAME}.zip" ${FILES}
