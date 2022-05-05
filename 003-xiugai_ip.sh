###peizhi IP
vim /etc/network/interfaces

#zui houmian charu
auto eth0
iface eth0 inet static
#static huozhe dhcp
address 192.168.1.53
netmask 255.255.255.0
gateway 192.168.1.1

#baocun guanbi

systemctl stop NetworkManager
#tuxing jiemian de wangluo guanli gongju
systemctl restart networking
ifconfig eth0
systemctl restart networking
ifconfig eth0
#xuyao chongqi liangci caineng shengxiao


###peizhi DNS
vim /etc/resolv.conf

nameserver 114.114.114.114
#yunying shang DNS

###IP linshi shengxiao
ifconfig eth0 192.168.2.54

route -n

#vim	ctrl + v jinru lie bianji moshi
#zai hangshou, xiangshang huo xiangxia yidong guangbiao
#daxie I / d jinxing charu / shanchu
#charu zifu #
#esc


