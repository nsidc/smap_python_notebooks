#!/bin/bash

THISDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source activate smap
jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --config=$THISDIR/jupyter_notebook_config.py --notebook-dir=$THISDIR/notebooks/
