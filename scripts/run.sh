#!/bin/bash
logfile=/root/home/wait_log.txt

echo "$(date -u)" "wating for mysql..."| tee -a $logfile
bash wait-for-it.sh mysql:3306 -- echo "mysql is up!" | tee -a $logfile && sleep 7 && bash sql.sh


 