#!/bin/dash
# Tests branch, checkout, log, show

echo "===== Mine ====="

shrug-reset
seq 1 3 | tee a b c d e
shrug-add *
shrug-commit -m "Added a b c d e"

shrug-branch b1

seq 1 5 > a
shrug-add *
shrug-commit -m "Changed a"

shrug-checkout b1

seq 1 5 | tee a b c
rm d
touch f g h
shrug-add *
shrug-commit -m "Removed d, changed a b c, added f g h"

shrug-checkout master
shrug-merge b1 -m "Should successfully merge"

echo "===== Reference ====="


2041-shrug-reset
seq 1 3 | tee a b c d e
2041 shrug-add *
2041 shrug-commit -m "Added a b c d e"

2041 shrug-branch b1

seq 1 5 > a
2041 shrug-add *
2041 shrug-commit -m "Changed a"

2041 shrug-checkout b1

seq 1 5 | tee a b c
rm d
touch f g h
2041 shrug-add *
2041 shrug-commit -m "Removed d, changed a b c, added f g h"

2041 shrug-checkout master
2041 shrug-merge b1 -m "Should successfully merge"





