#!/bin/bash
remotedir=/home/backup/
basedir=/backup/weekly
host=127.0.0.1
id=dmtsai

# ����Ϊ����׶Σ�����Ҫ�޸�ร�
rsync -av -e ssh $basedir ${id}@${host}:${remotedir}