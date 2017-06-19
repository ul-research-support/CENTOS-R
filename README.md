# vagrant-r
Vagrant box that installs Shiny Server and relevant R packages

*Note: To run this Vagrant box, you will need [Vagrant](https://www.vagrantup.com/downloads.html) and [VirtualBox](https://www.virtualbox.org/wiki/Downloads)*

##### Running Vagrant-R

- Download the vagrant-r master zip file and extract it to your computer

- Navigate to your project root on your terminal or command prompt and run `vagrant up`

- Vagrant will create an Ubuntu environment, install and configure shiny-server, and install necessary R packages

After the process ends, navigate to http://localhost:3838 and view your Shiny Server applications.
