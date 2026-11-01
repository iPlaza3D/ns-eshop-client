#!/bin/sh

# builds a preset
build_preset() {
    echo Configuring $1 ...
    cmake --preset $1
    echo Building $1 ...
    cmake --build --preset $1
}

build_preset Release

rm -rf out

# --- SWITCH --- #
mkdir -p out/switch/ns-eshop-client/
cp -r build/Release/ns-eshop-client.nro out/switch/ns-eshop-client/ns-eshop-client.nro
pushd out
zip -r9 ns-eshop-client.zip switch
popd
