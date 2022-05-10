IPID：IP数据包的ID
不需要肉鸡权限

僵尸扫描原理：
收到SYN+ACK证明端口开放着

47.112.144.203    肉鸡
1.116.26.230      被攻击

Step1：给僵尸主机发送SYN+ACK数据包，将返回的数据存入rz1；
scapy
rz1=sr1(IP(dst="47.112.144.203")/TCP(dport=445,flags="SA"))
rt=sr1(IP(src="47.112.144.203",dst="1.116.26.230")/TCP(dport=22),timeout=1)
rz2=sr1(IP(dst="47.112.144.203")/TCP(dport=445,flags="SA"))



















