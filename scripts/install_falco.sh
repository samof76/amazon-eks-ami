#!/usr/bin/env bash

set -o pipefail
set -o nounset
set -o errexit

sudo rpm --import https://falco.org/repo/falcosecurity-3672BA8F.asc
sudo curl -s -o /etc/yum.repos.d/falcosecurity.repo https://falco.org/repo/falcosecurity-rpm.repo
sudo yum install -y kernel-devel-$(uname -r)
sudo yum install -y falco
sudo systemctl disable falco
