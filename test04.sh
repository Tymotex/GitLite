#!/bin/dash
# Tests rm

echo "===== Mine ====="

shrug-reset
touch a b c d e
shrug-add *
shrug-add *  # Adding no files should have no effect and throw no error 
shrug-commit -m "Added a b c d e"

echo new contents | tee a b c

shrug-status

shrug-rm a

shrug-rm --cached b

shrug-rm c
shrug-rm --force c

shrug-rm a d e
shrug-rm d e
shrug-add *
shrug-rm 

shrug-commit -m "Committed"
shrug-status

echo "===== Reference ====="

2041-shrug-reset
touch a b c d e
2041 shrug-add *
2041 shrug-add *  # Adding no files should have no effect and throw no error 
2041 shrug-commit -m "Added a b c d e"

echo new contents | tee a b c

2041 shrug-status

2041 shrug-rm a

2041 shrug-rm --cached b

2041 shrug-rm c
2041 shrug-rm --force c

2041 shrug-rm a d e
2041 shrug-rm d e
2041 shrug-add *
2041 shrug-rm 

2041 shrug-commit -m "Committed"
2041 shrug-status
