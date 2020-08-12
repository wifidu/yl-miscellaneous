sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository “deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable”
sudo apt-get update
sudo apt-get install -y docker-ce
apt-cache madison docker-ce
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
sudo apt-get install  apt-transport-https  ca-certificates curl  software-properties-common
sudo apt autoremove
sudo apt-get install  apt-transport-https  ca-certificates curl  software-properties-common
curl -fsSL  https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install docker-ce
sudo curl -L https://github.com/docker/compose/releases/download/1.23.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
docker
docker ps
docker-compose
su
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
sudo chmod +x /usr/local/bin/docker-compose
apt-get install curl openssh-server ca-certificates postfix
url https://packages.gitlab.com/gpg.key 2> /dev/null | sudo apt-key add - &>/dev/null
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
vim /etc/apt/sources.list.d/gitlab-ce.list
sudo apt-get update
sudo apt-get install gitlab-ce
docker pull gitlab/gitlab-ce
docker images
mkdir gitlab
cd gitlab/
mkdir config logs data
ls
pwd
docker run --detach -p 8443:443 -p 8080:80 -p 2222:22 --name gitlab --restart always -v /root/gitlab/config:/etc/gitlab -v /root/gitlab/logs:/var/log/gitlab -v /root/gitlab/data:/var/opt/gitlab gitlab/gitlab-ce
docker ps -a | grep gitlab
docker logs -f gitlab
docker pull mysql:5.7
docker run -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.7 && sudo docker logs mysql
docker ps
docker exec -it mysql bahs
docker exec -it mysql bash
systemctl enable docker
systemctl list-unit-files | grep enabled
docker ps
docker update --restart=always b75
docker update --restart=always mysql
docker logs -f gitlab
docker images
docker ps
docker images
docker rm -f gitlab
docker ps
docker run --detach -p 8443:443 -p 8080:80 -p 2222:22 --name gitlab --restart always -v /root/gitlab/config:/etc/gitlab -v /root/gitlab/logs:/var/log/gitlab -v /root/gitlab/data:/var/opt/gitlab gitlab/gitlab-ce-zh
docker run --detach -p 8443:443 -p 8080:80 -p 2222:22 --name gitlab --restart always -v /root/gitlab/config:/etc/gitlab -v /root/gitlab/logs:/var/log/gitlab -v /root/gitlab/data:/var/opt/gitlab twang2218/gitlab-ce-zh
docker ps
docker logs -f gitlab
docker ps
docker logs -f gitlab
docker exec -it 
docker ps
docker exec -it 5c4e bash
docker start 5c4e
docker ps
docker start 5c4e
docker exec -it 5c4e bash
sudo gitlab-ctl reconfigure
exit
docker pull beginor/gitlab-ce:11.0.1-ce.0
docker images
docker rmi 18d
docker rmi -f 18d
docker ps
docker rm -f 5c4e
docker ps
docker run --detach -p 8443:443 -p 8080:80 -p 2222:22 --name gitlab --restart always -v /root/gitlab/config:/etc/gitlab -v /root/gitlab/logs:/var/log/gitlab -v /root/gitlab/data:/var/opt/gitlab gitlab/gitlab-ce
docker logs -f gitlab
docker ps
docker rm 64
docker rm -f 64
docker pull beginor/gitlab-ce:11.0.1-ce.0
docker images
docker run --detach -p 8443:443 -p 8080:80 -p 2222:22 --name gitlab --restart always -v /root/gitlab/config:/etc/gitlab -v /root/gitlab/logs:/var/log/gitlab -v /root/gitlab/data:/var/opt/gitlab beginor/gitlab-ce
docker logs -f gitlab
docker ps
docker ps -a
docker stop 5a
docker run 5a
docker start 5a
docker ps
docker rm -f 5a
docker run --detach --publish 8443:443 \    # 映射https端口, 不过本文中没有用到
--publish 8090:80 \      # 映射宿主机8090端口到容器中80端口
--publish 8022:22 \      # 映射22端口, 可不配
--name gitlab \            
--restart always --hostname 10.12.2.22 \    # 局域网宿主机的ip, 如果是公网主机可以写域名
-v /home/software/gitlab/etc:/etc/gitlab \    # 挂载gitlab的配置文件
-v /home/software/gitlab/logs:/var/log/gitlab \    # 挂载gitlab的日志文件
-v /home/software/gitlab/data:/var/opt/gitlab \    # 挂载gitlab的数据
-v /etc/localtime:/etc/localtime:ro \    # 保持宿主机和容器时间同步
--privileged=true beginor/gitlab-ce    # 在容器中能以root身份执行操作
docker run --detach -p 8443:443 -p 8080:80 -p 2222:22 --name gitlab --restart always --hostname 59.110.212.116 -v /root/gitlab/config:/etc/gitlab -v /root/gitlab/logs:/var/log/gitlab -v /root/gitlab/data:/var/opt/gitlab -v /etc/localtime:/etc/localtime:ro --privileged=true beginor/gitlab-ce
docker logs -f gitlab
docker run --detach -p 8443:443 -p 8080:80 -p 2222:22 --name gitlab --restart always -v /root/gitlab/config:/etc/gitlab -v /root/gitlab/logs:/var/log/gitlab -v /root/gitlab/data:/var/opt/gitlab gitlab/gitlab-ce
docker ps -a
docker rm -f 76
docker run --detach -p 8443:443 -p 8080:80 -p 2222:22 --name gitlab --restart always -v /root/gitlab/config:/etc/gitlab -v /root/gitlab/logs:/var/log/gitlab -v /root/gitlab/data:/var/opt/gitlab gitlab/gitlab-ce
docker update restart=always b75
docker update --restart=always b75
docker start b75
docker ps
docker logs -f gitlab
docker run     --detach  --hostname git.example.com   --publish 1443:443     --publish 1080:1080  --publish 1022:22   --name gitlab     --restart unless-stopped     --volume /mnt/sda1/gitlab/etc:/etc/gitlab     --volume /mnt/sda1/gitlab/log:/var/log/gitlab     --volume /mnt/sda1/gitlab/data:/var/opt/gitlab  --privileged=true   beginor/gitlab-ce:11.3.0-ce.0
————————————————
版权声明：本文为CSDN博主「zwww7766」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。
docker run     --detach  --hostname 59.110.212.116   --publish 1443:443     --publish 1080:1080  --publish 1022:22   --name gitlab     --restart unless-stopped     --volume /root/gitlab/data:/etc/gitlab     --volume /root/gitlab/logs:/var/log/gitlab     --volume /root/gitlab/data:/var/opt/gitlab  --privileged=true   beginor/gitlab-ce:11.3.0-ce.0
ls
mkdir dockerfile
cd dockerfile/
vim docker-compose.yml
vi docker-compose.yml
docker-compose up -d
vi docker-compose.yml
docker-compose up -d
docker pull beginor/gitlab-ce
docker run     --detach  --hostname 59.110.212.116   --publish 1443:443     --publish 1080:1080  --publish 1022:22   --name gitlab     --restart unless-stopped     --volume /root/gitlab/data:/etc/gitlab     --volume /root/gitlab/logs:/var/log/gitlab     --volume /root/gitlab/data:/var/opt/gitlab  --privileged=true   beginor/gitlab-ce
docker run --detach -p 8443:443 -p 8080:80 -p 2222:22 --name gitlab --restart always -v /root/gitlab/config:/etc/gitlab -v /root/gitlab/logs:/var/log/gitlab -v /root/gitlab/data:/var/opt/gitlab beginor/gitlab-ce:latest
docker ps
docker stop 33
docker run 
docker run --detach -p 8443:443 -p 8080:80 -p 2222:22 --name gitlab1 --restart always -v /root/gitlab/config:/etc/gitlab -v /root/gitlab/logs:/var/log/gitlab -v /root/gitlab/data:/var/opt/gitlab beginor/gitlab-ce:latest
docker logs -f gitlab1
docker ps
docker exec gitlab1 bash
ls
docker exec -ti gitlab1 bash
gitlab-ctl reconfigure
gitlab-ctl restart
ls
docker exec -ti gitlab1 bash
docker ps
docker logs gitlab1
docker ps
vim docker-compose.yml 
docker ps
docker rm -f 6346
docker-compose up -d
mkdir /opt/docker/gogs/
mkdir -r  /opt/docker/gogs/
cd /opt/
mkdir docker
cd docker/
mkdir gogs
mysql -uroot -h 59.110.212.116 -P 3306 -p
apt install mysql-client-core-5.7
mysql -uroot -h 59.110.212.116 -P 3306 -p
mysql -h 59.110.212.116 -P 3306 -u root -p
docker ps
mysql -h 59.110.212.116 -P 33060 -u root -p
docekr exec -it b75 bash
docker exec -ti b75 bash
mysql -h 59.110.212.116 -P 3306 -u root -p
docker exec -ti b75 bash
docker run -p 10022:22 -p 10080:3000 --name=gogs --net=bachend --restart=always -v /opt/docker/gogs/:/data gogs/gogs
docker ps
docker ps -a
docker start 4b
docker rm 4b
docker run -p 10022:22 -p 10080:3000 --name=gogs --net=backend --restart=always -v /opt/docker/gogs/:/data gogs/gogs
docker ps
docker ps -a
docker rm 05
docker run -p 10022:22 -p 10080:3000 --name=gogs --restart=always -v /opt/docker/gogs/:/data gogs/gogs
docker ps
docker ps -a
docker ps
docker ps -a
docker rm 3d
docker ps -a
docker run -d --name=mygogs -p 10022:22 -p 10080:3000 -v /opt/docker/gogs:/data gogs/gogs
docker logs -f mygogs
docker pull redis
docker run -p 6379:6379 -d redis:latest redis-server
docker ps
docker update restart=always 724
docker update --restart=always 724
docker update --restart=always 13c
docker update --restart=always b75
docker ps
apt install redis
sudo apt-get install redis-server
redis
sudo apt-get install redis-server
docker ps
docker rm -f 72
sudo apt-get install redis-server
vim /etc/init.d/redis-server
docker run -p 6379:6379 -d redis:latest redis-server
docker update --restart=always 9234
docker ps 
docker ps
docker pull 2233466866/lnmp
docker run -dit -p 8080:80 -p 8443:443 -p 8222:22 -p 83306:3306 -p8900:9000 -v /sys/fs/cgroup:/sys/fs/cgroup:ro --name=lnmp --privileged=true 2233466866/lnmp
docker run -dit -P 8080:80 -P 8443:443 -P 8222:22 -P 83306:3306 -P 8900:9000 -v /sys/fs/cgroup:/sys/fs/cgroup:ro --name=lnmp --privileged=true 2233466866/lnmp
ls
cd /home/
ls
mkdir test
docker run -d -v /home/test:/home/wwwroot/default -p 8080:80 -p 8442:443 -p 83306:3306 -p 8222:22  --name lnmp  winstonpro/lnmp
docker run -d -v /home/test:/home/wwwroot/default -p 32801:80 -p 32802:443 -p 32803:3306 -p 32804:22  --name lnmp  2233466866/lnmp
docker ps
docker logs -f lnmp
docker exec -it lnmp bash
docker logs -f lnmp
docker ps
docker rm -f eee
docker run -d -v /home/anhao1226/default:/home/wwwroot/default -p 32801:80 -p 32802:443 -p 32803:3306 -p 32804:22  --name lnmp  winstonpro/lnmp
docker ps
docker exec -ti df bash
docker ps
docker start lnmp
docker ps
docker stop lnmp
docker start lnmp
docker ps
docker start lnmp
docker stop lnmp
docker pull richarvey/nginx-php-fpm
docker run -itd --name lnmp_web -p 8080:80 -v /container_data/web:/var/www/html richarvey/nginx-php-fpm
docker ps
cd /container_data/web/
ll
vim index.php
docker run -itd --name lnmp_web1 -p 8090:80 -v /container_data/web1:/var/www/html richarvey/nginx-php-fpm
cd ..
ls
cd web1
vim index.php
docker ps
docker rm -f be7
docker run -itd --name lnmp_web -p 8080:80 -p 2222:22 -v /container_data/web:/var/www/html richarvey/nginx-php-fpm
docker run -itd --name lnmp_web1 -p 8090:80 -p 2222:22 -v /container_data/web1:/var/www/html richarvey/nginx-php-fpm
docker ps
docker exec -ti a07 bash
telnet 59.110.212.116:2222
telnet 59.110.212.116 -p 2222
telnet 59.110.212.116 2222
telnet 59.110.212.116 22
docker run -d -v /container_data/web/:/home/wwwroot/default -p 32801:80 -p 32802:443 -p 32803:3306 -p 32804:22  --name lnmp  winstonpro/lnmp
docker run -d -v /container_data/web/:/home/wwwroot/default -p 32801:80 -p 32802:443 -p 32803:3306 -p 32804:22  --name lnmp1  winstonpro/lnmp
docker ps
docker exec -it b1e bash
docker run -d -v /container_data/web1/:/home/wwwroot/default -p 42801:80 -p 42802:443 -p 42803:3306 -p 42804:22  --name lnmp2  winstonpro/lnmp
docker ps
dokcer rm -f a07
docker rm -f a07
docker rm -f e20
docker ps
docker exec -it c81 bash
version: '3'
services:
vim a
sl
ls
mv a dockerfile/
cd dockerfile/
ls
rm docker-compose.yml 
mv a docker-compose.yml
ls
docker-compose up -d
docker ps
docker ps -a
docker update restart=always c81
docker update --restart=always c81
docker update --restart=always b1e
dcker start c81
docker start c81
docker start b1e
docker ps
history
history | grep docker 
docker ps
docker stop 336
docker rm -f 336
docker ps
docker exec -it mygogs /bin/bash
docker restart mygogs
docker ps
docker exec -it mygogs /bin/bash
docker ps
docker exec -it mygogs /bin/bash
docker restart mygogs
docker exec -it mygogs /bin/bash
docker restart mygogs
docker exec -it mygogs /bin/bash
docker restart mygogs
docker pull registry
docker images
docker image rm gitlab/gitlab-ce:latest 
docker image rm twang2218/gitlab-ce-zh:latest 
docker image rm beginor/gitlab-ce:
docker image rm beginor/gitlab-ce:11.0.1-ce.0 
docker image rm beginor/gitlab-ce:latest 
ls
docker ps
docker run -d -v /edc/images/registry:/var/lib/registry -p 5000:5000 --restart=always -name registry
docker run -d -v /edc/images/registry:/var/lib/registry -p 5000:5000 --restart=always --name registry
docker run -d -v /edc/images/registry:/var/lib/registry -p 5000:5000 --restart=always --name registry registry
docker ps
curl http://59.110.212.116:5000/v2/_catalog
docker tag winstonpro/lnmp:latest http://59.110.212.116:5000/pension_operate:v0.0.1
docker tag winstonpro/lnmp:latest 59.110.212.116:5000/pension_operate:v0.0.1
curl http://59.110.212.116:5000/v2/_catalog
docker push 59.110.212.116:5000/pension_operate:v0.0.1
vim /etc/docker/daemon.json
systemctl restart docker
docker ps
docker push 59.110.212.116:5000/pension_operate:v0.0.1
curl http://59.110.212.116:5000/v2/_catalog
docker images
docker imi 
docker rmi 59.110.212.116:5000/pension_operate:v0.0.1 
docker imi 
docker images
docker rmi richarvey/nginx-php-fpm:latest 
docker pull 59.110.212.116:5000/pension_operate:v0.0.1
docker images
curl http://59.110.212.116:5000/v2/pension_operate/tags/list
docker ps
docker commit -m "lnmp&laravel" -a "David" c81cacaa2ee7 "pension_operate"
docker images
docker rmi 59.110.212.116:5000/pension_operate:v0.0.1 
docker images
docker tag pension_operate:latest 59.110.22.116:5000/pension_operate:v0.0.1
docker images
docker push 59.110.22.116:5000/pension_operate
docker push 59.110.22.116:5000/pension_operate:v0.0.1
docker push 59.110.22.116:5000/pension_operate:v0.0.2
docker tag pension_operate:latest 59.110.212.116:5000/pension_operate:v0.0.1
docker push 59.110.212.116:5000/pension_operate:v0.0.1
curl http://59.110.212.116:5000/v2/pension_operate/tags/list
curl http://59.110.212.116:5000/v2/_catalog
docker commit -m "lnmp&laravel" -a "David" c81cacaa2ee7 "pension_operate"
docker images
docker rmi 59.110.22.116:5000/pension_operate:v0.0.1 
docker images
docker tag pension_operate:latest 59.110.212.116:5000/pension_operate:v0.0.2
docker push 59.110.212.116:5000/pension_operate:v0.0.2
curl http://59.110.212.116:5000/v2/_catalog
curl http://59.110.212.116:5000/v2/pension_operate/tags/list
docker ps
docker rm -f lnmp2
history | grep lnmp2
docker images
docker run -d -v /container_data/web1/:/home/wwwroot/default -p 8000:8000 -p 8001:8001 -p 42801:80 -p 42802:443 -p 42804:22  --name lnmp2  59.110.212.116:5000/pension_operate:v0.0.2
docker ps
docker commit -m "lnmp&laravel" -a "David" 5cd66da76151 "pension_operate"
docker images
docker tag pension_operate:latest 59.110.212.116:5000/pension_operate:v0.0.3
docker push 59.110.212.116:5000/pension_operate:v0.0.3
curl http://59.110.212.116:5000/v2/pension_operate/tags/list
docker images
docker rmi pension_operate
docker ps 
docker rm -f lnmp1
history |grep lnmp1
docker run -d -v /container_data/web/:/home/wwwroot/default -p 8002:8002 -p 8003:8003-p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1 59.110.212.116:5000/pension_operate:v0.0.3
docker run -d -v /container_data/web/:/home/wwwroot/default -p 8002:8002 -p 8003:8003 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1 59.110.212.116:5000/pension_operate:v0.0.3
docker ps
docker rm -f 98f
history 
docker run -d -v /container_data/web2/:/home/wwwroot/pension_operate_web -v /container_data/laravel2/:/home/wwwroot/pension_operate -p 8002:8002 -p 8003:8004 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/pension_operate:v0.0.3
docker ps
docker rm -f lnmp2
docker run -d -v /container_data/web1/:/home/wwwroot/pension_operate_web -v /container_data/laravel1/:/home/wwwroot/pension_operate -p 8000:8000 -p 8001:8001 -p 42801:80 -p 42802:443 -p 42804:22  --name lnmp2  59.110.212.116:5000/pension_operate:v0.0.3
docker rm -f lnmp1
docker rm -f lnmp2
docker run -d -v /container_data/web2/:/home/wwwroot/pension_operate_web -v /container_data/laravel2/:/home/wwwroot/pension_operate -p 4080:40800 -p 42801:80 -p 42802:443 -p 42804:22  --name lnmp2  59.110.212.116:5000/pension_operate:v0.0.3
docker run -d -v /container_data/web1/:/home/wwwroot/pension_operate_web -v /container_data/laravel1/:/home/wwwroot/pension_operate -p 3080:3080 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/pension_operate:v0.0.3
cd /container_data/web2/
ls
cd /container_data
ls
cd web
ls
cd ..
rm -r web
cd web1
ls
cd ..
cd web2
ls
cd ..
cp web2/. web1/
cp -r web2/. web1/
cd web1
ls
cd ..
history |grep mysql
history |grep re
history |grep pull
history |grep registry
history |grep gogs
docker ps
history |grep lnmp
docker ps
docker rmi lnmp1
docker rm -f lnmp1
docker rm -f lnmp2
docker run -d -v /container_data/web1/:/home/wwwroot/pension_operate_web -v /container_data/laravel1/:/home/wwwroot/pension_operate -p 8080:8080 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/pension_operate:v0.0.3
docker ps
ls
cd laravel
cd laravel1
l
cd ..
cd laravel2
cd ..
docker rm -f lnmp1
docker run -d -v /container_data/web1/:/home/wwwroot/pension_operate_web -v /container_data/laravel1/:/home/wwwroot/pension_operate -p 8080:8080 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/pension_operate:v0.0.3
cd laravel1
ls
cd ..
docker run -d -v /container_data/web2/:/home/wwwroot/pension_operate_web -v /container_data/laravel2/:/home/wwwroot/pension_operate -p 8081:8081 -p 42801:80 -p 42802:443 -p 42804:22  --name lnmp2  59.110.212.116:5000/pension_operate:v0.0.3
cp -r laravel1/ laravel2/
cd laravel2
ls
cd ..
cp -r web1/ web2/
docker ps
docker rm -f lnmp1
docker run -d -v /container_data/web1/:/home/wwwroot/pension_operate_web -v /container_data/laravel1/:/home/wwwroot/pension_operate -p 8090:8090 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/pension_operate:v0.0.3
cd laravel1
ls
docker ps
docker rm -f lnmp2
docker run -d -v /container_data/web2/:/home/wwwroot/pension_operate_web -v /container_data/laravel2/:/home/wwwroot/pension_operate -p 8091:8091 -p 42801:80 -p 42802:443 -p 42804:22  --name lnmp2  59.110.212.116:5000/pension_operate:v0.0.3
docker ps
history | grep tag
docker rm -f lnmp2
history | grep lnmp1
docker run -d -v /container_data/web2/:/home/wwwroot/pension_operate_web -v /container_data/laravel2/:/home/wwwroot/pension_operate -p 8091:8091 -p 42801:80 -p 42802:443 -p 42804:22  --name lnmp2  59.110.212.116:5000/pension_operate:v0.0.3
docker ps
history |grep commit
docker commit -m "lnmp&laravel" -a "David" 1c53d222c8b1 "pension_operate"
docker tag pension_operate:latest 59.^C0.212.116:5000/pension_operate:v0.0.4
docker tag pension_operate:latest 59.110.212.116:5000/pension_operate:v0.0.4
docker push 59.110.212.116:5000/pension_operate:v0.0.4
docker images
cd /container_data/web2
ls
rm -e./
rm -r ./

rm -r ./.
ls
cd ../web1
ls
cd ../laravel1
ls
cd ../laravel2
ls
rm -rf laravel1/*
ls
rm -rf laravel1
ls
cd ..
cp -r web1/* web2/*
cp -r web1/* web2/
cd web2
ls
docker ps
docker ps -a
docker start lnmp1
docker start lnmp2
history |grep update
docker update --restart=always lnmp1
docker update --restart=always lnmp2
ls
docker ps
docker search lnmp
docekr pullidiswy/lnmp
docekr pull idiswy/lnmp
docker pull idiswy/lnmp
docker pull zhaojianhui/lnmp
vim /etc/docker/daemon.json
systemctl restart docker.service
docker pull zhaojianhui/lnmp
docker search lnmp
docker pull 2233466866/lnmp
docker images
history |grep lnmp1
docker run -d -v /container_data/web3/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel3/:/home/wwwroot/pension_operate/ -p 8099:8099 -p 52801:80 -p 52802:443 -p 52804:22  --name lnmp3  2233466866/lnmp
docker rm -f lnmp1
docker rm -f lnmp2
docker rm -f lnmp3
docker run -d -v /container_data/web1/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8090:8090 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  2233466866/lnmp
docker ps
docker logs lnmp1 
docker exec -ti cafd9f744eff /bin/bash
docker rmi -f 2233466866/lnmp
docker ps
docker rm -f lnmp1 
docker run -d -v /container_data/web1/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8080:8080 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/pension_operate:v0.0.4
docker ps
docker rm -f lnmp1 
docker pull ubuntu
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://f1361db2.m.daocloud.io
systemctl restart docker.service
docker pull ubuntu
docker pull mysql
vim /etc/docker/daemon.json
systemctl restart docker.service
dcoker pull ubuntu
docker pull ubuntu
ls
docker images
docker run -d --name ubuntu ubuntu
docker ps
docker start e0
docker ps
history |grep lnmp
docker run -d -p 8090:8090 -p 32801:80 -p 32802:443 -p 32804:22 -p 32803:3306 --name ubuntu ubuntu:latest 
docker rm ubuntu 
docker run -d -p 8090:8090 -p 32801:80 -p 32802:443 -p 32804:22 -p 32803:3306 --name ubuntu ubuntu:latest 
docker ps
docker start ubuntu 
docker ps
docker ps -a
docker run -it -p 8090:80 ubuntu /bin/bash
docker pa
docker ps
docker ps -a
docker run -it -p 8090:80 ubuntu /bin/bash
docker exec -ti 107b6a828712 /bin/bash
history |grep commit
docker commit -m "lnmp" -a "David" 107b6a828712 "lnmp"
history |grep tag
docker images
docker tag lnmp:latest 59.110.212.116:5000/lnmp:v0.0.1
docker images
docker push 59.110.212.116:5000/lnmp:v0.0.1 
ls
docker ps
docker rm -f lnmp2 
history lnmp
history|grep  lnmp
docker run -d -v /container_data/web1/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8080:8080 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/lnmp:v0.0.1 
docker ps
docker ps -a
docker rm -f lnmp1 
docker run -dit -v /container_data/web1/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8080:8080 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/lnmp:v0.0.1 
docker ps
docker exec -it dc7ec1b41cbf /bin/bash
docker ps
docker rm -f lnmp1 
docker run -dit --privilaged=true -v /container_data/web1/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8080:8080 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/lnmp:v0.0.1 /sbin/init
docker run -dit --privilage=true -v /container_data/web1/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8080:8080 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/lnmp:v0.0.1 /sbin/init
docker run --help
docker run -dit --privileged=true -v /container_data/web1/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8080:8080 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/lnmp:v0.0.1 /sbin/init
docker run -dit --privileged=true -v /container_data/web1/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8080:8080 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/lnmp:v0.0.1
docker rm -f lnmp1 
docker run -dit --privileged=true -v /container_data/web1/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8080:8080 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/lnmp:v0.0.1
docker exec -it -d0 /bin/bash
docker exec -it 0d0 /bin/bash
docker rm -f lnmp1 
docker run -dit --privileged=true -v /container_data/web1/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8080:8080 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/lnmp:v0.0.1 /sbin/init
systemctl disable nginx
systemctl enable nginx.service
nginx -t
php -v
exit
history | grep lnmp
docker run -d -v /container_data/web2/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel2/:/home/wwwroot/pension_operate/ -p 8090:8090 -p 42801:80 -p 42802:443 -p 42804:22  --name lnmp2  59.110.212.116:5000/pension_operate:v0.0.4
docker run -d -v /container_data/web2/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel2/:/home/wwwroot/pension_operate/ -p 8081:8081 -p 42801:80 -p 42802:443 -p 42804:22  --name lnmp2  59.110.212.116:5000/pension_operate:v0.0.4
docker rm -f lnmp2 
docker run -d -v /container_data/web2/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel2/:/home/wwwroot/pension_operate/ -p 8081:8081 -p 42801:80 -p 42802:443 -p 42804:22  --name lnmp2  59.110.212.116:5000/pension_operate:v0.0.4
docker ps
telnet 59.110.212.116 32804
telnet 59.110.212.116 80
telnet 59.110.212.116 22
telnet 59.110.212.116 32801
/sbin/init
docker ps
history |grep lnmp1
docker run -d -v /container_data/web1/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8090:8090 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/pension_operate:v0.0.4
docker rm -f lnmp1 
docker run -d -v /container_data/web1/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8090:8090 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1  59.110.212.116:5000/pension_operate:v0.0.4
docker ps
history |grep commit
docker commit -m "lnmp&laravel" -a "David" 7ea7ef6bc4ea "pension_operate"
history |grep tag
docker tag pension_operate:latest 59.110.212.116:5000/pension_operate:v0.0.5
docker push 59.110.212.116:5000/pension_operate:v0.0.5 
history |grep lnmp2
docker run -d -v /container_data/web2/:/home/wwwroot/pension_operate_web/ -v /container_data/laravel2/:/home/wwwroot/pension_operate/ -p 8091:8091 -p 42801:80 -p 42802:443 -p 42804:22  --name lnmp2  59.110.212.116:5000/pension_operate:v0.0.5
cd /opt/
ls
docker ps
docker cp /opt/php-7.2.27.tar.gz b56:/opt/
docker search centos php
docker search centos
docker search centos_php
docker pull madhush/centos_php72
docker pull centos
history |grep run
docker run -itd --name centos centos:latest 
docker ps
docker exec -it centos /bin/bash
docker ps
docker rm -f centos 
cd /home/admin/
ls
ls -al
cd ~
ls
git clone ssh://git@git.yobochina.com:40022/ipsv2/subplate-api.git
ls
cd subplate-api/
ls
cd ..
pwsa
cd subplate-api/
pwd
ls
cd dockerfile/
ls
touch Dockerfile
vim Dockerfile 
docker build -f Dockerfile -t rryb:v0.0.1 .
vim Dockerfile 
docker build -f Dockerfile -t rryb:v0.0.1 .
ls -al ~/.ssh
ssh-keygen -t rsa -C "zhaodayuan0808@foxmail.com"
ls -al ~/.ssh
cat ~/.ssh/id_rsa.pub 
vim Dockerfile 
docker build -f Dockerfile -t rryb:v0.0.1 .
vim Dockerfile 
docker build -f Dockerfile -t rryb:v0.0.1 .
vim Dockerfile 
docker build -f Dockerfile -t rryb:v0.0.1 .
vim Dockerfile 
docker build -f Dockerfile -t rryb:v0.0.1 .
vim Dockerfile 
docker build -f Dockerfile -t rryb:v0.0.1 .
vim Dockerfile 
docker build -f Dockerfile -t rryb:v0.0.1 .
vim Dockerfile 
docker build -f Dockerfile -t rryb:v0.0.1 . --build-arg priv_key="$(cat ~/.ssh/id_rsa)" --build-arg pub_key="$(cat ~/.ssh/id_rsa.pub)"
vim Dockerfile 
docker build -f Dockerfile -t rryb:v0.0.1 . --build-arg priv_key="$(cat ~/.ssh/id_rsa)" --build-arg pub_key="$(cat ~/.ssh/id_rsa.pub)"
vim Dockerfile 
docker build -f Dockerfile -t rryb:v0.0.1 . --build-arg priv_key="$(cat ~/.ssh/id_rsa)" --build-arg pub_key="$(cat ~/.ssh/id_rsa.pub)"
vim Dockerfile 
docker build -f Dockerfile -t rryb:v0.0.1 .
history |grep run
docker run -d -p 8092:8092 -p 52801:80 -p 52802:443 -p 52804:22  --name rryb madhush/centos_php72
docker ps 
docker run -dit -p 8092:8092 -p 52801:80 -p 52802:443 -p 52804:22  --name rryb madhush/centos_php72
docker rm rryb 
docker run -dit -p 8092:8092 -p 52801:80 -p 52802:443 -p 52804:22  --name rryb madhush/centos_php72
docker ps
docker exec 433 /bin/bash
docker exec -it 433 /bin/bash
history |grep run
docker run -d -v /container_data/laravel3/:/home/wwwroot/subplate-api/ -p 8092:8092 -p 52801:80 -p 52802:443 -p 52804:22  --name rryb 59.110.212.116:5000/pension_operate:v0.0.5
docker rm -f rryb 
docker run -d -v /container_data/laravel3/:/home/wwwroot/subplate-api/ -p 8092:8092 -p 52801:80 -p 52802:443 -p 52804:22  --name rryb 59.110.212.116:5000/pension_operate:v0.0.5
docker exec -it 588 /bin/bash
docker ps
telnet 59.110.212.116 52801
cd /container_data/laravel3/
ls
docker ps
docker exec -it rryb /bin/bash
docker ps
docker exec -it rryb /bin/bash
docker ps
docker exec -it rryb /bin/bash
docker exec -it rryb-subplate /bin/bash
docker ps
history |grep rryb
docker run -d -v /container_data/laravel4/:/home/wwwroot/parking-sharing/ -p 8093:8093 -p 52801:80 -p 62802:443 -p 62804:22  --name rryb-sharing 59.110.212.116:5000/pension_operate:v0.0.5
docker run -d -v /container_data/laravel4/:/home/wwwroot/parking-sharing/ -p 8093:8093 -p 62801:80 -p 62802:443 -p 62804:22  --name rryb-sharing 59.110.212.116:5000/pension_operate:v0.0.5
docker rm rryb-sharing 
docker run -d -v /container_data/laravel4/:/home/wwwroot/parking-sharing/ -p 8093:8093 -p 62801:80 -p 62802:443 -p 62804:22  --name rryb-sharing 59.110.212.116:5000/pension_operate:v0.0.5
docker rename rryb rryb-subplate
docker ps
docker exec -ti rryb-sharing /bin/bash
ls
docker sp
docker ps
history | grep commit
docker commit -m "lnmp for rryb" -a "David" 588479ace806 "rryb"
docker rm -f rryb-sharing 
docker run -d -v /container_data/laravel4/:/home/web/ -p 8093:8093 -p 62801:80 -p 62802:443 -p 62804:22  --name rryb-sharing rryb:latest 
docker ps
docker start -dit rryb-sharing 
docker start -it rryb-sharing 
docker rm -f rryb-sharing 
docker run -dit -v /container_data/laravel4/:/home/web/ -p 8093:8093 -p 62801:80 -p 62802:443 -p 62804:22  --name rryb-sharing rryb:latest 
docker ps
docker ps -a
docker images
docker run -d -v /container_data/laravel4/:/home/wwwroot/parking-sharing/ -p 8093:8093 -p 62801:80 -p 62802:443 -p 62804:22  --name rryb-sharing rryb:latest 
docker rm rryb-sharing 
docker run -d -v /container_data/laravel4/:/home/wwwroot/parking-sharing/ -p 8093:8093 -p 62801:80 -p 62802:443 -p 62804:22  --name rryb-sharing rryb:latest 
docker ps
docker rm rryb-sharing 
docker run -dit -v /container_data/laravel4/:/home/wwwroot/parking-sharing/ -p 8093:8093 -p 62801:80 -p 62802:443 -p 62804:22  --name rryb-sharing rryb:latest 
docker ps
docker start rryb-sharing 
docker ps
docker logs rryb-sharing 
docker rm  rryb-sharing 
docker rmi rryb:latest 
history |grep rryb
docker run -d -v /container_data/laravel4/:/home/wwwroot/parking-sharing/ -p 8093:8093 -p 62801:80 -p 62802:443 -p 62804:22  --name rryb-sharing 59.110.212.116:5000/pension_operate:v0.0.5
docker exec -ti rryb-sharing 
mkdir /home/web
cd /home/web/
ls
cd ..
ls
exit
cd /container_data/laravel4/
ls
docker ps
docker exec -ti rryb-sharing /bin/bash
docker exec -ti rryb-subplate 
docker exec -ti rryb-subplate /bin/bash
cd /container_data/laravel4
git log
git checkout hotfixes
git branch
ls
mkdir emq
cd emq/
wget http://emqtt.com/downloads/latest/docker
ls
ls -l
ls -lh
vim docker 
rm docker 
cd ..
cd emq/
ls
unzip emqx-docker-v3.1.0.zip 
apt install unzip
apt install unzip -y
sudo apt-get purge --auto-remove redis-server
apt install unzip -y
unzip emqx-docker-v3.1.0.zip 
ls
docker load < emqx-docker-v3.1.0
docker run -tid --name emq31 -p 1883:1883 -p 8083:8083 -p 8883:8883 -p 8084:8084 -p 18083:18083
docker run -tid --name emq31 -p 1883:1883 -p 8083:8083 -p 8883:8883 -p 8084:8084 -p 18083:18083 emqx/emqx:v3.1.0 
docker exec -ti emq31 /bin/bash
docker ps
docker exec -ti emq31 /bin/sh
docker start emq31 
docker exec -ti emq31 /bin/sh
docker exec -ti rryb-subplate 
docker exec -ti rryb-subplate /bin/bash
docker ps
docker images
docker image prune
docker images
docker rmi 31c7
docker ps -a
sudo docker rm $(sudo docker ps -a -q)
docker ps
docker ps -a
docker image prune
docker images
docker search emq
docker exec -it emq31 /bin/sh
history |grep emq
docker restart emq31 
docker exec -it emq31 /bin/sh
docker restart emq31 
docker ps
docker exec -it emq31 /bin/sh
docker start emq31 
docker exec -ti emq31 /bin/sh
docker logs emq31 
docker logs -f emq31 
docker restart emq31 
docker ps
docker restart emq31 
docker ps
cd /container_data/
cd laravel1/
ls
vim routes/api.php 
history | grep lnmp
d
docker ps
history | grep lnmp1
telnet 59.110.212.116 8090
ls
df -h
free
free -g
free -m
cpu /proc/cpuinfo 
cat /proc/cpuinfo 
cat /proc/meminfo 
w
uptime 
top
vmstat 
top
docker ps
docker exec -ti 588 /bin/bash
cd /container_data/laravel4/
ls
ls -a
cd ..
ls
cd laravel3
ls
docker ps
telnet 59.110.212.116 62801
telnet 59.110.212.116 52801
docker exec -ti rryb-sharing /bin/bash
ps
ps -aux
nginx -t
telnet 59.110.212.116 682304
telnet 59.110.212.116 62804
ssh root@59.110.212.116 -p 62804
docker ps
ssh root@59.110.212.116 -p 52804
docker ps
docker exec -ti rryb-sharing /bin/bash
docker ps
telnet 59.110.212.116 62804
telnet 59.110.212.116 32804
docker exec -ti rryb-sharing /bin/bash
telnet 59.110.212.116 62804
docker exec -ti rryb-sharing /bin/bash
ssh root@59.110.212.116 -p 62804
ssh root@59.110.212.116 -p 32804
docker exec -ti rryb-sharing /bin/bash
ssh root@59.110.212.116 -p 62804
docker exec -ti rryb-sharing /bin/bash
history | grep rryb
docker ps
history | grep rryb-subplate
clear
date
top
uname -r
docker search java
ls
mkdir xueji
ls
rm -r xueji 
git clone https://github.com/tongxunkeji/student_info_system.git
ls
cd student_info_system/
ls
vim app/config/setting.py 
vim app/extraposition/upload_student.py 
docker image build -t student_info_system .
docker container run -d -p 8000:8000 --name student_info_system student_info_system
docker ps
docker exec -ti student_info_system /bin/bash
ls
rxit
exit
docker ps
docker rmi student_info_system:latest 
docker rmi -f student_info_system:latest 
docker list
docker -h
docker images
docker rmi -f 042ee
docker rm -f 042ee
docker rm -f 3f44
docker rmi -f 042ee
ls
cd student_info_system/
vim app/config/setting.py 
vim app/extraposition/upload_student.py 
docker image build -t student_info_system .
docker container run -d -p 8000:8000 --name student_info_system student_info_system
docker ps
docker rm -f c4aaa
docker images
docker rmi student_info_system:latest 
cd ..
rm -rf student_info_system/
ls
git clone https://github.com/loveyu/StudentManage.git
ls
git clone https://gitee.com/love_w/StudentManage.git
ls
rm -rf StudentManage/
docker images
history | grep rryb
docker run -d -v /container_data/laravel5/:/home/wwwroot/xueji/ -p 8094:8094 -p 12801:80 -p 12802:443 -p 12804:22  --name xueji 59.110.212.116:5000/pension_operate:v0.0.5
docker exec -ti xueji /bin/bash
docker ps 
cd /container_data/laravel5/
ls
chmod -R 777 app/log/*
cd app/log/
ls
cd ..
chmod -R 777 app/log/
ls
cd app/
ls
cd l
cd log/
ls
vim 2020_03_20.log 
curl http://59.110.212.116:5000/v2/_catalog
docker tag your-image-name:tagname your-server-ip:5000/xuej:v0.0.1
docker images
docker commit -a "David" -m "学籍管理系统" -p
docker ps
docker commit -a "David" -m "学籍管理系统" -p xueji xueji:v.0.0.1
docker ps
docker images
docker tag xueji:v.0.0.1 your-server-ip:5000/xueji:v0.0.1
docker ps
docker images
docker rmi your-server-ip:5000/xueji:v0.0.1 
docker rmi -f your-server-ip:5000/xueji:v0.0.1 
docker images
docker ps
docker tag xueji:v.0.0.1 59.110.212.116:5000/xueji:v0.0.1
docker images
docker push 59.110.212.116:5000/xueji:v0.0.1 
history |grep docker 
docker run -d -v /container_data/laravel5/:/home/wwwroot/xueji/ -p 22801:80 -p 22802:443 -p 22804:22  --name xueji1 59.110.212.116:5000/xueji:v0.0.1 
dockre ps
docker rm -f xueji1
docker ps
docker ps
docker exec -ti 8e42 /bin/bash
redis
docker ps
docker exec -ti 923 /bin/bash
reids-cli 
reids-cli -h 59.110.212.116
reids -h 59.110.212.116
apt-get install redis-tools
reids -h 59.110.212.116
reids-cli -h 59.110.212.116
apt-get install redis-cli
redis
ps -aux|grep redis
redis-cli -h 59.110.212.116
docker ps
docker exec -ti 8e42 /bin/bash
redis-cli -h 59.110.212.116
docker ps
docker images
mkdir /container_data/mysql/master
mkdir -r /container_data/mysql/master
mkdir -h
mkdir --help
mkdir -p /container_data/mysql/master
mkdir -p /container_data/mysql/slave
cd /container_data/mysql/master/
touch Dockerfile
vim Dockerfile 
cp Dockerfile ../slave/
ls
touch my.cnf
vim my.cnf 
cp my.cnf ../slave/
vim ../slave/my.cnf 
docker build -t master/mysql .
cd ../slave/
docker build -t slave/mysql .
docker images
docker run -p 33061 --name mysql-master -e MYSQL_ROOT_PASSWORD=123456 -d master/mysql
docker run -p 33062 --name mysql-slave -e MYSQL_ROOT_PASSWORD=123456 -d slave/mysql
docker exec -ti mysql-master  bash
docker exec -ti mysql-slave bash
docker run -p 33063:3306 --name mysql-slave1 -e MYSQL_ROOT_PASSWORD=123456 -d slave/mysql
docker exec -ti mysql-slave1 bash
docker ps
docker rm -f mysql-master 
docker rm -f mysql-slave 
docker ps
docker run -p 33061:3306 --name mysql-master -e MYSQL_ROOT_PASSWORD=123456 -d master/mysql
docker run -p 33062:3306 --name mysql-slave -e MYSQL_ROOT_PASSWORD=123456 -d slave/mysql
docker exec -ti mysql-master bash
sudo apt-get install virtualbox
apt --fix-broken install
sudo apt-get install virtualbox
sudo cp /etc/apt/sources.list /etc/apt/sources.list.buckup
sudo gedit /etc/apt/sources.list
sudo vim /etc/apt/sources.list
source /etc/apt/sources.list
sudo apt-get install virtualbox
apt --fix-broken install
apt-get update
apt --fix-broken install
sudo apt-get install virtualbox
sudo dpkg -i virtualbox-5.2_5.2.0-118431_Ubuntu_xenial_amd64.deb
cat /proc/version
lsb_release -a
curl -L https://download.virtualbox.org/virtualbox/6.1.4/virtualbox-6.1_6.1.4-136177~Ubuntu~bionic_amd64.deb
curl --help
curl https://download.virtualbox.org/virtualbox/6.1.4/virtualbox-6.1_6.1.4-136177~Ubuntu~bionic_amd64.deb
curl https://download.virtualbox.org/virtualbox/6.1.4/virtualbox-6.1_6.1.4-136177~Ubuntu~bionic_amd64.deb --output ./
curl -L https://download.virtualbox.org/virtualbox/6.1.4/virtualbox-6.1_6.1.4-136177~Ubuntu~bionic_amd64.deb --output ./
curl -o https://download.virtualbox.org/virtualbox/6.1.4/virtualbox-6.1_6.1.4-136177~Ubuntu~bionic_amd64.deb
curl -O https://download.virtualbox.org/virtualbox/6.1.4/virtualbox-6.1_6.1.4-136177~Ubuntu~bionic_amd64.deb
ls
dpkg -i virtualbox-6.1_6.1.4-136177~Ubuntu~bionic_amd64.deb
sudo apt-get install -f
dpkg -i virtualbox-6.1_6.1.4-136177~Ubuntu~bionic_amd64.deb
ls
rm virtualbox-6.1_6.1.4-136177~Ubuntu~bionic_amd64.deb 
sudo apt-get install virtualbox
curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine && chmod +x /tmp/docker-machine && sudo cp /tmp/docker-machine /usr/local/bin/docker-machine
history 
curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine && chmod +x /tmp/docker-machine && sudo cp /tmp/docker-machine /usr/local/bin/docker-machine
base=https://github.com/docker/machine/releases/download/v0.16.0 &&   curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&   sudo mv /tmp/docker-machine /usr/local/bin/docker-machine &&   chmod +x /usr/local/bin/docker-machine
vim /etc/hosts
sudo/etc/init.d/networking restart
sudo /etc/init.d/networking restart
sudo /etc/init.d/dns-clean start
sudo /etc/init.d/nscd restart
base=https://github.com/docker/machine/releases/download/v0.16.0 &&   curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&   sudo mv /tmp/docker-machine /usr/local/bin/docker-machine &&   chmod +x /usr/local/bin/docker-machine
vim /etc/hosts
sudo /etc/init.d/dns-clean start
sudo /etc/init.d/nscd restart
vim /etc/hosts
sudo /etc/init.d/nscd restart
base=https://github.com/docker/machine/releases/download/v0.16.0 &&   curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&   sudo mv /tmp/docker-machine /usr/local/bin/docker-machine &&   chmod +x /usr/local/bin/docker-machine
sudo systemctl is-active systemd-resolved.service
base=https://github.com/docker/machine/releases/download/v0.16.0 &&   curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&   sudo mv /tmp/docker-machine /usr/local/bin/docker-machine &&   chmod +x /usr/local/bin/docker-machine
curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine && chmod +x /tmp/docker-machine && sudo cp /tmp/docker-machine /usr/local/bin/docker-machine
clear
man
man --help
ls
ls -a
ls -c
ls -l
ls -n
ls -lh
ls -o
ls -oh
cd dockerfile/
cat Dockerfile 
tac Dockerfile 
touch a
vim a 
cat a
cat -b a 
cat -e a
cat -E a
cat -T a
vim a
cat -T a
cat -v a
cat -u a
cat -n a
tac -n a
tac a
ls
rm a
cd ..
mkdir test
cd test/
mkdir -v a
ls
cd a/
ls
cd ,,
cd ..
mkdir --help
mkdir --version
ls
rm a
rm -f a
rm -d a
ls
mkdir a
mkdir -rf a
mkdir -p a/b
ls
rm -rf a
ls
;s
ls
mkdir -p a/
mkdir -p b
ls
touch a/a.txt
ls
cd a/
ls
cd ..
mv -b a/a.txt b/
cd a/
ls
cd ..
cd b/
ls
cd ..
touch a/a.txt
mv -b a/a.txt b/
ls a/
cd ls
cd a/
ls
cd ../b/
ls
cd ..
rm b/*
ls
cd b/
ls
cd ..
vim a/a.txt
vim b/a.txt
mv -b a/a.txt b/
cat b/a.txt
cat b/a.txt
mv b/a.txt~ a/a.txt
mv -i a/a.txt b/
mv b/a.txt~ a/a.txt
ls
cd b/
ls
cd ..
echo $PWD
vim b/a.txt 
head -n 2 b/a.txt 
head -c 2 b/a.txt 
head -c 3 b/a.txt 
head -c 4 b/a.txt 
more +n2 b/a.txt 
more -n2 b/a.txt 
more -n 2 b/a.txt 
sssssss
s
more -2 b/a.txt 
more +/2 b/a.txt 
more -c b/a.txt 
more -d b/a.txt 
more -2 -d b/a.txt 
more -2 b/a.txt 
less b/a.txt 
wc b/a.txt 
wc -c b/a.txt 
wc -m b/a.txt 
vim b/a.txt 
wc -m b/a.txt 
wc -c b/a.txt 
wc -w b/a.txt 
wc -L b/a.txt 
date
data %H
date %H
data '%H'
date '%H'
date '+%H'
date '+%l'
date '+%D'
date '+%X'
date MM
date 'MM'
date '+MM'
cal
cal -1
cal -2
cal -3
cal -m
ncal
which ls
which which
whereis ls
whereis whick
whereis which
nl b/a.txt 
vim b/a.txt 
nl -b a b/a.txt 
vim b/a.txt 
nl -b b/a.txt 
nl -b a b/a.txt 
nl -b t b/a.txt 
nl -c b/a.txt 
nl -n ln b/a.txt 
nl -n rl b/a.txt 
nl -n rn b/a.txt 
ps -a
ps -aux
ps -au
ps e
ps -ef
kill -l
ps -a
ps -au
top
clear
find / -name '*.log' -print
vim /usr/local/share/aliyun-assist/1.0.1.340/log/aliyun_assist_main_202003030024.log
cd /usr/local/share/aliyun-assist/1.0.1.340/log/
ls
grep '202002'*.log
grep '20200221'*.log
grep '20200221*.log'
grep "20200221*.log"
grep --help
vim aliyun_assist_202002130017.log
vim aliyun_assist_update_202002130017.log
grep '2020-02-13 [0-1][0-9]'*.log
vim aliyun_assist_update_202002130017.log
grep '2020-02-13 [0-1][0-3]'*.log aliyun_assist_update_202002130017.log 
vim aliyun_assist_update_202002130017.log
grep '2020-02-13 0[0-3]'*.log aliyun_assist_update_202002130017.log 
grep '2020-02-13 0[0-3]' *.log aliyun_assist_update_202002130017.log 
grep '2020-02-13 0[0-3]' *.log aliyun_assist_update_202002130017.log | grep -v '2020-02-13 0[0-2]'
head aliyun_assist_update_202002130017.log 
head aliyun_assist_update_202002130017.log -n
head -n  aliyun_assist_update_202002130017.log 
head +n  aliyun_assist_update_202002130017.log 
ls
cd -
vim a.txt
mv a.txt tmp.cc
cat tmp.cc| >>tmp.cc|>>tmp.cc|>>tmp.cc|head -n10|>tmp.cc|cut -c7-7
vim tmp.cc 
cd test/
ls
cat tmp.cc 
vim tmp.cc 
cut -c-4 tmp.cc 
cut -c4 tmp.cc 
cut -c4-6 tmp.cc 
cut -h
cut --h
vim tmp.cc 
cut -c4-6 tmp.cc 
cut -b6 tmp.cc 
cut -b2 tmp.cc 
cut -b2-2 tmp.cc 
''>tmp.cc 
''>>tmp.cc 
>tmp.cc 
cat tmp.cc 
'hello world'>tmp.cc 
echo 'hello world'>tmp.cc 
cat tmp.cc 
cat tmp.cc >> tmp.cc >>tmp.cc >>tmp.cc 
cat tmp.cc| >> tmp.cc| >>tmp.cc| >>tmp.cc 
cat t
cat tmp.cc 
cat tmp.cc >> tmp.cc 
cat tmp.cc| >> tmp.cc 
cat tmp.cc 
cut -c7 tmp.cc 
cut -b2-3 tmp.cc 
cut -c-10 tmp.cc 
cut -c3- tmp.cc 
ls
cp tmp.cc tmp.ccc
diff tmp.cc tmp.ccc 
echo 'hello'>> tmp.cc
diff tmp.cc tmp.ccc 
tar -cvf tmp.tar tmp.cc
ls
tar -t tmp.tar
tar -tf tmp.tar 
tar -xvf tmp.tar 
ls
echo '123'>> tmp.cc
tar -xvf tmp.tar 
ls
cat tmp.cc
ls -ll
ls -llh
tar -czvf tmp.tgz tmp.cc
ls -llh
rm tmp.cc
rm -i tmp.ccc 
ls
tar -zxvf tmp.tgz 
ls
cat tmp.
cat tmp.cc
ls
du -a
du -ah
du -ab
du -c
du -h tmp.cc
du -h /
du -h ./
du -h
ls
du
du -h tmp.cc
du -sh
du -sh ./
du -ah
df
df -a
df -h
losf
lsof 
clear
lsof /bin/bash 
lsof /bin/bash -R
lsof -R /bin/bash
lsof -R /bin/nginx
lsof -u root
lsof docker
lsof -c docker
lsof -i
lsof -i tcp
lsof -i udp
lsof -i :80
lsof -i :8080
lsof -i :12308
lsof -i :8090
lsof -i :8091
lsof -i tcp:8090
lsof -i udp:8090
lsof -i udp
ps -aux
netstat 
netstat -anp | grep 8090
netstat -nultp
netstat -anp | grep 3306
lsof -i |grep 8090
lsof -i |grep 8091
lsof -i |grep tcp
lsof -i |grep TCP
ping -f www.baidu.com
ping www.baidu.com
ping -f www.baidu.com
ping -R www.baidu.com
ping 127.0.0.1
ping 59.110.212.116
ping 59.110.212.117
ping 59.110.212.118
ping 59.110.212.119
ping -c 3 59.110.212.116
history |gerp netstat
history |grep netstat
netstat -a
netstat -nu
netstat -nt
netstat -anp
netstat -nt
netstat -nt6
netstat -a| grep tcp
netstat -i
lsof -i
lsof -i tcp
netstat -l
netstat -n
netstat -r
ping 172.17.0.0
netstat -nu
netstat -au
netstat -at
netstat -ap | grep docker
netstat -pt
ifconfig
ifconfig eth0 ip
hostname
hostname -v
hostname -a
hostname -d
hostname -f
hostname -i
ping 172.24.60.80
ifconfig -a
hostname -i
traceroute6 www.baidu.com
traceroute www.baidu.com
traceroute6 www.baidu.com
traceroute6 --help
traceroute6 -p 59.110.212.116
traceroute6 -p 59.110.212.116#
traceroute6 59.110.212.116
traceroute www.baidu.com
apt install tracerote
apt install inetutils-traceroute
traceroute www.baidu.com
route
route -c
route -C
route
wget -V
vmstat
vmstat 3 3
free
free -h
top
awk '/root/' /etc/passwd
grep 'root' /etc/passwd
ps
ps -aux
ps -aux | grep Z
history 
kill -l
exit
docker ps
ocker inspect 7ea7e | grep Mounts -A 20
docker inspect 7ea7e | grep Mounts -A 20
docker ps
top
docker ps
docker rename wizardly_hopper redis
docker ps
docker pull star7th/showdoc 
docker images
docker pull registry.cn-shenzhen.aliyuncs.com/star7th/showdoc
docker tag registry.cn-shenzhen.aliyuncs.com/star7th/showdoc:latest star7th/showdoc
docker images
docker rmi registry.cn-shenzhen.aliyuncs.com/star7th/showdoc:latest 
docker images
mkdir -p /showdoc_data/html
chmod  -R 777 /showdoc_data
docker run -d --name showdoc --user=root --privileged=true -p 4999:80 -v /showdoc_data/html:/var/www/html/ star7th/showdoc
df
docker images
docker rmi centos:latest
docker rmi rabbitmq:3.7.15-management 
docker rmi elasticsearch:6.4.0 
docker rmi nginx:1.10 
docker ps
docker ps -a
docker start showdoc 
docker update --restart=always showdoc 
docker update --restart=always mysql-slave1 
docker update --restart=always mysql-slave
docker update --restart=always mysql-master 
docker update --restart=always xueji 
docker update --restart=always emq31 
docker update --restart=always rryb-sharing 
docker update --restart=always rryb-subplate 
docker update --restart=always lnmp1 
docker update --restart=always lnmp
docker start mysql-slave
docker start mysql-slave1 
docker start mysql-master 
docker start xueji 
docker start emq31 
docker start rryb-sharing 
docker start rryb-subplate 
docker start lnmp
docker start lnmp1
docker start lnmp2
nginx -v
ab -v
apt install apache2-utils
ab -v
ab -c 1000 -n 10000 59.110.212.116:32801/api/material-management/material/list?page=1&page_size=10 
ab -c 1000 -n 10000 http://59.110.212.116:32801/api/material-management/material/list?page=1&page_size=10 
ab -c 10 -n 1000 http://59.110.212.116:32801/api/material-management/material/list?page=1&page_size=10 
ab -c 10 -n 1000 http://59.110.212.116:32801/api/material-management/fixed-assets/assets_number
docker node ls
docker ps
docker inspect registry  | grep Mounts -A 20
docker inspect lnmp1  | grep Mounts -A 20
docker ps
redis-cli 59.110.212.116 -p 6379
history | grep redis
redis-cli -h 59.110.212.116
docker ps
docker exec rryb-subplate 
docker exec -ti rryb-subplate /bin/bash
docker exec -ti rryb-subplate /bin/sh
docker exec -ti 7ea /bin/bash
docker exec -ti 588 /bin/bash
docker exec -ti 915 /bin/bash
history |grep rryb-subplate
docker exec -it rryb-subplate /bin/bash
docker restart rryb-subplate 
docker exec -it rryb-subplate /bin/bash
docker exec -it rryb-subplate /sh
docker  stop rryb-subplate 
docker start rryb-subplate 
docker ps
docker exec -it rryb-subplate /sh
docker ps -a
docker stop rryb-subplate 
docker restart rryb-subplate 
docker exec -i -t rryb-subplate /bin/bash
docker attach 915
dock
docker ps
docker exec -ti bfee /bin/bash
docker exec -ti mysql-slave1 /bin/bash
docker version
curl -L https://github.com/docker/machine/releases/download/v0.10.0/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine && 2   chmod +x /tmp/docker-machine && 3   sudo cp /tmp/docker-machine /usr/local/bin/docker-machine
curl -L https://github.com/docker/machine/releases/download/v0.9.0-rc2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine && chmod +x /tmp/docker-machine && sudo cp /tmp/docker-machine /usr/local/bin/docker-machine  ```



curl -L https://github.com/docker/machine/releases/download/v0.9.0-rc2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine && chmod +x /tmp/docker-machine && sudo cp /tmp/docker-machine /usr/local/bin/docker-machine
docker exec -ti rryb-sharing 
docker exec -ti rryb-sharing /bin/bash
curl -L https://github.com/docker/machine/releases/download/v0.9.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&   chmod +x /tmp/docker-machine &&   sudo cp /tmp/docker-machine /usr/local/bin/docker-machine
docker swarm init --advertise-addr 59.110.212.116
docker service ls
docker swarm ls
docker node ls
docker ps
docker inspect rryb-subplate | grep Mounts -A 20
cd /container_data/laravel3
ls
docker exec -ti rryb-subplate /bin/bash
docker inspect rryb-sharing | grep Mounts -A 20
cd /container_data/laravel4
ls
docker node ls
docker exec -ti rryb-subplate /bin/bash
docker ps
docker rm -f 915
docker ps
history |grep rryb
docker ps
docker ps -a
docker rm -f 588
history |grep rryb-
history |grep rryb
docker run -d -v /container_data/laravel3/:/home/wwwroot/subplate-api/ -p 8092:8092 -p 52801:80 -p 52802:443 -p 52804:22  --name rryb-subplate 59.110.212.116:5000/pension_operate:v0.0.5
docker ps -a
docker exec -ti rryb-subplate /bin/bash
docker rm -f rryb-subplate 
docker ps
docker ps -a
docker run -d -v /container_data/laravel3/:/home/wwwroot/subplate-api/ -p 8092:8092 -p 52801:80 -p 52802:443 -p 52804:22  --name rryb-subplate 59.110.212.116:5000/pension_operate:v0.0.5
docker rm -f rryb-subplate 
docker network disconnect --force bridge rryb-subplate
docker run -d -v /container_data/laravel3/:/home/wwwroot/subplate-api/ -p 8092:8092 -p 52801:80 -p 52802:443 -p 52804:22  --name rryb-subplate 59.110.212.116:5000/pension_operate:v0.0.5
docker ps
docker exec -ti rryb-subplate /bin/bash
ls
docker run -d -v /container_data/laravel4/:/home/wwwroot/parking-sharing/ -p 8093:8093 -p 62801:80 -p 62802:443 -p 62804:22  --name rryb-sharing 59.110.212.116:5000/pension_operate:v0.0.5
docker exec -ti rryb-subplate /bin/bash
top
ps -aux
service restart php-fpm
systemctl php-fpm restart
#include <iostream>
#include <algorithm>
#include <string>
#include <cstring>
#include <cmath>
#include <vector>
#include <map>
#include <set>
#include <queue>
#include <stack>
#include <iomanip>
#include <cstdio>
using namespace std;
top
vim /etc/sys/vm/swappiness
ipcs -m
free -m
vmstat -s | grep -i page
top
cat >> /etc/security/limits.conf < END
top
docker ps
top
docker ps
top
echo 3 >/proc/sys/vm/drop_caches
top
echo 3 >/proc/sys/vm/drop_caches
top
docker ps
top
vim /container_data/laravel4/route/route.php 
nginx -t
ls
docker exec -ti rryb-sharing /bin/bash
docker exec -ti rryb-subplate /bin/bash
docker exec -ti rryb-sharing /bin/bash
ls
docker ps
docker update --restart=always rryb-sharing 
docker update --restart=always rryb-subplate 
docker update --restart=always showdoc 
docker service create --replicas 1 --name helloworld alpine ping docker.com
docker node -l
docker node l
docker node ls
docker service ls
docker service inspect --pretty helloworld helloworld 
docker service inspect --pretty helloworld
ls
docker service rm helloworld 
docker exec -ti rryb-sharing /bin/bash
docker exec -ti rryb-subplate /bin/bash
docker ps
top
docker exec -ti rryb-subplate /bin/bash
top
ps -aux
cd /container_data/laravel
git status
cd /container_data/laravel1
git status
cd ../laravel2
git status
history |grep "docker run"
history |grep "mysql"
docker exec -ti emqx31 /bin/sh
docker ps
docker exec -ti emq31 /bin/sh
docker ps
history |grep redis
redis-cli -h 59.110.212.116
cd /opt/docker/gogs/git/gogs-repositories/luowenda/
ls
history 
redis-cli -h 59.110.212.116
docker ps
top
docker -v
systemctl restart docker
service docker restart
systemctl status docker.service
docker images
systemctl status docker.service
sudo service docker restart
vim /etc/docker/daemon.json
systemctl restart docker 
journalctl -xe
systemctl stop docker 
systemctl start docker 
systemctl status docker.service
vim /etc/docker/daemon.json
systemctl status docker.service
systemctl start docker 
systemctl status docker.service
docker ps
systemctl restart docker.service
sudo systemctl daemon-reload
sudo systemctl restart docker
systemctl status docker.service
vi /etc/sysconfig/selinux
dockerd
vim /etc/docker/daemon.json
sudo systemctl daemon-reload
sudo systemctl restart docker
dockerd
ps -ef|grep docker
ps -aux|grep docker
vim /var/run/docker.pid 
delete /var/run/docker.pid
sudo tail -100 /var/log/messages
rm /var/run/docker.pid 
dockerd
systemctl restart docker
systemctl status docker.service
docker ps
systemctl status docker.service
systemctl restart docker
journalctl -xe
sudo daemon-reload && sudo systemctl start docker
sudo systemctl daemon-reload
sudo systemctl start docker
systemctl status docker.service
ps axf | grep docker | grep -v grep | awk '{print "kill -9 " $1}' | sudo sh
sudo systemctl daemon-reload
sudo systemctl start docker
systemctl status docker.service
kill -9 16359
dockerd
top
systemctl status docker.service
vim /etc/docker/daemon.json
sudo systemctl daemon-reload
sudo systemctl start docker
docker ps
docker ps -a
history |grep docker
history |grep docker run
history |grep dockerrun
history |grep "docker run"
docker images
vim /etc/docker/daemon.json
systemctl daemon-reload
sudo systemctl daemon-reload
systemctl restart docker
docker ps
docker images
docker run -d -v /container_data/laravel4/:/home/wwwroot/parking-sharing/ -p 8093:8093 -p 62801:80 -p 62802:443 -p 62804:22  --name rryb-sharing 59.110.212.116:5000/pension_operate:v0.0.5
docker pull redis:latest
docker run -itd --name redis --restart=always -p 6379:6379 redis
docker ps
docker pull mysql:5.7
docker run -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.7
docker pull registry
docker run -d -v /edc/images/registry:/var/lib/registry -p 5000:5000 --restart=always --name registry registry
curl http://59.110.212.116:5000/v2/_catalog
docker pull gogs
docker.io/library/mysql:5.7
docker run -d -p 10022:22 -p 10080:3000 --name=gogs --net=backend --restart=always -v /opt/docker/gogs/:/data gogs/gogs
docker ps
docker pull gogs
vim /etc/docker/daemon.json
docker login
docker pull gogs
clear
docker run -d -p 10022:22 -p 10080:3000 --name=gogs --net=backend --restart=always -v /opt/docker/gogs/:/data gogs/gogs
docker images
history | grep gogs
vim /etc/docker/daemon.json
systemctl daemon-reload 
systemctl restart docker
docker ps
docker pull gogs
docker login
docker run -d -p 10022:22 -p 10080:3000 --name=gogs --net=backend --restart=always -v /opt/docker/gogs/:/data gogs/gogs
docker ps
docker ps -a
docker rm gogs 
docker run -d -p 10022:22 -p 10080:3000 --name=gogs --net=backend --restart=always -v /opt/docker/gogs/:/data gogs/gogs
docker pull winstonpro/lnmp
docker pull gogs/gogs
docker run -d -p 10022:22 -p 10080:3000 --name=gogs --net=backend --restart=always -v /opt/docker/gogs/:/data gogs/gogs
docker rm gogs 
docker run -d -p 10022:22 -p 10080:3000 --name=gogs --net=backend --restart=always -v /opt/docker/gogs/:/data gogs/gogs
history | grep 10022
docker exec -ti rryb-sharing /bin/bash
history |grep "docker run"
docker run -d -v /container_data/laravel4/:/home/wwwroot/parking-sharing/ -p 8093:8093 -p 62801:80 -p 62802:443 -p 62804:22  --name rryb-sharing 59.110.212.116:5000/pension_operate:v0.0.5
history |grep "docker run"
docker run -d -v /container_data/laravel3/:/home/wwwroot/subplate-api/ -p 8092:8092 -p 52801:80 -p 52802:443 -p 52804:22  --name rryb-subplate 59.110.212.116:5000/pension_operate:v0.0.5
docker run -d --name showdoc --user=root --privileged=true -p 4999:80 -v /showdoc_data/html:/var/www/html/ star7th/showdoc
docker run -tid --name emq31 -p 1883:1883 -p 8083:8083 -p 8883:8883 -p 8084:8084 -p 18083:18083 emqx/emqx:v3.1.0 
history |grep "docker run"
docker run -d -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8090:8090 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1 59.110.212.116:5000/pension_operate:v0.0.5
docker ps
docker run -p 3306:3306 --name mysql --restart=always -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.7
docker start mysql 
docker exec -ti rryb-subplate /bin/bash
docker iamges
docker images
docker rmi gogs/gogs:latest 
docker ps
docker rmi -f gogs/gogs:latest 
dokcer ps -a
docker ps -a
docker rm gogs 
ls
cd dockerfile/
ls
vim docker-compose.yml 
mkdir gogs-drone
cd gogs-drone/
git clone https://github.com/alicfeng/gogs-drone-docker.git
ls
mv gogs-drone-docker/* ./
ls
rm gogs-drone-docker/
rm -r gogs-drone-docker/
ls
vim docker-compose.yml 
docker images
vim docker-compose.yml 
docker-compose up -d
docker ps
telnet 59.110.212.116 3306
telnet 59.110.212.116 10080
docker exec -ti gogs /bin/bash
docker ps
docker ps
docker rm -f drone-agent 
docker rm -f drone-server 
docker rm -f gogs 
docker ps
docker images
docker run -d -p 10022:22 -p 10080:3000 --name=gogs --net=backend --restart=always -v /opt/docker/gogs/:/data gogs/gogs
ps | grep dockerd
ps -aux| grep dockerd
top
free -m
systemctl restart docker
docker ps
docker ps -a
docker update --restart=always emq31 
docker update --restart=always showdoc 
docker update --restart=always rryb-subplate 
docker update --restart=always rryb-sharing 
docker update --restart=always registry 
docker update --restart=always redis 
docker ps
docker start emq31 
docker start showdoc 
docker start rryb-subplate 
docker start rryb-sharing 
docker ps
sudo docker rm $(sudo docker ps -a -q)
docker ps
clear
docker run -d -p 10022:22 -p 10080:3000 --name=gogs --net=backend --restart=always -v /opt/docker/gogs/:/data gogs/gogs
docker rm gogs 
docker ps
docker ps -a
duso docker run -p 3306:3306 --name mysql -v /usr/local/docker/mysql/conf:/etc/mysql -v /usr/local/docker/mysql/logs:/var/log/mysql -v /usr/local/docker/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.7 --restart=always
docker run -p 3306:3306 --name mysql -v /usr/local/docker/mysql/conf:/etc/mysql -v /usr/local/docker/mysql/logs:/var/log/mysql -v /usr/local/docker/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.7 --restart=always
docker ps
docker ps -a
docker start mysql 
docker ps
docker rm mysql 
docker run -p 3306:3306 --name mysql --restart=always -v /usr/local/docker/mysql/conf:/etc/mysql -v /usr/local/docker/mysql/logs:/var/log/mysql -v /usr/local/docker/mysql/data:/var/lib/mysql  -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.7
docker ps
history 
history |grep mysql
lear
clear
docker run -d -p 10022:22 -p 10080:3000 \ 
--name=gogs --net=backend \ 
-v /opt/docker/gogs/:/data \ 
gogs/gogs
docker run -d -p 10022:22 -p 10080:3000 --name=gogs --net=backend --restart=always -v /opt/docker/gogs/:/data gogs/gogs
docker rm gogs 
docker run -d -p 10022:22 -p 10080:3000 --name=gogs --net=backend --restart=always -v /opt/docker/gogs/:/data gogs/gogs
docker rm gogs 
docker run -d -p 10022:22 -p 10080:3000 --name=gogs --restart=always -v /opt/docker/gogs/:/data gogs/gogs
docker exec -it gogs /bin/bash
rm -rf /opt/docker/gogs/
docker ps
docker rm -f gogs 
docker run -d -p 10022:22 -p 10080:3000 --name=gogs --restart=always -v /opt/docker/gogs/:/data gogs/gogs
history |grep "docker run"
docker run -d -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8090:8090 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1 59.110.212.116:5000/pension_operate:v0.0.5
docker ps
docker start lnmp1 
docker ps
docker start lnmp1 
docker ps -a
docker rm lnmp1 
history |grep lnmp1
docker run -d -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8090:8090 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1 59.110.212.116:5000/pension_operate:v0.0.5
docker ps
docker exec -ti lnmp1 /bin/bash
ls
docker ps
docker start lnmp1 
docker ps
docker rm -f lnmp1 
history |grep "lnmp"
docker run -d -v /container_data/laravel1/:/home/wwwroot/pension_operate/ -p 8090:8090 -p 32801:80 -p 32802:443 -p 32804:22  --name lnmp1 59.110.212.116:5000/pension_operate:v0.0.5
history |grep "lnmp2"
history |grep "docker run"
top
clear
curl http://59.110.212.116:5000/v2/_catalog
history |grep "docker tag"
docker commit -a "david" -m "新增supervisor管理laravel队列，重写规则" lnmp1 pension_operate
docker images
docker tag pension_operate:latest 59.110.212.116:5000/pension_operate:v0.0.6
docker push 59.110.212.116:5000/pension_operate:v0.0.6 
docker commit -a "david" -m "新增定时任务cron" lnmp1 pension_operate
docker images
docker tag pension_operate:latest 59.110.212.116:5000/pension_operate:v0.0.7
docker push 59.110.212.116:5000/pension_operate:v0.0.7
docker images
docker rmi 59.110.212.116:5000/pension_operate:v0.0.7 
docker rmi pension_operate:latest 
docker rmi 59.110.212.116:5000/pension_operate:v0.0.6 
docker ps
history |grep "lnmp"
docker run -d -v /container_data/laravel2/:/home/wwwroot/pension_operate/ -p 8091:8091 -p 42801:80 -p 42802:443 -p 42804:22  --name lnmp2 59.110.212.116:5000/pension_operate:v0.0.7
docker update --restart=always lnmp1
docker update --restart=always lnmp2
docker ps
docker update --restart=always gogs 
docker update --restart=always mysql 
docker update --restart=always emq31 
docker update --restart=always showdoc 
docker exec -it gogs /bin/bash
docker restart gogs 
docker ps
docker exec -it gogs /bin/bash
docker restart gogs 
docker exec -it gogs /bin/bash
docker restart gogs 
docker restart lnmp1 
lsof -i:80
lsof -i
lsof -i:8080
lsof -i:8090
lsof -i
top
clear
docker pull memcached:1.5.16
docker run --name my-memcache -p 11211:11211 -d memcached:1.5.16
docker ps
docker rm -f ea56
docker ps
docker run --name memcache -p 11211:11211 -d memcached:1.5.16 memcached -m 128
telnet 127.0.0.1 11211
telnet pc-bp1w706l4l3419f46.rwlb.rds.aliyuncs.com 3306
docker ps
ls
pwd
cd /home/
ls
mkdir shangmi
la
cd shangmi/
mkdir pub.x7sy.com
mkdir oa.x7sy.com
cd oa.x7sy.com/
ls
cd ../pub.x7sy.com/
ls
ls -al
docker ps
cd /home/shangmi/
cd pub.x7sy.com/
ls
ls -a
cd ../oa.x7sy.com/
ls
cd /home/shangmi/oa.x7sy.com/
ls
ab
ab -n 100 -c 10 http://59.110.212.116:32801/api/material-management/material/list?page=1&page_size=10
clear
ab -n 100 -c 10 http://59.110.212.116:32801/api/material-management/material/list?page=1&page_size=10
ab -n 100 -c 20 http://59.110.212.116:32801/api/material-management/material/list?page=1&page_size=10

redis-cli -h r-bp13e0f868db6144.redis.rds.aliyuncs.com -p 6379 -a DTJFahoYRI8AxKuS
docker ps
docker exec -ti lnmp1
docker exec -ti lnmp1 /bin/bash
history 
ab -n 100 -c 20 http://59.110.212.116:32801/api/material-management/material/list?page=1&page_size=10
history |grep ab
ab -n 100 -c 20 http://59.110.212.116:32801/api/material-management/material/list?page=1&page_size=10
ab -n 100 -c 20 http://59.110.212.116:32801/api/report-management/waiting_charges/list?page=1&page_size=10
ab -n 100 -c 20 http://59.110.212.116:32801/api/material-management/material/list?page=1&page_size=10
docker ps
docker exec -ti rryb-sharing /bin/bash
clear
docker ps
docekr images
docker images
clear
docker ps
docker
docker ps
clear
docker ps
ls
pwd
ls
cd subplate-api/
ls
cd ..
ks
ls
apt insatll neofetch
apt install neofetch
neofetch
apt install ranger
ranger
Qc
clean
apt install nvim
apt install neovim
vim
ls
ll
ranger
apt install fish
chsh
which fish
chsh
chs
chsh
chsh -s /usr/bin/fish
chsh -s $(which bash) $USER
wihich bash
which bash
cat /etc/passwd
cat /etc/passwd  | grep root
nvim /etc/passwd
root
fish
