#!/bin/bash

chmod +x ./bin/martin
echo export MARTIN=$PWD >> ~/.bash_profile
echo export PATH="$PATH:$PWD/bin" >> ~/.bash_profile
exec ~/.bash_profile
#kill -USR1 $PPID

