#!/bin/dash
# Tests branch and checkout

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
rm a
shrug-rm b
shrug-rm --cached c
echo new contents > d
shrug-add d
shrug-status

shrug-checkout b1
shrug-status


echo "===== Reference ====="

2041-shrug-reset
echo a > a
echo b > b
echo c > c
echo d > d
echo e > e
2041 shrug-add *
2041 shrug-commit -m "Added a b c d e"

2041 shrug-branch b1
rm a
2041 shrug-rm b
2041 shrug-rm --cached c
echo new contents > d
2041 shrug-add d
2041 shrug-status

2041 shrug-checkout b1
2041 shrug-status
