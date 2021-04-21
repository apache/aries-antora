#!/bin/bash

SITE_REPO=https://github.com/apache/aries-antora.git
#SITE_REPO=file:///Users/david/projects/aries/site-temp/aries-site-pub.git

npm run plain-install

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
