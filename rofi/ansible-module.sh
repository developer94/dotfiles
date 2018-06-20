#!/bin/bash

if [ -z $@ ]
then
    echo Implement loading modules from ansible
else
    MODULE=$@
    xdg-open "https://docs.ansible.com/ansible/latest/$@_module.html" > /dev/null
fi
