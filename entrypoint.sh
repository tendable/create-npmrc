#!/bin/sh -l
if [[ -z "$INPUT_ORG_NAME" ]]; then
    echo "@tendable:registry=https://npm.pkg.github.com/" > .npmrc
else
    echo "@$INPUT_ORG_NAME:registry=https://npm.pkg.github.com/" > .npmrc
fi
if [[ -z "$INPUT_AUTH_TOKEN" ]]; then
    echo "//npm.pkg.github.com/:_authToken=$AUTH_TOKEN" >> .npmrc
else
    echo "//npm.pkg.github.com/:_authToken=$INPUT_AUTH_TOKEN" >> .npmrc
fi