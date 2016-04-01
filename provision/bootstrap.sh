#!/bin/sh

# ==============================================================================
# = project       :- spark-vagrant
# = module        :- bootstrap shell script
# = author        :- sameh kamal
# = description   :- provisioning script of machine with spark
# = preconditions :- runs on ubuntu 14.4.x
# ==============================================================================

# update ubuntu repositories
sudo apt-get update

# download and install oracle jdk manualy
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u73-b02/jdk-8u73-linux-x64.tar.gz
tar xvf jdk-8u73-linux-x64.tar.gz
sudo mv jdk1.8.0_73 /usr/lib/jdk8

# export java home and other env vars for current session
export JAVA_HOME=/usr/lib/jdk8
export PATH=$PATH:$JAVA_HOME/bin
# export java home and other env vars for future sessions
echo "JAVA_HOME=/usr/lib/jdk8"    | sudo tee -a /etc/environment
echo "JDK_HOME=/usr/lib/jdk8"     | sudo tee -a /etc/environment
echo "PATH=$PATH:$JAVA_HOME/bin"  | sudo tee -a /etc/environment

# install spark from binaries
wget http://d3kbcqa49mib13.cloudfront.net/spark-1.6.0-bin-hadoop2.4.tgz
tar  xvf spark-1.6.0-bin-hadoop2.4.tgz
rm   -f  spark-1.6.0-bin-hadoop2.4.tgz
sudo mkdir -p /opt/local/
sudo mv spark-1.6.0-bin-hadoop2.4 /opt/local/spark-1.6.0

# start spark master
/opt/local/spark-1.6.0/sbin/start-master.sh
