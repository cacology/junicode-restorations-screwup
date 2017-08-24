#!/bin/bash

for f in `grep -l "\"_above\"" *.glif`; do
awk '/name="_above\""/{c=1;next}
c--<0 && p{print p}
{p=$0}
END{print p}
' $f > new/$f;
done

