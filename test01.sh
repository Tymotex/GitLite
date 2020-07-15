#!/bin/dash
# Tests show

echo "===== Mine ====="

shrug-reset
seq 1 3 > a
seq 1 4 > b
seq 1 5 > c
shrug-add *
shrug-commit -m "Added a b c"

shrug-show :a
shrug-show :b
shrug-show :c
shrug-show 0:a
shrug-show 0:b
shrug-show 0:c
shrug-show 1:a
shrug-show 1:b
shrug-show 1:c

touch d
shrug-add d
shrug-commit -m "Added empty d"

shrug-show 1:a
shrug-show 1:b
shrug-show 1:c

shrug-log

echo "===== Reference ====="

2041-shrug-reset
seq 1 3 > a
seq 1 4 > b
seq 1 5 > c
2041 shrug-add *
2041 shrug-commit -m "Added a b c"

2041 shrug-show :a
2041 shrug-show :b
2041 shrug-show :c
2041 shrug-show 0:a
2041 shrug-show 0:b
2041 shrug-show 0:c
2041 shrug-show 1:a
2041 shrug-show 1:b
2041 shrug-show 1:c

touch d
2041 shrug-add d
2041 shrug-commit -m "Added empty d"

2041 shrug-show 1:a
2041 shrug-show 1:b
2041 shrug-show 1:c

2041 shrug-log




