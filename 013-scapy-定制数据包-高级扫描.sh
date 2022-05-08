########################—————》定制TCP的SYN请求
属于半连接

>>> TCP().display()
###[ TCP ]### 
  sport= ftp_data       源端口
  dport= http           目标端口
  seq= 0                32位序列号
  ack= 0                32位确认序列号
  dataofs= None         4位首部长度
  reserved= 0           保留6位
  flags= S              S SYN   标志域；URG、ACK、PSH、RST、SYN、FIN
  window= 8192          窗口大小
  chksum= None          16位校验和
  urgptr= 0             优先指针
  options= []           选项

>>> sr1(IP(dst="192.168.133.1")/TCP(flags="S",dport=80),timeout=1)
#数字务必不能加双引号
#S务必要大写
Begin emission:
Finished sending 1 packets.
.*
Received 2 packets, got 1 answers, remaining 0 packets
<IP  version=4 ihl=5 tos=0x0 len=40 id=62112 flags=DF frag=0 ttl=64 proto=tcp chksum=0xbc5c src=192.168.133.1 dst=192.168.133.128 |<TCP  sport=http dport=ftp_data seq=0 ack=1 dataofs=5 reserved=0 flags=RA window=0 chksum=0x2399 urgptr=0 |<Padding  load='\x00\x00\x00\x00\x00\x00' |>>>





########################—————》定制ARP数据包
ARP().display()

scapy

>>> ARP().display()
###[ ARP ]### 
  hwtype= 0x1                           硬件类型
  ptype= IPv4                           协议类型
  hwlen= None                           硬件地址长度（mac）
  plen= None                            协议地址长度（IP）
  op= who-has                           who-has查询
  hwsrc= 00:16:3e:18:59:04              源MAC地址
  psrc= 172.26.164.142                  源IP地址
  hwdst= 00:00:00:00:00:00              目标MAC
  pdst= 0.0.0.0                         目标IP

sr1函数，发送接收数据包

>>> sr1(ARP(pdst="172.26.164.1"))
Begin emission:
Finished sending 1 packets.
*
Received 1 packets, got 1 answers, remaining 0 packets
<ARP  hwtype=0x1 ptype=IPv4 hwlen=6 plen=4 op=is-at hwsrc=ee:ff:ff:ff:ff:ff psrc=172.26.164.1 hwdst=00:16:3e:18:59:04 pdst=172.26.164.142 |>
#查询目标的mac地址

########################—————》定制IP（ICMP）数据包

IP协议
>>> IP().display()
###[ IP ]### 
  version= 4            IPV4
  ihl= None             首部长度
  tos= 0x0              服务
  len= None             总长度
  id= 1                 标识
  flags=                
  frag= 0               标志
  ttl= 64               生存时间
  proto= hopopt         传输协议，IPV6逐跳选项
  chksum= None          首部校验和
  src= 127.0.0.1        原地址
  dst= 127.0.0.1        目标地址
  \options\             

ICMP协议
>>> ICMP().display()
###[ ICMP ]### 
  type= echo-request    类型，标识ICMP报文类型
  code= 0               代码
  chksum= None          校验和
  id= 0x0               标识
  seq= 0x0              

IP()    生成ping包的目标IP
ICMP()  生产PING包的类型

>>> sr1(IP(dst="172.26.164.142")/ICMP(),timeout=1)
Begin emission:
Finished sending 1 packets.
.
Received 1 packets, got 0 answers, remaining 1 packets

>>> sr1(IP(dst="192.168.133.1")/ICMP(),timeout=1)
Begin emission:
Finished sending 1 packets.
..*
Received 3 packets, got 1 answers, remaining 0 packets
<IP  version=4 ihl=5 tos=0x0 len=28 id=61653 flags= frag=0 ttl=64 proto=icmp chksum=0xfe38 src=192.168.133.1 dst=192.168.133.128 |<ICMP  type=echo-reply code=0 chksum=0xffff id=0x0 seq=0x0 |<Padding  load='\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00' |>>>






















  
