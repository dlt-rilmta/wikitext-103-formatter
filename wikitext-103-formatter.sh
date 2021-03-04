#!/bin/bash

INPUT=$1
OUTPUT=$2

echo "Processing..."
echo "0/6. Done."

perl -p -e 's/(?<=\d)(\.|,)(?=\d)/ @\1@ /g' $INPUT > $OUTPUT
echo "1/6. Done."

perl -p -i -e 's/(?<=\S)(-|–)(?=\S)/ @\1@ /g' $OUTPUT
echo "2/6. Done."

perl -MHTML::Entities -p -i -e 'decode_entities($_);' $OUTPUT
echo "3/6. Done."

sed -i -E 's/([[:punct:]])/ \1 /g' $OUTPUT
echo "4/6. Done."

perl -p -i -e 's/  @  (\.|,|-|–)  @  / @\1@ /g' $OUTPUT
echo "5/6. Done."

sed -i -E 's/ {2,}/ /g' $OUTPUT
echo "6/6. Done."

echo "Finished!"