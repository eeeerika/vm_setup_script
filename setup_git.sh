#!/bin/sh

echo "## start setup git by latest version"

# yumでインストールされているgitのバージョンが古いので削除する
# ないならないで大丈夫
sudo yum -y remove git

# wgetでインストールするのに必要なモジュールをインストール
sudo yum -y install gcc curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker

# TODO 以下のURLから最新(インストールしたい)モジュールのURLを取得する
# https://github.com/git/git/releases 
wget https://github.com/git/git/archive/v2.18.0.tar.gz

# 取得したtarを解凍
tar -zxf v2.18.0.tar.gz

# 解凍したディレクトリに移動してインストールを実行
cd git-2.18.0
make configure
sudo make prefix=/usr/local all
sudo make prefix=/usr/local install
source /etc/profile

# インストール結果の確認
echo `git --version`

# githubに登録するsshキーを作成する

echo "## create public key for github "

cd ~/.ssh
ssh-keygen -t rsa

echo "## create public key :"
echo `cat /root/.ssh/id_rsa.pub`

echo ""
echo "## finish setup git"

