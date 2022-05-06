#!/bin/sh
set -eu

# download
curl -L -o extension.vsix $vsix
# install
code --install-extension extension.vsix
