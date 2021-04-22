#!/bin/bash

SITE_REPO=https://github.com/apache/aries-site-pub.git
#SITE_REPO=file:///Users/david/projects/aries/site-temp/aries-site-pub.git

npm run plain-install

rm -rf build
#mkdir -p build/site
# clone the aries-site-pub repo
(
git clone --depth 1 $SITE_REPO build/site
cd build/site
pwd
ls
git rm -r .
)

npm run build-noclean

(
cd build/site
git add .
echo `git commit -m "site build"`
#git push origin master
)
