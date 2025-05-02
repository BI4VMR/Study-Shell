#!/bin/bash

a=2
b=1

# "if"的基本结构（完整写法）
if [ $a -gt $b ]
then
    echo "$a is bigger than $b."
fi


# "if"的基本结构（简化写法）
if [ $a -gt $b ]; then
    echo "$a is bigger than $b."
fi

# "if"的基本结构（单行写法）
if [ $a -gt $b ]; then echo "$a is bigger than $b."; fi
