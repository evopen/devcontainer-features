#!/bin/sh
set -e

echo "Activating feature 'binstall'"

export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get install -y curl

cd /tmp
echo Downloading cargo-binstall ${VERSION}
curl -sL https://github.com/cargo-bins/cargo-binstall/releases/download/v${VERSION}/cargo-binstall-x86_64-unknown-linux-gnu.tgz -o binstall.tgz
tar zxvf binstall.tgz
mv cargo-binstall /usr/local/bin/
rm binstall.tgz

echo $INSTALL
