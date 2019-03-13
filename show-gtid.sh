for N in 1 2 3
do docker exec -it s$N mysql -uroot -proot \
  -e "SELECT @@global.server_uuid;" \
  -e "SHOW VARIABLES WHERE Variable_name = 'hostname';" \
  -e "SELECT @@global.gtid_executed;"
done
