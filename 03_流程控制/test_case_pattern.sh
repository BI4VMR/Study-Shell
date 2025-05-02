#!/bin/bash

x=10

case $x in
    [123])
        echo "Q1"
        ;;
    [456])
        echo "Q2"
        ;;
    [789])
        echo "Q3"
        ;;
    [1][012])
        echo "Q4"
        ;;
    *)
        echo "输入值不合法！"
esac
