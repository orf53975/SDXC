#!/usr/bin/ksh
 
 
# -----------------------------------------------------------
# Filename:			aix3.sh
# Describe: 		Security check for release AIX linux  
# Usage:			chmod 777 aix3.sh 
#					./aix3.sh.sh &> filename.sh     and shell pathname: #!/usr/bin/sh��so Im not sure����
# v1.0    2018.7
# -----------------------------------------------------------


echo "# ---------------------------------------------------------------------"
echo "# Describe: \t\t This file to check AIX system security configuration" 
echo "# Project name:"
echo "# Server name:"
echo "# ---------------------------------------------------------------------"
echo 


# ************************************ ��ݼ��� ************************************
echo
echo
echo
echo "------------ Identity authentication ----------------------------------------------"
echo
# �Ƿ��пտ��� 
echo "********* [checking Empty password users:]"
echo "[/etc/passwd:]"
more  /etc/passwd
echo
echo
echo "[/etc/security/passwd:]"
more /etc/security/passwd


# ������Ժ�ǿ��
echo
echo
echo "********* [Checking password Strength:]"
echo "[more /etc/security/user:]"
more/etc/security/user

# maxage Ϊ����ʹ����Ч�ڣ�
# minageΪ�����޸����ޣ�
# rlogin �Ƿ����Զ�̷��ʴ��˻���
# Minalpha ���������ĸ�ַ���С����
# Minlen���������С���ȣ�
# Minother:��������ķ���ĸ�ַ���С����

echo
echo
# ��¼ʧ�ܲ���
echo "********* [Login failure policy:]"
echo "[more /etc/security/login.cfg:]"
more /etc/security/login.cfg

 

# ���ssh �� telnet
echo
echo
echo "********* [ssh and telnet server status:]"
ps -ef| grep ssh
ps -ef| grep telnet


# ************************************ ���ʿ��� ************************************
echo "------------ Access control ----------------------------------------------"
echo
echo
# ����Ȩ�ޣ�600�ϸ�
echo "********* [Checking some files access permission:]"
ls -l /etc/passwd
ls -l /etc/security/passwd 
ls -l /etc/security/user



# ************************************ ��ȫ��� ************************************
echo "------------ Secure and Audit ----------------------------------------------"
echo
echo
# �鿴�Ƿ���ϵͳ��־ ��� ����
echo "********* [Syslog and audit status:]"
ps -ef | grep syslog
ps -ef | grep audit
#ps -ef | grep syslog, audit query

echo
echo
# ��¼��Ƶ��¼����� class
echo "********* [To see audit info:]"
echo "[more /etc/security/audit:]"
more /etc/security/audit
echo
echo
# ����ļ��е�������
echo "********* [To see audit config:]"
echo "[more /etc/syslog.conf:]"
more /etc/syslog.conf
echo
echo
# Ĭ����Ƽ�¼�ļ�·��
echo "********* [To see auditlog file info:]"
echo "[more /var/log/audit.d:]"
more /var/log/audit.d

# �鿴�����־�ķ���Ȩ��
echo
echo
echo "********* [ls �Cl /var/adm/wtmp]"
ls �Cl /var/adm/wtmp
echo
echo
echo "********* [ls �Cl /var/adm/sulog]"
ls �Cl /var/adm/sulog
echo
echo
echo "********* [ls �Cl /etc/security/failedlogin]"
ls �Cl /etc/security/failedlogin


# ************************************ ���ַ��� ************************************
echo "------------ Intrusion prevention ----------------------------------------------"
echo
echo
# �鿴������ݣ��Ƿ��¼������Ϊ
echo "********* [Checking /var/log/secure grep ��refused��]"
more /var/log/secure | grep refused
echo
echo
# �鿴ϵͳ��װ�Ĳ�������Ϣ��
echo "********* [Patch information of the system��rpm -qa]"
rpm -qa
echo "********* [Patch information ML��instfix -i|grep ML]"
instfix -i|grep ML
# ����������еķ����Ƿ��������޹صĽ���
echo
echo
echo "********* [Select all service: lsitab -a]"
lsitab -a




# ************************************ ��Դ���� ************************************
echo "------------ Resource control ----------------------------------------------"
echo
echo
# �鿴���÷��ʵ�ַ�����Ʋ���
echo "********* [IP address permit in hosts.allow and hosts.deny ��]"
echo "[more /etc/hosts.allow:]"
more /etc/hosts.allow
echo
echo

echo "[more /etc/hosts.deny :]"
more /etc/hosts.deny 
echo
echo

# �˻���¼�Ƿ�ʱ��������  =600s
echo "********* [Login timeout lock, ('TMOUT >= 600s')]"
more /etc/profile | grep -n "TMOUT"

echo
echo
# ϵͳ��Դʹ���� �鿴cpuʹ���ʡ�Ӳ��ʹ���ʡ��ڴ�ʹ���ʵȡ�
echo "********* [System resource used rate: prtconf | more]"
echo
prtconf | more

echo
echo
# ϵͳ������ʹ��ϵͳ��Դ����������
echo "********* [Describes system resource limit for a user:]"
echo
echo "[more /etc/security/limits :]"
more /etc/security/limits


# ����ʹ�����
echo "[disk info:]"
df -h



# �ڴ�ʹ�����
echo "[Memory info:]"
free -m
echo
echo


