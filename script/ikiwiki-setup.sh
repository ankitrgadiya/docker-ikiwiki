#! /bin/bash

SRC=/wiki/source
DEST=/wiki/html

mkdir $SRC $DEST
cd /wiki

# Default .setup file
ikiwiki $SRC $DEST --url=http://$VIRTUAL_HOST --dumpsetup wiki.setup

# Update .setup file
ikiwiki --changesetup wiki.setup \
	--cgi \
	--cgiurl http://$VIRTUAL_HOST/ikiwiki.cgi \
	--adminuser elliot \
	--plugin websetup \
	--plugon 404 \
	--set cgi_wrapper=$DESK/ikiwiki.cgi

ikiwiki --setup wiki.setup

chmod -R 777 /wiki
