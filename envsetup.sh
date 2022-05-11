#!/usr/bin/env bash
test "$BASH_SOURCE" = "" && echo "This script can be sourced only from bash" && return
SCRIPT_SOURCE=$BASH_SOURCE
test "$SCRIPT_SOURCE" = "$0" && echo "Script is being run, should be sourced" && exit 1

SCRIPT_DIR=$(cd $(dirname $SCRIPT_SOURCE); pwd)
echo "Models Path: $SCRIPT_DIR"

export PRETRAINED_MODELS=$SCRIPT_DIR

