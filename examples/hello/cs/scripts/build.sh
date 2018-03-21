#!/bin/bash -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$DIR/../build"

mono-csc "$DIR/../hello.cs" -out:"$DIR/../build/hello.exe"
