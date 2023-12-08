#!/bin/sh

rm -rf build
mkdir -p build

# fix me, should use cmake variables
cp -f local_options ./driver/src/

cd build
cmake ../driver -DPACKAGE_UIDS=OFF -DPACKAGE_DB=OFF

make install
cd ..
