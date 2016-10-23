#!/bin/bash

if [[ $(id -u) -ne 0 ]]; then
    echo "Please run as root"
    exit 1
fi
if [ $(which python) == "" ]; then
    apt-get install python
fi
if [ $(which pip) == "" ]; then
    apt-get install -U python-pip
fi
pip install virtualenv
pip install virtualenvwrapper
