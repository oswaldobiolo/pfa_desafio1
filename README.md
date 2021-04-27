# pfa_desafio1

docker network create pfa

docker run -d --name=mysql_container --network=pfa -v $(pwd)/mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=db_fc --expose=3306 oswaldobiolo/desafio_pfa1_mysql

docker run -d --name=php_container --network=pfa --expose 9000 oswaldobiolo/desafio_pfa1_php

docker run -d --name=nginx_container --network=pfa -p 8080:80 oswaldobiolo/desafio_pfa1_nginx	
