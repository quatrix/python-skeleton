#!/bin/bash

set -u
set -e

usage() 
{
    echo "usage: $0 PROJECT_NAME"
    exit 1
}

[ $# -eq 1 ] || usage

PROJECT_NAME=$1
AUTHOR=$(git config user.name)
AUTHOR_EMAIL=$(git config user.email)
REPO_DIR=$(dirname ${BASH_SOURCE[0]})

if [ -e $PROJECT_NAME ]
then
    echo "$PROJECT_NAME already exists"
    exit 1
fi

cp -r $REPO_DIR/skeleton $PROJECT_NAME
cd $PROJECT_NAME
mv NAME $PROJECT_NAME
mv tests/test_NAME.py tests/test_$PROJECT_NAME.py
perl -p -i -e "s/NAME/${PROJECT_NAME}/g; s/AUTHOR_EMAIL/${AUTHOR_EMAIL}/g; s/AUTHOR/${AUTHOR}/g" setup.py
perl -p -i -e "s/NAME/${PROJECT_NAME}/g;" tests/test_$PROJECT_NAME.py

git init .
git add .
git commit -a -m "Started project ${PROJECT_NAME}"
