#!/usr/bin/env bash

#exit if any command fails
set -e

artifactsFolder="./artifacts"

if [ -d $artifactsFolder ]; then  
  rm -R $artifactsFolder
fi

cd src/dotnet-compile-fsc

dotnet --info

dotnet restore -v Information

dotnet build

revision=${TRAVIS_JOB_ID:=1}  
revision=$(printf "%04d" $revision) 