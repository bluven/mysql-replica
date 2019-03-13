docker run \
    --name=s2 \
    -d \
    --rm \
    --network=host \
    -v $PWD/data/s2:/var/lib/mysql \
    -v $PWD/conf/s2.cnf:/etc/mysql/my.cnf \
    -e MYSQL_ROOT_PASSWORD=root \
    percona:5.7-debug --defaults-file=/etc/mysql/my.cnf
