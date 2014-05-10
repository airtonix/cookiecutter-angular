#!/bin/sh
# Post-generate hook

npm install
nodejs ./node_modules/.bin/bower install
