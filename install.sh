## Logitech keyboard & Mouse control
#echo "deb http://pwr.github.io/Solaar/packages/ ./" | sudo tee -a /etc/apt/sources.list
#echo "deb-src http://pwr.github.io/Solaar/packages/ ./" | sudo tee -a /etc/apt/sources.list
#sudo apt-get update
#sudo apt-get install python-pyudev
#sudo apt-get install solaar

## Chrome
#sudo apt-get install curl
#sudo apt-get install libcurl3
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb
#sudo apt-get -f install
#rm google-chrome-stable_current_amd64.deb

## Setup dev environment
#wget https://raw.githubusercontent.com/savorywatt/seliftod/master/vimrc
#mv vimrc .vimrc
## GIT
#sudo apt-get install git
#wget https://raw.githubusercontent.com/savorywatt/seliftod/master/gitignore
#mv gitignore .gitignore

# VIM
#git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#sudo apt-get install vim
#wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
#mv molokai.vim ~/.vim/colors
#vim +PluginInstall +qall

#TMUX
#wget https://raw.githubusercontent.com/savorywatt/seliftod/master/tmux
#mv tmux.conf .tmux.conf
#sudo apt-get install tmux

## Python related
#sudo apt-get install python-setuptools
#sudo easy_install pip
#sudo pip install virtualenv
#sudo pip install virtualenvwrapper
#
## Go related
#wget https://storage.googleapis.com/golang/go1.4.1.linux-amd64.tar.gz
#sudo tar -C /usr/local -xzf go1.4.1.linux-amd64.tar.gz
#rm go1.4.1.linux-amd64.tar.gz
#
## Clojure related
#sudo apt-get install openjdk-7-jre
#wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
#chmod a+x lein
#sudo mv lein /usr/local/bin
#lein
#
### Dart related
### Dart Editor - bashrc has path additions for dart-sdk
#wget https://storage.googleapis.com/dart-archive/channels/stable/release/latest/editor/darteditor-linux-x64.zip
#mkdir -p ~/workspaces/dart/editor
#unzip darteditor-linux-x64.zip -d ~/workspaces/dart/editor
#rm darteditor-linux-x64.zip

# Rust Related
#curl -sf -L https://static.rust-lang.org/rustup.sh | sudo sh

#
### Google Cloud Related
#wget https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz
#tar -C ~/ -xzf google-cloud-sdk.tar.gz
#rm google-cloud-sdk.tar.gz
#./google-cloud-sdk/install.sh
#source ~/.bashrc
#gcloud auth login

## Random helpful packages
#sudo apt-get install htop
#sudo apt-get install xclip
