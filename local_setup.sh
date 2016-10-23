#!/bin/bash

mkdir -p ~/.virtualenvs

if [[ $(grep WORKON_HOME ~/.bashrc) -ne 0 ]]; then
    echo "export WORKON_HOME=~/.virtualenvs" >> ~/.bashrc
fi

wrapper_path=$(which virtualenvwrapper.sh)
if [[ wrapper_path != "" ]]; then
    echo $wrapper_path
    if [[ $(grep "source $wrapper_path" ~/.bashrc) == "" ]]; then
        echo "source $wrapper_path" >> ~/.bashrc
    fi 
fi
