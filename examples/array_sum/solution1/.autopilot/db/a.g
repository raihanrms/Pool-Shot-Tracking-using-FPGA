#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/drichmond/examples/array_sum/solution1/.autopilot/db/a.g.bc ${1+"$@"}
