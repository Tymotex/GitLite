#!/bin/dash
# Tests branch, checkout, log, show

echo "===== Mine ====="

shrug-reset
echo a > a
echo b > b
echo c > c
echo d > d
echo e > e
shrug-add *
shrug-commit -m "Added a b c d e"

shrug-branch b1
shrug-checkout b1
seq 1 3 | tee a b c > /dev/null 
rm d
shrug-rm --cached e
shrug-add *
shrug-commit -m "1 2 3 added to all a b c d e"

shrug-show :a
shrug-show 0:a
shrug-show 1:a

shrug-show :d
shrug-show 0:d
shrug-show 1:d

shrug-show :e
shrug-show 0:e
shrug-show 1:e

shrug-log

shrug-checkout master
shrug-show :a
shrug-show :d

shrug-log

echo "===== Reference ====="

2041 shrug-reset
echo a > a
echo b > b
echo c > c
echo d > d
echo e > e
2041 shrug-add *
2041 shrug-commit -m "Added a b c d e"

2041 shrug-branch b1
2041 shrug-checkout b1
seq 1 3 | tee a b c > /dev/null 
rm d
2041 shrug-rm --cached e
2041 shrug-add *
2041 shrug-commit -m "1 2 3 added to all a b c d e"

2041 shrug-show :a
2041 shrug-show 0:a
2041 shrug-show 1:a

2041 shrug-show :d
2041 shrug-show 0:d
2041 shrug-show 1:d

2041 shrug-show :e
2041 shrug-show 0:e
2041 shrug-show 1:e

2041 shrug-log

2041 shrug-checkout master
2041 shrug-show :a
2041 shrug-show :d

2041 shrug-log
