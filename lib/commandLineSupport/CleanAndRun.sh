锘�#!/bin/sh

lib=$PWD/lib
os=`uname`
ver=`uname -r`
# Check for Mac OS
if [[ $os == Darwin* ]];  then
	echo "Mac OS type is: $os $ver"
else 
	echo "Linux OS type is: $os $ver"
fi

./Reset.sh
rc=$?

java -Xmx1024m -cp lianjia.selenium.auto.jar:common.selenium.jar:libs.jar com.lianjia.test.lianjiaweb.suite.SuiteLauncher $*

cat logs/current/results.txt
echo ""
echo ""
