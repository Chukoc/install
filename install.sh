#!/bin/bash -v
OS="$(uname)"
if ["${OS}" == "Darwin"]
    # macOS
    cd /Application/Arduino\ IDE.app/Contents/Resources/app/plugins
    if [ $? -ne 0 ]; then
        echo TAを読んでください
        exit 1
    fi
    curl 
    tar -xzf file.tar.gz && rm file.tar.gz
else 
    # plugins folderにいく
    if   [ -e /c/Users/$(whoami)/AppData/Local/Programs/arduino-ide]; then
        cd /c/Uesrs/$(whoami)/AppData/Local/Programs/arduino-ide/resources/app/plugins 
        if [ $? -ne 0 ]; then
            echo TAを読んでください
            exit 1
        fi
    elif [ -e /c/Users/$(whoami)/AppData/Local/Programs/Arduino\ IDE]; then
        cd /c/Uesrs/$(whoami)/AppData/Local/Programs/Arduino\ IDE/resources/app/plugins 
        if [ $? -ne 0 ]; then
            echo TAを読んでください 
            exit 1
        fi
    else
        echo TAを呼んでください． 
        exit 1
    fi

    curl # release から ひっぱってくる
    tar -xaf file.tar.gz && rm file.tar.gz
fi

