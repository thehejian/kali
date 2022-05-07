vim /etc/apt/sources.list
#zhushi guanfang zidai
deb http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
deb-src http://mirrors.ustc.edu.cn/kalikali-rollingmainnon-freecontrib
#deb daibiao ruanjian de weizhi
#deb-src daibiao ruanjian yuandaima de weizhi
#zhongkeda yuan
#kali-rolling weiding gengxin banben
#main non-free contrib 3zhong leixing de bao

apt -y update && apt -y upgrade
#dis-upgrade	shengji shi yichu jiu banben

apt baohan apt-get he apt-cache

apt install
apt remove
apt update
apt upgrade
apt full-upgrade #xiezai hou gengxin
apt edit-sources #bianji /etc/apt/spurces.list

#guanbi zidong suoping
shezhi	dianyuan	anquanxing	zidong suoding huihua - congbu	xitong jinru shuimian shi suoding pingmu

#ctrl + shift + jiahao		fangda ziti

#切换中文
https://knightyun.github.io/2020/04/15/linux-chinese
