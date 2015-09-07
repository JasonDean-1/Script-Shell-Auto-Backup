#!/bin/bash
# =========================================================
# �����룬�����ñ������ݷ��õ��Ǹ�������Ŀ¼ȥ
basedir=/backup/daily/  <==��ֻҪ������Ϳ����ˣ�

# =========================================================
PATH=/bin:/usr/bin:/sbin:/usr/sbin; export PATH
export LANG=C
basefile1=$basedir/mysql.$(date +%Y-%m-%d).tar.bz2
basefile2=$basedir/cgi-bin.$(date +%Y-%m-%d).tar.bz2
[ ! -d "$basedir" ] && mkdir $basedir

# 1. MysQL (���ݿ�Ŀ¼�� /var/lib/mysql)
cd /var/lib
  tar -jpc -f $basefile1 mysql

# 2. WWW �� CGI ���� (�����ʹ�� CGI ����Ļ�)
cd /var/www
  tar -jpc -f $basefile2 cgi-bin