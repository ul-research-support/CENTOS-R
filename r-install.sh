#!/bin/bash

apt-get update -y
apt-get upgrade -y
sudo sh -c 'echo "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list'
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
apt-get update -y
apt-get install -y r-base
sudo su - -c "R -e \"install.packages('shiny', repos = 'http://cran.rstudio.com/')\""
apt-get -y install libcurl4-gnutls-dev libxml2-dev libssl-dev
sudo su - -c "R -e \"install.packages('devtools', repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('zoo', repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('lubridate', repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('qcc', repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('Hmisc', repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('ggplot2', repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('xtable', repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('redcapAPI', repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('rmarkdown', repos='http://cran.rstudio.com/')\""
sudo apt-get install -y gdebi-core
sudo wget -O shiny-server.deb http://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.5.3.838-amd64.deb
sudo yes | gdebi shiny-server.deb
