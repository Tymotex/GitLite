#!/bin/dash
# Tests add, commit, rm, show

echo "===== Mine ====="

shrug-reset
echo line 1 | tee a b c d e f g
shrug-add *
shrug-commit -m "Added a b c d e f g h"

shrug-rm a

shrug-rm --cached b

rm c

echo line 2 >> d

echo line 2 >> e
shrug-add e

echo line 2 >> f
shrug-add f
echo line 3 >> f

echo line 2 >> g
shrug-add g
echo line 3 >> g
shrug-add g

echo line 1 > h
shrug-add h

echo line 1 > i
shrug-add i
echo line 2 >> i

echo line 1 > j
shrug-add j
rm j

echo line 1 > k

shrug-status

shrug-commit -m "Committed"

shrug-status 

echo "===== Reference ====="

2041-shrug-reset
echo line 1 | tee a b c d e f g
2041 shrug-add *
2041 shrug-commit -m "Added a b c d e f g h"


2041 shrug-rm a

2041 shrug-rm --cached b

rm c

echo line 2 >> d

echo line 2 >> e
2041 shrug-add e

echo line 2 >> f
2041 shrug-add f
echo line 3 >> f

echo line 2 >> g
2041 shrug-add g
echo line 3 >> g
2041 shrug-add g

echo line 1 > h
2041 shrug-add h

echo line 1 > i
2041 shrug-add i
echo line 2 >> i

echo line 1 > j
shrug-add j
rm j

echo line 1 > k

2041 shrug-status

2041 shrug-commit -m "Committed"

2041 shrug-status 

