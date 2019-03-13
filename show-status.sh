for N in 1 2 3
do docker exec -it s$N mysql -uroot -proot \
  -e "SHOW VARIABLES WHERE Variable_name = 'hostname';" \
  -e "SELECT * FROM performance_schema.replication_group_members;" \
  -e "show master status;\G" \
  -e "show slave status;\G"
done
