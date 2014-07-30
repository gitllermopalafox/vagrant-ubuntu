#!/bin/sh

# $1: folder to install (/home/vagrant)
# $2: user (vagrant)

if [ ! -d $1/.oh-my-zsh ];
then
    if [ ! -f /bin/zsh ];
    then
        echo "installing zsh"
        apt-get install -y --force-yes zsh
    fi

    echo "installing OhMyZ.sh for $2 user"
    git clone https://github.com/robbyrussell/oh-my-zsh.git $1/.oh-my-zsh
    cp $1/.oh-my-zsh/templates/zshrc.zsh-template $1/.zshrc

    chsh -s /bin/zsh $2
    chown -R $2:$2 $1
fi