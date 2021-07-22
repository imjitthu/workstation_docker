FROM      centos:7
COPY      mongo.repo /etc/yum.repos.d/mongo.repo  
WORKDIR   /tmp    
COPY      catalogue.js .
COPY      users.js .
COPY      shipping.zip .
RUN       yum install unzip
RUN       unzip shipping.zip      
RUN       yum install mysql -y
RUN       yum install -y mongodb-org

