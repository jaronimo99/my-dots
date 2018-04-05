#!/bin/bash
source $PWD/scripts/helpers.sh

if ! command_exists yarn ; then
  print "Installing yarn"
  brew install yarn
fi

YARN_VERSION="$(yarn --version)"

print "YARN Version: $YARN_VERSION"
print "Installing globals"
yarn global add eslint nodemon eslint-config-recommended cwtail serverless npm-check depcheck updtr babel-eslint eslint-watch mocha
