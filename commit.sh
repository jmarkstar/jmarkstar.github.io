#!/bin/bash

COMMENT=$1

echo "$COMMENT"

bundle exec jekyll clean build
git add --all
git commit -m "$COMMENT"
git push

PROJECT_DIR="$(dirname "${BASH_SOURCE[0]}")"

echo "$PROJECT_DIR"

var=$(pwd)

echo "$var"