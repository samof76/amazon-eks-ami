#!/usr/bin/env bash

set -o pipefail
set -o nounset
set -o errexit

sudo grubby --args="psi=1" --update-kernel /boot/vmlinuz-$(uname -r)

sudo reboot