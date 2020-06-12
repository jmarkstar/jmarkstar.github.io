#!/bin/bash

COMMENT=$1

echo "$COMMENT"

#   Build /_site
bundle exec jekyll clean build

#Commit jekyll files to develop
git add --all
git commit -m "$COMMENT"
git push

#   Caches project path and Creates a backup folder for _site

PROJECT_DIR="$(dirname "${BASH_SOURCE[0]}")"
PROJECT_DIR=$(pwd)
SITE_DIR="$PROJECT_DIR/_site"
BACKUP_DIR_NAME="backup_site"

cd ..
mkdir $BACKUP_DIR_NAME
cd $BACKUP_DIR_NAME
BACKUP_DIR=$(pwd)
echo $BACKUP_DIR

#   Copy ~/_site in ~/backup_site
cp -a "$SITE_DIR/." $BACKUP_DIR

#Change to master master branch
cd $PROJECT_DIR
git checkout master

#remove and move the files from /backup_site
#rm *
#cp -f -a "$BACKUP_DIR/." $PROJECT_DIR

#Commit HTML to master
#git add --all
#git commit -m "$COMMENT"
#git push

#Clean everything
#git checkout develop
#rm $BACKUP_DIR
#bundle exec jekyll build