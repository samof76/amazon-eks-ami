#!/bin/bash

# This script is used to disable auto-upgrade on the Amazon Linux 2 AMI.
# It is run as part of the AMI build process.

sudo sed -i 's/^repo_upgrade: .*/repo_upgrade: none/' /etc/cloud/cloud.cfg