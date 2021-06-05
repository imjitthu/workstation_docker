FROM      centos:7
COPY      mongo.repo /etc/yum.repos.d/mongo.repo      
COPY      catalogue.js .
COPY      users.js .
RUN       yum install mysql -y
RUN       yum install -y mongodb-org
RUN       yum install unzip -y
RUN       unzip shipping.zip

