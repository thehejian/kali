ARP
Address resolution protocol
地址解析协议
IP转换为mac
查看局域网的IP冲突
每次只能测试一个目标，多个可以用脚本或netdiscover

###########################################################——————》arping
ARP攻击：冒充网关
┌──(root💀kali)-[~]
└─# arping 192.168.133.1   
ARPING 192.168.133.1
60 bytes from 00:50:56:c0:00:08 (192.168.133.1): index=0 time=12.951 usec   
ARPING 192.168.133.1
60 bytes from 00:50:56:c0:00:08 (192.168.133.1): index=0 time=12.951 usec

┌──(root💀kali)-[~]
└─# arping 192.168.133.1 -c 1 | grep -i "bytes from" | awk -F '(' '{print $2}' | awk -F ')' '{print $1}'
192.168.133.1

脚本扫描局域网是否有ARP攻击
原理：利用本机的eth0网卡，查到本机IP；ARP查询同网段下的所有在线IP
看看是否有1个以上网关；192.168.133.1
vim arping.sh

#!/bin/bash
if [ "$#" -ne 1 ];then
    echo "./arping.sh eth0"
    echo "输入网卡名称，参考上面例子"
fi
#判断是否输入参数
#if 后面带空格


interface=$1
prefix=$(ifconfig $interface | grep -i "inet " | awk '{print $2}' | awk -F '.' '{print $1"."$2"."$3"."}')
#获取本机IP,并去掉最后一位

for addr in $(seq 1 254);do
    arping $prefix$addr -c 1 | grep -i "bytes from" | awk -F '(' '{print $2}' | awk -F ')' '{print $1}'
done


#####################################——————》netdiscover
被动方式探测区域网存活的机器
#更隐蔽
netdiscover -p 
#不发送数据包，探测局域网的arp数据包

┌──(root💀kali)-[~]
└─# netdiscover -i eth0 -r 192.168.133.0/24

 Currently scanning: Finished!   |   Screen View: Unique Hosts                                                                                       
                                                                                                                                                     
 84 Captured ARP Req/Rep packets, from 3 hosts.   Total size: 5040                                                                                   
 _____________________________________________________________________________
   IP            At MAC Address     Count     Len  MAC Vendor / Hostname      
 -----------------------------------------------------------------------------
 192.168.133.1   00:50:56:c0:00:08     79    4740  VMware, Inc.                                                                                      
 192.168.133.2   00:50:56:fa:ef:90      2     120  VMware, Inc.                                                                                      
 192.168.133.254 00:50:56:e0:a0:fc      3     180  VMware, Inc.
 
 ##########################################################——————》HPING3
 #压力测试
 #DOS攻击
 #每次只能扫描一个目标
 
hping3 -c 1000 -d 120 -S -w 64 -p 80 --flood --rand-source xuegod.cn
#-d 120 每个数据包大小，单位是字节
#-S 只发送SYN数据包
#-w 64 TCP窗口大小
#--flood 洪水攻击，尽可能快发数据包
#--rand-source 随机IP，局域网外不生效

##########################################################————————》fping
可以扫描地址段
fping -g 192.168.133.0/24


#########################################################——————————》nmap
nmap -sn 192.168.133.0/24
nmap -sn 192.168.133.1-254
#只进行网段扫描，不进行端口扫描
┌──(root💀kali)-[~]
└─# nmap -sn 192.168.133.0/24
Starting Nmap 7.91 ( https://nmap.org ) at 2022-05-08 12:42 CST
Nmap scan report for 192.168.133.1
Host is up (0.00015s latency).
MAC Address: 00:50:56:C0:00:08 (VMware)
Nmap scan report for 192.168.133.254
Host is up (0.00013s latency).
MAC Address: 00:50:56:E0:A0:FC (VMware)
Nmap scan report for 192.168.133.128
Host is up.
Nmap done: 256 IP addresses (3 hosts up) scanned in 28.01 seconds

###nmap半连接访问
不会留下记录
无ACK（只有两次握手）

全连接
客户端           服务端   
SYN——》
                《——SYN+ACK
ACK——》
RST——》

半连接
客户端          服务端   
SYN——》
               《——SYN+ACK
RST——》

查看端口是否开放
namap -sS 47.112.144.203 -p 21-22,80,443,25,110
[root@hejian_alicloud ~]# nmap -sS 47.112.144.203 -p 21-22,80,443,25,110

Starting Nmap 6.40 ( http://nmap.org ) at 2022-05-08 12:59 CST
Nmap scan report for 47.112.144.203
Host is up (0.0037s latency).
PORT    STATE    SERVICE
21/tcp  filtered ftp
22/tcp  open     ssh
25/tcp  filtered smtp
80/tcp  closed   http
110/tcp filtered pop3
443/tcp closed   https
#filtered   过滤

##################——》nc
nc  netcat

nc

-nv 扫描IP不做域名解析
-w 超时时间
-z 端口扫描

nc -nv -w 1 -z 47.112.144.0-254































































