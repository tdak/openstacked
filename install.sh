#!/bin/bash

export STACKED_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$STACKED_DIR" ]]; then STACKED_DIR="$PWD"; fi

source "$STACKED_DIR/common/passwords.sh"
source "$STACKED_DIR/common/functions.sh"
# source "$STACKED_DIR/install/basic_environment.install.sh"
source "$STACKED_DIR/install/keystone.install.sh"
