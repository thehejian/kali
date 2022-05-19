IPID：IP数据包的ID
不需要肉鸡权限

僵尸扫描原理：
收到SYN+ACK证明端口开放着

47.112.144.203    肉鸡
1.116.26.230      被攻击

#############————》Step1：给僵尸主机发送SYN+ACK数据包，将返回的数据存入rz1；
scapy
rz1=sr1(IP(dst="47.112.144.203")/TCP(dport=445,flags="SA"))
rz1接受我们返回的数据包
dport=22向着僵尸主机的22端口发数据包，xp主机的445端口一般处于开启状态
dts我们的僵尸主机IP

#############————》Step2：攻击者修改IP包头的SRC字段为僵尸主机的IP，伪装成僵尸主机给目标主机发SYN
rt=sr1(IP(src="47.112.144.203",dst="1.116.26.230")/TCP(dport=22),timeout=1)

#############————》Step3：攻击者再次向僵尸主机发送SYN、ACk确认包，获取IPID
rz2=sr1(IP(dst="47.112.144.203")/TCP(dport=445,flags="SA"))
flags=“SA”发送SYN、ACk


nmap进行僵尸扫描
扫描192.168.1.0

#网段中扫描僵尸主机的符合条件的
[root@hejian_alicloud ~]# nmap 172.26.164.0/24 -p1-1024 --script=ipidseq.nse > nmap_ipid.txt
结果中有_ipidseq:Incremental!的IP主机可能作为僵尸主机

nmap 192.168.1.163 -sI 192.168.1.54 -p1-100
192.168.1.16目标主机
192.168.1.54僵尸主机，前面扫描的




















