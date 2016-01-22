echo off
cls
call npm config set registry https://registry.npm.taobao.org
call npm install
call npm install -g gulp
call npm install -g bower

call bower install
cmd
