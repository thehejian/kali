
######anzhuang shadowsocks
yum provides pip
yum -y install python2-pip-8.1.2-14.el7.noarch
pip install shadowsocks
#pip install --upgrade pip
#ssserver -h

ssserver -p 4433 -k hjian123 -m aes-256-cfb -d start
#-d start  houtai zhixing
#-p duankou
#-k mima
#-m jiami fangshi

ssserver -d stop
#guanbi fuwuduan

##############################################################kaiji qidong
##zhi anzhao zhege jike, shangmian de keyi bukan
vim /etc/shadowsocks.json
{
	"server":"0.0.0.0",
	"server_port":4433,
	"local_port":1080,
	"password":"hjian123"
	"timeout":600,
	"method":"aes-256-cfb"
}

ssserver -c /etc/shadowsocks.json -d start
#-c zhixing peizhi wenjian

vim /etc/rc.local
ssserver-c/etc/shadowsocks.json-dstart
exit 0
#qidong wenjian xie neirong

#shezhi wenjian quanxian
sudo chown root:root /etc/rc.local
sudo chmod 755 /etc/rc.local
sudo systemctl enable rc-local.server
#kaiji qidong rc-local fuwu, rc-local qidong ssserver, anzhao wenjian(shadowsocks.json)qidong



