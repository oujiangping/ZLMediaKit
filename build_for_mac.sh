#!/bin/bash
git submodule init
git submodule update

brew install cmake
brew install x264
brew install faac
brew install mp4v2
brew install sdl
brew install ffmpeg
brew install libhiredis-dev

mkdir -p mac_build
rm -rf ./build
ln -s ./mac_build build
cd mac_build
cmake .. -DOPENSSL_ROOT_DIR=/usr/local/Cellar/openssl/1.0.2j/
make -j4