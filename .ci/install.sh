#!/bin/bash
set -e
set -x
if [[ "$(uname -s)" == 'Darwin' ]]; then
    brew update || brew update
    brew install cmake || :
    brew install python3 || :
    brew install conan
fi
