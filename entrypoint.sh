#!/bin/bash

OUTPUTFOLDER=$GITHUB_WORKSPACE/html

CURRENTFOLDER=`pwd`

git clone https://github.com/$1.git repositories/$1 || (cd repositories/$1 && git pull)

mkdir -p html/$(dirname $1)

echo "Running gitinspector on ${1}"

gitinspector repositories/$1 --grading=true --metrics=true -HTl -F html > $OUTPUTFOLDER/$1.html

cd $OUTPUTFOLDER
echo "" > index.html

for REPORT in */*.html; do
    echo "<a href=\"$REPORT\">$REPORT</a><br>" >> index.html
done

exit 0
