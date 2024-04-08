#!/bin/bash -v
OS="$(uname)"
if ["${OS}" == "Darwin"]
    # macOS
    cd /Applications/Arduino\ IDE.app/Contents/Resources/app/plugins | echo TAを呼んでください
    curl # release から ひっぱってくる
    tar -xzf file.tar.gz && rm file.tar.gz
else 
    # plugins folderにいく
    if   [ -e /c/Users/$(whoami)/AppData/Local/Programs/arduino-ide]; then
        cd /c/Uesrs/$(whoami)/AppData/Local/Programs/arduino-ide/resources/app/plugins | echo TAを呼んでください
    elif [ -e /c/Users/$(whoami)/AppData/Local/Programs/Arduino\ IDE]; then
        cd /c/Uesrs/$(whoami)/AppData/Local/Programs/Arduino\ IDE/resources/app/plugins | echo TAを呼んでください
    else
        echo TAを呼んでください．
    fi

    curl # release から ひっぱってくる
    tar -xaf file.tar.gz && rm file.tar.gz
fi

