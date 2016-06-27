#!/bin/bash

set -e
set -x
cd "$(dirname "$0")"

pacman -Qe > pacman.list
pip list > pip.list

timestamp=$(date)
git add .
git commit -m "automated $timestamp"
git push origin master
