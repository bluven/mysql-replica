docker run \
    --name=s1 \
    -d \
    --rm \
    --network=host \
    -v $PWD/data/s1:/var/lib/mysql \
    -v $PWD/conf/s1.cnf:/etc/mysql/my.cnf \
    -e MYSQL_ROOT_PASSWORD=root \
    percona:5.7-debug --defaults-file=/etc/mysql/my.cnf
