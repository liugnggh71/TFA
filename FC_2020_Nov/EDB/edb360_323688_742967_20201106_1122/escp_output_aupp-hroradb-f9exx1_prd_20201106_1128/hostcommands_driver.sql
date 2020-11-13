HOS cat /proc/cpuinfo | grep -i name | sort | uniq | cat - /sys/devices/virtual/dmi/id/product_name >> cpuinfo_model_name_aupp-hroradb-f9exx1_prd_20201106_1128.txt
