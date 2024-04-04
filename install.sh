#!/bin/bash -v
if   [ -e /c/Users/$(whoami)/AppData/Local/Programs/arduino-ide]; then
    curl 
elif [ -e /c/Users/$(whoami)/AppData/Local/Programs/Arduino\ IDE]; then
    curl 
else
    echo TAを呼んでください．
fi

