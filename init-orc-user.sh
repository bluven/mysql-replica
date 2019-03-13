docker exec -it s1 mysql -uroot -proot \
  -e "CREATE USER 'orchestrator'@'%' IDENTIFIED BY 'orchestrator';" \
  -e "GRANT SUPER, PROCESS, REPLICATION SLAVE, RELOAD ON *.* TO 'orchestrator'@'%';" \
  -e "GRANT SELECT ON mysql.slave_master_info TO 'orchestrator'@'%';" 
