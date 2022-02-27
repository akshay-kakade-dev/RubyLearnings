# require loads file from $LOAD_PATH or from home working directory(~/todo.rb)
# load loads the path from relative directory, if the full path is passed it loads from thr full path
# require loads file only once and stores in $LOADED_FEATURES, so when the file is loaded in second times it returns false
# load(file_path) fuction loads file multiple times as it doesn't store the file path in $LOADED_FEATURES

# execute below script in irb.
# $COUNTER += 1
# vi counter.rb con
$COUNTER = 0
load('counter.rb')
p $COUNTER
# counter value should be increasing 1,2,3

require('counter.rb')
p $COUNTER
# counter value should be 1.
# if we require counter.rb again, it wont load again.
