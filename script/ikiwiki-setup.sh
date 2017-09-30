#! /bin/bash

SRC=/wiki/source
DEST=/wiki/html

mkdir $SRC $DEST
cd /wiki

# Default .setup file
ikiwiki $SRC $DEST --url=http://$VIRTUAL_HOST --dumpsetup wiki.setup

# Update .setup file
ikiwiki --changesetup wiki.setup --cgi \
	--cgiurl http://$VIRTUAL_HOST/ikiwiki.cgi \
	--adminuser elliot --plugin websetup --wrapper $DESK/ikiwiki.cgi

# Update cgi_wrapper
WRAPPER="cgi_wrapper: ''"
NEW_WRAPPER="cgi_wrapper: $DEST/ikiwiki.cgi"
sed -i -e "s@${WRAPPER}@${NEW_WRAPPER}@g" wiki.setup

ikiwiki --setup wiki.setup

chmod -R 777 /wiki
