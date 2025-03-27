#!/bin/bash

TEMPF=$(mktemp /tmp/tmpfile.XXXX)
TEMPD=$(mktemp -d /tmp/tmpdir.XXXX)

echo "wowowowwowowowowow" >> $TEMPF
mv $TEMPF $TEMPD
cat $TEMPF
ls -alFh /tmp

ls -alFh $TEMPD
ls -alFh /tmp
rm -r $TEMPD

ls -alFh /tmp
