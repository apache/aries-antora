#!/bin/bash

#npm run clean-install

rm -rf build
mkdir -p build/site
# clone the aries-site-pub repo
(
cd build/site
git clone --depth 1 git@github.com:apache/aries-site-pub.git .
git rm -r .
)

npm run build-noclean

(
cd build/site
git add .
git commit -m "site build"
)
