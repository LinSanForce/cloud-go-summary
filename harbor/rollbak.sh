#!/bin/bash

UPGRADE_PATH=/home/harbor-volume
BAK_PATH=/home/harbor-volume-bak/harbor-volume

# 进入老版本目录
cd /root/yzf/harbor

# 检查启动情况
if [ -n "$(docker-compose ps -q)"  ]
then
	note "stopping existing Harbor instance ..."
	docker-compose down -v
fi
echo ""

cp -f docker-compose.yml docker-compose.yml.bak

sed -i "s#$UPGRADE_PATH#$BAK_PATH#" docker-compose.yml

docker-compose up -d