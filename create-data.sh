docker exec -it s1 mysql -uroot -proot \
    -e "CREATE DATABASE test;USE test;CREATE TABLE t1 (c1 INT PRIMARY KEY, c2 TEXT NOT NULL);INSERT INTO t1 VALUES (1, 'Luis');"
