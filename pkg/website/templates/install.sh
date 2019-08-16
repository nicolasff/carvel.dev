#!/bin/bash

if test -z "$BASH_VERSION"; then
  echo "Please run this script using bash, not sh or any other shell." >&2
  exit 1
fi

install() {
	set -euo pipefail

	echo "Installing ytt..."
	wget -O- https://github.com/k14s/ytt/releases/download/v0.18.0/ytt-linux-amd64 > /tmp/ytt
	echo "86fdeb00432079209ddec7e2a780f8c8d3faa71dd9f87aed439bb134f0dcfb10  /tmp/ytt" | shasum -c -
	mv /tmp/ytt /usr/local/bin/ytt
	chmod +x /usr/local/bin/ytt
	echo "Installed ytt"

	echo "Installing kbld..."
	wget -O- https://github.com/k14s/kbld/releases/download/v0.11.0/kbld-linux-amd64 > /tmp/kbld
	echo "1029110ffa0263fb75a9deb25642f577bb9d5ee25b1a5b10db55310e05388569  /tmp/kbld" | shasum -c -
	mv /tmp/kbld /usr/local/bin/kbld
	chmod +x /usr/local/bin/kbld
	echo "Installed kbld"

	echo "Installing kapp..."
	wget -O- https://github.com/k14s/kapp/releases/download/v0.11.0/kapp-linux-amd64 > /tmp/kapp
	echo "1d461864afeef5b78ac9eaed7be5acdd699be82f907e7c7efecbbe00b041fbb5  /tmp/kapp" | shasum -c -
	mv /tmp/kapp /usr/local/bin/kapp
	chmod +x /usr/local/bin/kapp
	echo "Installed kapp"

	echo "Installing kwt..."
	wget -O- https://github.com/k14s/kwt/releases/download/v0.0.5/kwt-linux-amd64 > /tmp/kwt
	echo "706abe487e38c4f673180600d11098e408e6bc22fefb1cc512e3ac0f07a9072c  /tmp/kwt" | shasum -c -
	mv /tmp/kwt /usr/local/bin/kwt
	chmod +x /usr/local/bin/kwt
	echo "Installed kwt"
}

install
