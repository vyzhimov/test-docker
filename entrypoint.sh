#!/bin/bash

set -e
if [ ! -f app.js ]; then
  echo '{
    "scripts": {
      "start": "node ./bin/www"
    }
  }' > './package.json'
  cd ..
  express --no-view api-homework --force
  cd api-homework
fi

# -------------------
npm install

DEBUG=api-homework:* npm start
