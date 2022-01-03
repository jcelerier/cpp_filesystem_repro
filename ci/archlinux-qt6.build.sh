#!/bin/bash

export SCORE_DIR=$PWD

mkdir -p /build || true
cd /build

cmake $SCORE_DIR \
  -GNinja \
  -DQT_VERSION="Qt6;6.2" \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_INSTALL_PREFIX=install \
  -DSCORE_DYNAMIC_PLUGINS=1 \
  -DSCORE_PCH=1

cmake --build .
cmake --build . --target install