#!/bin/bash

VERSION=2.43.0
DIR=downloads/usercentrics

rm -rf $DIR
mkdir -p $DIR
cd $DIR
curl -o ./bundle.js.gz --location --request GET "https://app.usercentrics.eu/browser-ui/$VERSION/bundle.js" 
gunzip ./bundle.js.gz
npm config set init-version $VERSION
npm init --yes --scope @csaba
npm publish
cd ..


