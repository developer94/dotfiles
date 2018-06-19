#!/bin/bash

if [ -z $@ ]
then
function get_marks()
{
    i3-msg -t get_marks | tr ',' '\n' | grep "name" | sed 's/"name":"\(.*\)"/\1/g' | sort -n
}

echo empty; gen_workspaces

else
    MARK=$@

    i3-msg '[con_mark=$MARK] focus' > /dev/null
fi
