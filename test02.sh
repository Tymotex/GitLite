#!/bin/dash
# Tests commit -a and rm --cached

echo "===== Mine ====="

shrug-reset
echo a > a
echo b > b
echo c > c
echo d > d
shrug-add a b c
shrug-commit -m "Added a b c d"

echo new changes > a
echo more new changes > b
echo yet again more changes > d
shrug-rm --force --cached b

# Since b has been removed from the index, commit -a will not introduce changes to b
shrug-status

shrug-commit -a -m "Used -a"
shrug-status

cat a b c d

echo "===== Reference ====="

2041 shrug-reset
echo a > a
echo b > b
echo c > c
echo d > d
2041 shrug-add a b c
2041 shrug-commit -m "Added a b c d"

echo new changes > a
echo more new changes > b
echo yet again more changes > d
2041 shrug-rm --force --cached b

# Since b has been removed from the index, commit -a will not introduce changes to b
2041 shrug-status

2041 shrug-commit -a -m "Used -a"
2041 shrug-status

cat a b c d
