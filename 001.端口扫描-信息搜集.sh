#!/bin/bash

┌──(root💀hejian)-[~/kali]
└─# nmap 1.116.26.230 -p 80 -sV                                                                                                                                   130 ⨯
#sV 查看版本
Starting Nmap 7.91 ( https://nmap.org ) at 2021-11-25 21:26 CST
Nmap scan report for 1.116.26.230
Host is up (0.0053s latency).

PORT   STATE SERVICE VERSION
80/tcp open  http    nginx 1.12.2

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 7.26 seconds


┌──(root💀hejian)-[~/kali]
└─# nmap 1.116.26.230 -p 80    
Starting Nmap 7.91 ( https://nmap.org ) at 2021-11-25 21:28 CST
Nmap scan report for 1.116.26.230
Host is up (0.0048s latency).

PORT   STATE SERVICE
80/tcp open  http

Nmap done: 1 IP address (1 host up) scanned in 0.26 seconds

┌──(root💀hejian)-[~/kali]
└─# nmap 1.116.26.230 -p 22 -sV                                                                                                                               130 ⨯ 1 ⚙
Starting Nmap 7.91 ( https://nmap.org ) at 2021-11-25 21:31 CST
Nmap scan report for 1.116.26.230
Host is up (0.0065s latency).

PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 7.4 (protocol 2.0)

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 1.10 seconds

┌──(root💀hejian)-[~/kali]
└─# nmap 1.116.26.230 -p 22 -sV -O                                                                                                                            255 ⨯ 1 ⚙
#-O 查看操作系统
Starting Nmap 7.91 ( https://nmap.org ) at 2021-11-25 21:32 CST
Nmap scan report for 1.116.26.230
Host is up (0.023s latency).

PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 7.4 (protocol 2.0)
Warning: OSScan results may be unreliable because we could not find at least 1 open and 1 closed port
Device type: WAP|general purpose
Running: Actiontec embedded, Linux 2.4.X|3.X
OS CPE: cpe:/h:actiontec:mi424wr-gen3i cpe:/o:linux:linux_kernel cpe:/o:linux:linux_kernel:2.4.37 cpe:/o:linux:linux_kernel:3.2
OS details: Actiontec MI424WR-GEN3I WAP, DD-WRT v24-sp2 (Linux 2.4.37), Linux 3.2

OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 6.73 seconds

┌──(root💀hejian)-[~/kali]
└─# nmap -A 1.116.26.230                                                                                                                                      148 ⨯ 3 ⚙
#-A 查看全部信息
Starting Nmap 7.91 ( https://nmap.org ) at 2021-11-25 21:37 CST
Nmap scan report for 1.116.26.230
Host is up (0.0084s latency).
Not shown: 995 filtered ports
PORT     STATE SERVICE  VERSION
22/tcp   open  ssh      OpenSSH 7.4 (protocol 2.0)
| ssh-hostkey: 
|   2048 40:96:a3:5f:fb:c7:fd:04:b8:8a:80:f6:ad:87:23:4a (RSA)
|   256 6c:aa:d9:72:f7:0b:b8:64:a1:90:82:09:26:1a:8a:6c (ECDSA)
|_  256 e7:13:2b:ab:0c:a6:bc:d3:ae:f8:6b:b1:90:3a:c4:a8 (ED25519)
80/tcp   open  http     nginx 1.12.2
| http-ls: Volume /
|   maxfiles limit reached (10)
| SIZE  TIME               FILENAME
| -     19-Oct-2021 04:38  android/
| 0     19-Oct-2021 04:38  android/android.html
| -     26-Oct-2021 10:35  bak/
| -     22-Nov-2021 14:23  nas/
| -     30-Oct-2021 11:58  nas/001-%E8%84%9A%E6%9C%AC/
| -     06-Sep-2021 14:11  nas/002-%E8%BD%AF%E4%BB%B6/
| -     06-Sep-2021 14:12  nas/003-%E7%85%A7%E7%89%87/
| -     06-Sep-2021 14:12  nas/004-%E5%A3%81%E7%BA%B8/
| -     30-Oct-2021 11:58  nas/005-%E4%B9%A6%E7%B1%8D/
| -     08-Sep-2021 04:32  nas/%E6%9D%A5%E8%87%AA%EF%BC%9A%E5%BE%AE%E4%BF%A1%E5%A4%87%E4%BB%BD/
|_
|_http-server-header: nginx/1.12.2
|_http-title: Index of /
443/tcp  open  ssl/http nginx 1.12.2
| http-auth: 
| HTTP/1.1 401 Unauthorized\x0D
|_  Basic realm=input password
|_http-server-header: nginx/1.12.2
|_http-title: 401 Authorization Required
| ssl-cert: Subject: organizationName=Default Company Ltd/countryName=XX
| Not valid before: 2021-10-12T12:22:09
|_Not valid after:  2021-11-11T12:22:09
|_ssl-date: TLS randomness does not represent time
| tls-alpn: 
|_  http/1.1
| tls-nextprotoneg: 
|_  http/1.1
3306/tcp open  mysql    MariaDB (unauthorized)
9418/tcp open  git?
Warning: OSScan results may be unreliable because we could not find at least 1 open and 1 closed port
Device type: WAP|general purpose
Running: Actiontec embedded, Linux 2.4.X|3.X
OS CPE: cpe:/h:actiontec:mi424wr-gen3i cpe:/o:linux:linux_kernel cpe:/o:linux:linux_kernel:2.4.37 cpe:/o:linux:linux_kernel:3.2
OS details: Actiontec MI424WR-GEN3I WAP, DD-WRT v24-sp2 (Linux 2.4.37), Linux 3.2
Network Distance: 2 hops

TRACEROUTE (using port 80/tcp)
HOP RTT     ADDRESS
1   0.09 ms 192.168.29.2 (192.168.29.2)
2   0.10 ms 1.116.26.230

OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 27.34 seconds

┌──(root💀hejian)-[~/kali]
└─# nmap -A huawei.com                                                                                                                                              3 ⚙
Starting Nmap 7.91 ( https://nmap.org ) at 2021-11-25 21:42 CST
Nmap scan report for huawei.com (121.37.49.12)
Host is up (0.0094s latency).
Other addresses for huawei.com (not scanned): 2407:c080:17ef:ffff::7274:d206
rDNS record for 121.37.49.12: ecs-121-37-49-12.compute.hwclouds-dns.com
Not shown: 998 filtered ports
PORT    STATE SERVICE  VERSION
80/tcp  open  http     nginx 1.18.0
|_http-server-header: nginx/1.18.0
|_http-title: Did not follow redirect to https://www.huawei.com/
443/tcp open  ssl/http nginx 1.18.0
|_http-server-header: nginx/1.18.0
|_http-title: Did not follow redirect to https://www.huawei.com/
| ssl-cert: Subject: commonName=*.huawei.com/organizationName=Huawei Technologies Co., Ltd/stateOrProvinceName=Guangdong/countryName=CN
| Subject Alternative Name: DNS:huawei.com, DNS:*.huawei.com
| Not valid before: 2021-05-26T08:16:35
|_Not valid after:  2022-05-26T08:16:35
|_ssl-date: TLS randomness does not represent time
| tls-alpn: 
|_  http/1.1
| tls-nextprotoneg: 
|_  http/1.1
Warning: OSScan results may be unreliable because we could not find at least 1 open and 1 closed port
Device type: WAP|general purpose
Running: Actiontec embedded, Linux 2.4.X|3.X
OS CPE: cpe:/h:actiontec:mi424wr-gen3i cpe:/o:linux:linux_kernel cpe:/o:linux:linux_kernel:2.4.37 cpe:/o:linux:linux_kernel:3.2
OS details: Actiontec MI424WR-GEN3I WAP, DD-WRT v24-sp2 (Linux 2.4.37), Linux 3.2
Network Distance: 2 hops

TRACEROUTE (using port 80/tcp)
HOP RTT     ADDRESS
1   0.07 ms 192.168.29.2 (192.168.29.2)
2   0.10 ms ecs-121-37-49-12.compute.hwclouds-dns.com (121.37.49.12)

OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 71.69 seconds

┌──(root💀hejian)-[~/kali]
└─# nmap -iR 2 -p 80                                                                                                                                                3 ⚙
#-iR 任意找两ip
Starting Nmap 7.91 ( https://nmap.org ) at 2021-11-25 21:50 CST
Nmap scan report for 152.141.235.5
Host is up (0.00062s latency).

PORT   STATE    SERVICE
80/tcp filtered http

Nmap scan report for 153.112.26.33
Host is up (0.00063s latency).

PORT   STATE    SERVICE
80/tcp filtered http

Nmap done: 2 IP addresses (2 hosts up) scanned in 13.41 seconds

┌──(root💀hejian)-[~/kali]
└─# nmap baidu.com --top-ports 10                                                                                                                                   3 ⚙
#--top-ports 默认扫10个常用端口
Starting Nmap 7.91 ( https://nmap.org ) at 2021-11-25 22:19 CST
Nmap scan report for baidu.com (220.181.38.251)
Host is up (0.017s latency).
Other addresses for baidu.com (not scanned): 220.181.38.148

PORT     STATE    SERVICE
21/tcp   filtered ftp
22/tcp   filtered ssh
23/tcp   filtered telnet
25/tcp   filtered smtp
80/tcp   open     http
110/tcp  filtered pop3
139/tcp  filtered netbios-ssn
443/tcp  open     https
445/tcp  filtered microsoft-ds
3389/tcp filtered ms-wbt-server

Nmap done: 1 IP address (1 host up) scanned in 7.60 seconds

                                                                                                                                                                        
┌──(root💀hejian)-[~/kali]
└─# nmap 1.116.26.230 --top-ports 20                                                                                                                                3 ⚙
Starting Nmap 7.91 ( https://nmap.org ) at 2021-11-25 22:21 CST
Nmap scan report for 1.116.26.230
Host is up (0.030s latency).

PORT     STATE    SERVICE
21/tcp   filtered ftp
22/tcp   open     ssh
23/tcp   filtered telnet
25/tcp   filtered smtp
53/tcp   filtered domain
80/tcp   open     http
110/tcp  filtered pop3
111/tcp  filtered rpcbind
135/tcp  filtered msrpc
139/tcp  filtered netbios-ssn
143/tcp  filtered imap
443/tcp  open     https
445/tcp  filtered microsoft-ds
993/tcp  filtered imaps
995/tcp  filtered pop3s
1723/tcp filtered pptp
3306/tcp open     mysql
3389/tcp filtered ms-wbt-server
5900/tcp filtered vnc
8080/tcp filtered http-proxy

Nmap done: 1 IP address (1 host up) scanned in 1.85 seconds

┌──(root💀hejian)-[~/kali]
└─# nmap 1.116.26.230 --top-ports 200 -sV -O | grep open                                                                                                            3 ⚙
22/tcp   open     ssh          OpenSSH 7.4 (protocol 2.0)
80/tcp   open     http         nginx 1.12.2
443/tcp  open     ssl/http     nginx 1.12.2
3306/tcp open     mysql        MariaDB (unauthorized)

┌──(root💀hejian)-[~/kali]
└─# nmap 1.116.26.230 -p 80 -A                                                                                                                                      3 ⚙
Starting Nmap 7.91 ( https://nmap.org ) at 2021-11-25 22:28 CST
Nmap scan report for 1.116.26.230
Host is up (0.0072s latency).

PORT   STATE SERVICE VERSION
80/tcp open  http    nginx 1.12.2
| http-ls: Volume /
|   maxfiles limit reached (10)
| SIZE  TIME               FILENAME
| -     19-Oct-2021 04:38  android/
| 0     19-Oct-2021 04:38  android/android.html
| -     26-Oct-2021 10:35  bak/
| -     22-Nov-2021 14:23  nas/
| -     30-Oct-2021 11:58  nas/001-%E8%84%9A%E6%9C%AC/
| -     06-Sep-2021 14:11  nas/002-%E8%BD%AF%E4%BB%B6/
| -     06-Sep-2021 14:12  nas/003-%E7%85%A7%E7%89%87/
| -     06-Sep-2021 14:12  nas/004-%E5%A3%81%E7%BA%B8/
| -     30-Oct-2021 11:58  nas/005-%E4%B9%A6%E7%B1%8D/
| -     08-Sep-2021 04:32  nas/%E6%9D%A5%E8%87%AA%EF%BC%9A%E5%BE%AE%E4%BF%A1%E5%A4%87%E4%BB%BD/
|_
|_http-server-header: nginx/1.12.2
|_http-title: Index of /
Warning: OSScan results may be unreliable because we could not find at least 1 open and 1 closed port
Device type: general purpose
Running: Linux 2.4.X
OS CPE: cpe:/o:linux:linux_kernel:2.4.37
OS details: DD-WRT v24-sp2 (Linux 2.4.37)
Network Distance: 2 hops

TRACEROUTE (using port 80/tcp)
HOP RTT     ADDRESS
1   0.08 ms 192.168.29.2 (192.168.29.2)
2   0.12 ms 1.116.26.230

OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 9.95 seconds



































