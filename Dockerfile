FROM ubuntu
RUN apt-get update -y
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.41/bin/apache-tomcat-9.0.41.tar.gz 
RUN tar zxvf apache-tomcat-9.0.41.tar.gz
RUN cp -Rv apache-tomcat-9.0.41/* /usr/local/tomcat/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
MAINTAINER satish
