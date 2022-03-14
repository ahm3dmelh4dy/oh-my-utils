#!/usr/bin/zsh
# Author: Ahmed Elhady
# this script will install pyenv from the source, then add it the zshrc configuration file.
# You must have zsh installed!

add_to_zshrc() {
    echo "export PATH=$PATH:/home/ahm3d/.pyenv/bin" >> ~/.zshrc
    eval "$(pyenv virtualenv-init -)"
}


index_main() {
    set -e
    curl -s -S -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | zsh
    add_to_zshrc
}



index_main


