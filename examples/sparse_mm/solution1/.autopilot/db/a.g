#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/drichmond/examples/sparse_mm/solution1/.autopilot/db/a.g.bc ${1+"$@"}
