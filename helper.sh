#!/bin/bash

set -e
rm -rf .git
git init

git config -f .gitmodules --get-regexp '^submodule\..*\.path$' > tempfile

while read -u 3 path_key path
do
    url_key=$(echo $path_key | sed 's/\.path/.url/')
    url=$(git config -f .gitmodules --get "$url_key")

    rm -rf $path; git submodule add -f $url $path; echo "$path has been initialized";

done 3<tempfile

rm tempfile
