#!/bin/bash -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ ! -e "$DIR/../build/hello.exe" ]; then
  "$DIR/build.sh"
fi

mono "$DIR/../build/hello.exe"
