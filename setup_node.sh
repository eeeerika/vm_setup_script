"## start setup node"

cd /usr/local

if [ ! -d nvm ]; then
    git clone git://github.com/creationix/nvm.git nvm
    sh /usr/local/nvm/nvm.sh
fi

touch /etc/profile.d/nvm.sh

echo "source /usr/local/nvm/nvm.sh" > '/etc/profile.d/nvm.sh'

echo "## check create profile script"
echo ""
echo `cat /etc/profile.d/nvm.sh`
echo ""

source /etc/profile.d/nvm.sh

exit
# TODO 以下コマンドで最新バージョンを確認して追加すること
# nvm ls-remote
nvm install v10.6.0
nvm use v10.6.0

echo `node -v`
echo `which node`

# TODO
## 一度ログアウトした後に以下を確認する
## which node
