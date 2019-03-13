docker exec -it s1 mysql -uroot -proot \
  -e "GRANT REPLICATION SLAVE ON *.* TO repl@'%' IDENTIFIED BY 'password';" \
  -e "flush privileges;" 
