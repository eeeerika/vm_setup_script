#!/bin/sh


echo "## start setup node"


if [ -z ~/.nvm ]; then
    git clone git://github.com/creationix/nvm.git ~/.nvm
    source ~/.nvm/nvm.sh
fi

source ~/.nvm/nvm.sh

# TODO 以下コマンドで最新バージョンを確認して追加すること
# nvm ls-remote
nvm install v10.6.0
nvm use v10.6.0

echo `node -v`
echo `which node`

# TODO 以下の内容をbash_profileに追加してsourceで読み込む
# source ~/.nvm/nvm.sh
# nvm use {インストールしたバージョン}
# npm_dir=${NVM_PATH}_modules
# export NODE_PATH=$npm_dir

# TODO 現状のバージョン確認
# nvm -ls 
