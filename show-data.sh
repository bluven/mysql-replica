for N in 1 2 3
do docker exec -it s$N mysql -uroot -proot \
  -e "SHOW VARIABLES WHERE Variable_name = 'hostname';" \
  -e "select * from test.t1;" \
  -e "select user, host from mysql.user;"
done
