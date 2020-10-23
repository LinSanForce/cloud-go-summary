# 用于实时备份 Harbor仓库存储的数据
  
  目前针对在本机备份的方式，后期建议挂载外界存储。
  
  
## rsync+Inotify 本地增量同步。
```text
1, 安装 rsync 软件包，
# yum install rsync -y

2, 安装 Inotify。
   首先检查系统内核是否支持inotify针对文件操作的事件驱动。
   # ll /proc/sys/fs/inotify/
     总用量 0
     -rw-r--r--. 1 root root 0 2月   3 12:24 max_queued_events
     -rw-r--r--. 1 root root 0 2月   3 12:24 max_user_instances
     -rw-r--r--. 1 root root 0 2月   3 12:24 max_user_watches

3，安装 inotify-tools
# yum install -y inotify-tools


4，# source ./rsync-inotify.sh

```