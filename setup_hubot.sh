#!/bin/sh


echo "## start setup hubot"

# gcc-c++,make がないとエラーが出るのでインストール
yum -y install gcc-c++ make

# npmでyoとgenerator-hubot をインストール

echo ""
echo "# install yo and generator-hubot by npm"
echo ""

npm install -g yo generator-hubot

echo ""
echo "# crete user for hubot"
echo ""

useradd botuser
su - botuser
cd ~
mkdir hubot
cd hubot

echo ""
echo "# finish setup deploy hubot"
echo "# plz su - botuser; yo hubot"
echo ""


