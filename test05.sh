#!/bin/dash
# Tests show

echo "===== Mine ====="

shrug-reset
seq 1 3 > a
seq 1 4 > b
seq 1 5 > c
shrug-add *
shrug-commit -m "Added a b c"

shrug-branch b1
shrug-branch -d b1
shrug-branch -d b1  # Should fail
shrug-branch b1   

seq 1 10 > a
shrug-add *
shrug-commit -m "Changed a"

shrug-log

shrug-checkout b1

cat a
shrug-log

echo "===== Reference ====="

2041-shrug-reset
seq 1 3 > a
seq 1 4 > b
seq 1 5 > c
2041 shrug-add *
2041 shrug-commit -m "Added a b c"

2041 shrug-branch b1
2041 shrug-branch -d b1
2041 shrug-branch -d b1  # Should fail
2041 shrug-branch b1   

seq 1 10 > a
2041 shrug-add *
2041 shrug-commit -m "Changed a"

2041 shrug-log

2041 shrug-checkout b1

cat a
2041 shrug-log
