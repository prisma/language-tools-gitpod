#!/bin/sh
set -eu

# download
curl -L -o extension.vsix $vsix
# wait for vscode "extension port" to be ready
gp ports await 23000
# install
code --install-extension extension.vsix

# uninstall other possible Prisma extension
code --uninstall-extension Prisma.prisma
code --uninstall-extension Prisma.prisma-insider
