#!/bin/bash

if [ -z $@ ]
then
    i3-msg -t get_marks | tr -d '[]"' | tr ',' '\n' | sort -n

else
    MARK=$@

    i3-msg "[con_mark=$MARK] focus" > /dev/null
fi
