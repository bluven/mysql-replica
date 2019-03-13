docker run \
    --name=s3 \
    -d \
    --rm \
    --network=host \
    -v $PWD/data/s3:/var/lib/mysql \
    -v $PWD/conf/s3.cnf:/etc/mysql/my.cnf \
    -e MYSQL_ROOT_PASSWORD=root \
    percona:5.7-debug --defaults-file=/etc/mysql/my.cnf
