for N in 2 3
do docker exec -it s$N mysql -uroot -proot \
  -e "change master to master_host='bluven', master_port=24801, master_user='repl', master_password='password';" \
  -e "START SLAVE;"
done
