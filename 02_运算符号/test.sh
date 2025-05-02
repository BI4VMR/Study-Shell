#!/bin/bash

test -z ""
echo "''是否为空字符串？[$?]"

test -z "ABC"
echo "'ABC'是否为空字符串？[$?]"


# [ 1 -eq "132sss" ]
# echo "'ABC'是否为空字符串？[$?]"
# [ "A" = 11 ]
# echo "'ABC'是否为空字符串？[$?]"
a="ABC"
[ "$a" == "AAA" ]
echo "[$?]"

# a=12
# let a+=4
# echo "$a"

# [ 1 == 1 ]

# echo "$?"

# [ 1 == 2 ]

# echo "$?"

# if [ 1 == 1 ]
# then
#    echo "AAAA"
# fi
