#!/bin/bash

apt-get update -y
apt-get upgrade -y
sudo sh -c 'echo "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list'
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
apt-get update -y
apt-get install -y r-base
apt-get -y install libcurl4-gnutls-dev libxml2-dev libssl-dev
sudo su - -c "R -e \"install.packages('devtools', repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('tableone', repos='http://cran.rstudio.com/')\""
sudo sh -c 'echo "cd /vagrant\nR" >> /home/vagrant/.bashrc'
