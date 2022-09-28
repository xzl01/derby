#!/bin/sh -e

# called by uscan with '--upstream-version' <version> <file>
VERSION=$2
TAR=../derby_$VERSION.orig.tar.xz
DIR=db-derby-$VERSION-src

tar -zxf $3
rm $3
XZ_OPT=--best tar -c -J -f $TAR \
 --exclude '*.bat' \
 --exclude 'tools/java/*' \
 $DIR
rm -rf $DIR
rm -rf db-derby-$VERSION-doc-src
