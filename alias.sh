# !/bin/sh

alias go-dest="cd /usr/local/Trolltech"

go-dest;

ls;

unalias go-dest;

##
echo -e "Enter password : "

stty -echo
## 让终端不显示输入内容

read passwd

stty echo

echo "Password read $passwd"
