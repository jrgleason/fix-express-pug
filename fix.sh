#!/bin/bash
LOCATION=$1
cp views/error.jade views/error.pug
cp views/index.jade views/index.pug
cp views/layout.jade views/layout.pug
patch < "$LOCATION/package.json.patch"
patch < "$LOCATION/app.js.patch"