#!/bin/bash
P56xxLIBS="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export P56xxLIBS=$P56xxLIBS

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$P56xxLIBS/lib

