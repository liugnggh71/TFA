HOS sed -i '1s/^/COUNT ,DATE,HOUR\n/' listener_logons.csv
HOS zip -m listener_log.zip listener_logons.csv listener_tail.log listener_log_driver.sql
