#!/bin/dash
# Tests add, commit, rm, show

echo "===== Mine ====="

shrug-reset
touch a b c d e
shrug-add *
shrug-add *  # Adding no files should have no effect and throw no error 
shrug-commit -m "Added a b c d e"

shrug-rm *
shrug-commit -m "Removed a b c d e"
shrug-show :a

touch a b c d e
shrug-add *
shrug-commit -m "Re-added a b c d e"
shrug-show :a

echo "===== Reference ====="

2041-shrug-reset
touch a b c d e
2041 shrug-add *
2041 shrug-add *  # Adding no files should have no effect and throw no error 
2041 shrug-commit -m "Added a b c d e"

2041 shrug-rm *
2041 shrug-commit -m "Removed a b c d e"
2041 shrug-show :a

touch a b c d e
2041 shrug-add *
2041 shrug-commit -m "Re-added a b c d e"
2041 shrug-show :a




