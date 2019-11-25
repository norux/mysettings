#!/bin/bash

function backup()
{
    # $1: 원본 파일 위치
    # $2: 파일이름

    DATE=`date +%Y%m%d_%H%M%S`

    if [ -f $1 ]; then
        mkdir -p backup
        cp $1 backup/$2.back.$DATE
    fi
}

backup ~/.vimrc vimrc
cp common/.vimrc ~/.vimrc

backup ~/.myrc myrc
cp common/.myrc ~/.myrc

if [ "root" == `whoami` ]; then
    cp common/svndiff-vim.sh /usr/local/bin
fi

MY_OS=`uname`

if [ "$MY_OS" == "Linux" ]; then
    backup ~/.bashrc bashrc
    cp linux/.bashrc ~/.bashrc
elif [ "$MY_OS" == "Darwin" ]; then
    backup ~/.bashrc bashrc
    cp mac/.bashrc ~/.bashrc
    backup ~/.zshrc zshrc
    cp mac/.zshrc ~/.zshrc
fi

if [ $? -eq 0 ]; then
    echo "Finished."
else
    echo "Error."
fi
