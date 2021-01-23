#!/bin/bash

chmod +x ./bin/martin
if [ -f ~/.bash_profile ]; then
    echo export MARTIN=$PWD >> ~/.bash_profile
    echo export PATH="$PATH:$PWD/bin" >> ~/.bash_profile
    source ~/.bash_profile
else 
    echo export MARTIN=$PWD >> ~/.bashrc
    echo export PATH="$PATH:$PWD/bin" >> ~/.bashrc
    source ~/.bashrc
fi
kill -USR1 $PPID

