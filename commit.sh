#!/bin/bash

COMMENT=$1

PROJECT_DIR=$(pwd)
SITE_DIR="$PROJECT_DIR/_site"

#   Build /_site

if [ -d "$SITE_DIR" ]; then
   bundle exec jekyll clean
fi

bundle exec jekyll build

#   Commit jekyll files to develop
git add --all
git commit -m "$COMMENT"
git push

#   Creates a backup folder for _site
BACKUP_DIR_NAME="backup_site"

cd ..
PARENT_DIR=$(pwd)
BACKUP_DIR="$PARENT_DIR/$BACKUP_DIR_NAME"

if [ -d "$BACKUP_DIR" ]; then
   rm -rf $BACKUP_DIR
fi

mkdir $BACKUP_DIR_NAME
cd $BACKUP_DIR_NAME

#   Copy ~/_site in ~/backup_site
cp -a "$SITE_DIR/." $BACKUP_DIR

#   Change to master master branch
cd $PROJECT_DIR

git checkout master

#   remove and copy the files from /backup_site to the project
rm *
cp -a "$BACKUP_DIR/." $PROJECT_DIR

#   Commit HTML to master
git add .
git commit -m "$COMMENT"
git push

#   Clean everything
#git checkout develop
rm -rf $BACKUP_DIR
#bundle exec jekyll build 