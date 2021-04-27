#!/bin/bash
# Not currently used, but may be useful for local builds.

SITE_REPO=github.com/apache/aries-site-pub.git

npm run plain-install

rm -rf build
#mkdir -p build/site
# clone the aries-site-pub repo
(
git clone --depth 1 https://$SITE_REPO build/site
cd build/site
pwd
ls
git rm -r .
)

npm run build-noclean
