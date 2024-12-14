#!/bin/bash

rm ./sqlc-gen-json.wasm
rm -rf sqlc
git clone https://github.com/sqlc-dev/sqlc/ sqlc/

cd sqlc

GOOS=wasip1 GOARCH=wasm go build -o ../sqlc-gen-json.wasm ./cmd/sqlc-gen-json/main.go

cd ..

rm -rf sqlc
