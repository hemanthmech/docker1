FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade \
    && apt-get -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat
RUN apt install wget -y
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.60/bin/apache-tomcat-9.0.60.tar.gz.sha512
RUN cd /tmp && tar xvfz tomcat-9.0.60.tar.gz \
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/startup.sh"."run"]
