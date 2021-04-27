# pfa_desafio1

cd ~/

docker network create pfa

mkdir pfa_desafio1

cd pfa_desafio1

clone o repositorio

cd db

docker run -d --name=mysql_container --network=pfa -v $(pwd)/mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=db_fc --expose=3306 oswaldobiolo/desafio_pfa1_mysql

cd ..

docker run -d --name=php_container --network=pfa --expose 9000 oswaldobiolo/desafio_pfa1_php

cd nginx

docker run -d --name=nginx_container --network=pfa -p 8080:80 oswaldobiolo/desafio_pfa1_nginx	
