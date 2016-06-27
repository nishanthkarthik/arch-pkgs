#!/bin/bash

set -e
set -x

pacman -Qe > pacman.list
pip list > pip.list

timestamp=$(date)
git add .
git commit -m "automated $date"
git push origin master