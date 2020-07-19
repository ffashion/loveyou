#!/bin/sh 

tar -cf index.tar.gz ./*

scp index.tar.gz root@tc.askaskask.cn:/var/www/html/

rm index.tar.gz

ssh root@tc.askaskask.cn "tar -xf /var/www/html/index.tar.gz -C /var/www/html/;rm /var/www/html/{index.tar.gz,install.sh};"

