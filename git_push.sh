#!/bin/sh

GIT=`which git`
REPO_DIR=/home/anihegde/learn/shell
cd ${REPO_DIR}
${GIT} add --all .
${GIT} commit -m "Test commit"
${GIT} push git@github.com:anandhegde/directory_change.git master