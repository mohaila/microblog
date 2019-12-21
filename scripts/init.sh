#!/bin/sh
if [ ! -d build/release ]
then
echo "Creating build/release"
    mkdir -p build/release
fi

if [ ! -d build/debug ]
then
    echo "Creating build/debug"
    mkdir -p build/debug
fi