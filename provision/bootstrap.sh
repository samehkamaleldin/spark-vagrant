#!/bin/sh

# ==============================================================================
# = author        :- sameh kamal
# = description   :- provisioning a machine with spark
# = preconditions :- runs on ubuntu 14.4.x
# ==============================================================================

sudo apt-get update

# install oracle-java8 from ppa
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
sudo apt-get install oracle-java7-set-default

# install spark from binaries
# sudo wget http://d3kbcqa49mib13.cloudfront.net/spark-1.6.0-bin-hadoop2.4.tgz
#sudo tar xvf spark-1.6.0-bin-hadoop2.4.tgz
#sudo mv spark-1.6.0-bin-hadoop2.4 /opt/local/spark-1.6.0

# start spark master
#/opt/local/spark-1.6.0/sbin/start-master.sh
