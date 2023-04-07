#!/bin/bash

cd ../../grep || exit
make style 2>output
cat ./output
if [ -z "$(cat output)" ]
then
  exit 0
  else exit 1
  fi