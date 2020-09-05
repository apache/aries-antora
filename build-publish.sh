#!/bin/bash

SITE_REPO=git@github.com:apache/aries-site-pub.git
#SITE_REPO=file:///Users/david/projects/aries/site-temp/aries-site-pub.git

npm run clean-install

rm -rf build
mkdir -p build/site
# clone the aries-site-pub repo
(
cd build/site
git clone --depth 1 $SITE_REPO .
git rm -r .
)

npm run build-noclean

(
cd build/site
git add .
git commit -m "site build"
#git push origin master
)
