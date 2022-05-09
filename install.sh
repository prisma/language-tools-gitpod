#!/bin/sh
set -eu

# download
curl -L -o extension.vsix $vsix
# install
code --install-extension extension.vsix

# uninstall other possible Prisma extension
code --uninstall-extension Prisma.prisma
code --uninstall-extension Prisma.prisma-insider