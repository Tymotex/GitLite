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
seq 1 3 | tee a b c
rm d
touch f g
shrug-add a b c d e f
shrug-commit -m "Added a b c e f. Removed d"

touch memes 
shrug-add memes
shrug-commit -m "Another commit"
shrug-log

shrug-checkout master

shrug-merge b1 -m "Should be a fast forward"

shrug-log # Logs should be combined


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
2041 shrug-checkout b1
seq 1 3 | tee a b c
rm d
touch f g
2041 shrug-add a b c d e f
2041 shrug-commit -m "Added a b c e f. Removed d"

touch memes 
2041 shrug-add memes
2041 shrug-commit -m "Another commit"
2041 shrug-log

2041 shrug-checkout master

2041 shrug-merge b1 -m "Should be a fast forward"

2041 shrug-log # Logs should be combined

