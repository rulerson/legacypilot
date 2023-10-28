#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null && pwd)"
OPENPILOT_DIR="$(dirname $(dirname $DIR))"

export PASSIVE="0"
export NOBOARD="1"
export SIMULATION="1"
export SKIP_FW_QUERY="1"
export FINGERPRINT="HONDA CIVIC 2016"
export LOGPRINT="debug"
export BLOCK="loggerd,encoderd,micd"

export PYTHONPATH=$OPENPILOT_DIR:$PYTHONPATH
python3 $OPENPILOT_DIR/selfdrive/manager/manager.py
