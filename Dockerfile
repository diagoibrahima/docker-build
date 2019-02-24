# DACS
FROM openshift/perl-516-centos7

MAINTAINER Ibrahima DIAGO <el-hadji-ibrahima.diago@idemia.com>

COPY . /dacs

WORKDIR /dacs

# Install JDK & MP and make some cleaning
RUN rpm -i jdk-8u141-linux-x64.rpm

#add java home
ENV JAVA_HOME /usr/java/latest


