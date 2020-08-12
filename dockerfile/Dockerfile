FROM madhush/centos_php72
ENV TZ "Asia/Shanghai"
ENV LANG "en_US.UTF-8"
WORKDIR /home/web
RUN rm -rf ./*
VOLUME ["/root/subplate-api","/home/web/subplate-api"] 
RUN chmod +wr ./runtime
RUN chown nobody ./runtime
RUN mkdir -p ./runtime/output
RUN chmod +wr ./runtime/output
RUN chown nobody ./runtime/output
RUN echo -e '#!/bin/bash\nalias cp=cp\ncd /home/web/config\ncp -f ./app-$APP_ENV.php ./app.php\ncp -f ./database-$APP_ENV.php ./database.php\ncp -f ./crypt-$APP_ENV.php ./crypt.php'> ./start-app.sh
RUN chmod +x start-app.sh
RUN yum install epel-release -y
RUN yum install python36 -y
RUN yum -y install python36-pip
RUN mkdir /root/.pip
RUN echo -e '[global]\nindex-url = https://mirrors.aliyun.com/pypi/simple/\n[install]\ntrusted-host=pypi.tuna.tsinghua.edu.cn'>/root/.pip/pip.conf
RUN pip3.6 install paho-mqtt
RUN pip3.6 install requests
RUN pip3.6 install flask
RUN echo -e '#!/bin/bash\ncd /home/web/py-src/config\ncp -f ./config-$APP_ENV.conf ./config.conf\ncd /home/web/py-src\nnohup python3 ./run.py &'> ./start.sh
RUN chmod +x ./start.sh
RUN chown nobody /home/web/runtime
RUN echo -e "#!/bin/bash\n/home/web/start.sh\n/home/web/start-app.sh\ncp -n /usr/local/nginx/conf/nginx.conf /home/web\ncp -n /usr/local/lib/php.ini /home/web\ncp -n /usr/local/etc/php-fpm.d/www.conf /home/web\nrm -rf /usr/local/etc/php-fpm.d/www.conf\nrm -rf /usr/local/lib/php.ini\nrm -rf /usr/local/nginx/conf/nginx.conf\nln -s /home/web/nginx.conf /usr/local/nginx/conf/\nln -s /home/web/php.ini /usr/local/lib/\nln -s /home/web/www.conf /usr/local/etc/php-fpm.d/\nphp-fpm\nnginx -g 'daemon off;'"> /home/start.sh
RUN chmod +x /home/start.sh
CMD ["/bin/bash","/home/start.sh"]
