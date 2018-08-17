#!/bin/sh
# check whether all web links of one web site are valid or not

SITE=localhost

if [ $# -eq 1 ]; then
        SITE=$1
fi

LEVEL=1
PREFIX="/tmp/checkweblinks"
LOGFILE="checkweblinks.log"
LOGFILE=$PREFIX/$LOGFILE

#echo "now begin to check web site: "$SITE

mkdir -p "$PREFIX"
/usr/bin/wget -R html -N -nH -H -np -nd --random-wait -e robots=off --convert-links --timeout=600 --reject="index.htm*" --content-disposition -P "$PREFIX" -nv -o "$LOGFILE" -r -l $LEVEL --delete-after "$SITE"
S=$?
echo $S
#exit directly
exit $S

if [ $S -eq 0 ]; then
        #echo "check pass!"
        exit 0
fi
>&2 echo -e "Note: don't have to worry about robots.txt\n\n"
>&2 grep -B1 ERROR "$LOGFILE"
test $S -ne 8 && >&2 echo -e "\n\nSome other errors (besides 404) have also occurred!"

echo "check complete, return value: "$S
exit $S
