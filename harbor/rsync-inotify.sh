#!/bin/bash
Path=/data
Dest=/data02

if [ `id -u` -eq 0 ];then
    echo "current user is root"
else
    echo "please use root access"
	exit 1
fi


if [ ! -d $Dest ];then
   mkdir /data-bak
fi

# 先做一次全量拷贝
rsync -azv $Path --delete $Dest

/usr/bin/inotifywait -mrq --format '%w%f' -e create,close_write,delete,move $Path  | while read line
do
#    if [ -f $line ];then
#        rsync -azv -R --delete $line $Dest > /dev/null 2>&1
#    else
#        rsync -azv $Path --delete $Dest
#    fi
    rsync -azv $Path --delete $Dest

done