#!/bin/sh
set -eu

# download
curl -o extension.vsix https://github.com/prisma/language-tools/blob/artifacts/pull-request-artifacts/pr1148-prisma.vsix?raw=true
# install
code --install-extension extension.vsix
