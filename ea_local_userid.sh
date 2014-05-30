#!/bin/bash

localUsers=$(dscl . list /Users UniqueID | awk '$2 > 500 && $2 < 1000 {print $1, $NR $2}')

for u in ${localUsers} ; do
  echo "<result>${u}</result>"
done
