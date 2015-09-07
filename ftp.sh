#!/bin/bash
# ===========================================
# ������ϵͳ����Ҫ������
host="192.168.1.100"		# Զ������
id="dmtsai"			# Զ�������� FTP �ʺ�
pw='dmtsai.pass'		# ���ʺŵĿ���
basedir="/backup/weekly"	# ���ض˵��������ݵ�Ŀ¼
remotedir="/home/backup"	# ���ݵ�Զ�̵ĺδ���

# ===========================================
backupfile=weekly.tar.bz2
cd $basedir/..
  tar -jpc -f $backupfile $(basename $basedir)

ftp -n "$host" > ${basedir}/../ftp.log 2>&1 <<EOF
user $id $pw
binary
cd $remotedir
put $backupfile
bye
EOF