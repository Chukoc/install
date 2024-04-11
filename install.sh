#!/bin/bash -v
OS="$(uname)"
if [ "${OS}" == "Darwin" ]; then
    # macOS
    cd /Applications/Arduino\ IDE.app/Contents/Resources/app/plugins
    if [ $? -ne 0 ]; then
        echo TAを呼んでください
        exit 1
    fi
    # curl 
    curl -sLJO https://sdl.ist.osaka-u.ac.jp/~shinsuke/ino-smell-detector-mac.tar.gz
    tar -xzf ino-smell-detector-mac.tar.gz && rm ino-smell-detector-mac.tar.gz
    echo Installed Successfully
else 
    # plugins folderにいく
    if   [ -e /c/Users/$(whoami)/AppData/Local/Programs/arduino-ide ]; then

        # cd /c/Uesrs/$(whoami)/AppData/Local/Programs/arduino-ide/resources/app/plugins 
        cd /c/Users/$(whoami)/AppData/Local/Programs/arduino-ide/resources/app/plugins
	
        if [ $? -ne 0 ]; then
            echo TAを呼んでください
            exit 1
        fi
    elif [ -e /c/Users/$(whoami)/AppData/Local/Programs/Arduino\ IDE ]; then
        # cd C:/Uesrs/$(whoami)/AppData/Local/Programs/Arduino\ IDE/resources/app/plugins 
        cd /c/Users/$(whoami)/AppData/Local/Programs/Arduino\ IDE/resources/app/plugins
        if [ $? -ne 0 ]; then
            echo TAを呼んでください 
            exit 1
        fi
    else
        echo TAを呼んでください
        exit 1
    fi

    curl -sLJO https://sdl.ist.osaka-u.ac.jp/~shinsuke/ino-smell-detector-win.tar.gz
    tar -xaf ino-smell-detector-win.tar.gz && rm ino-smell-detector-win.tar.gz
    echo Installed Successfully
fi

