#!/usr/bin/env bash

# install apache web server
# sudo apt update -y
# sudo apt install -y apache2

# # start apache and set it to run at boot
# sudo systemctl start apache2
# sudo systemctl enable apache2

# # create a sample index.html file
# sudo echo "<html><body><h1>Hello world , this create using provisioning script by said ait driss </h1></body></html>" > /var/www/html/index.html

# # Restart apace to serve the new index.html file
# sudo systemctl restart apache2
sudo echo "master vm"

sudo apt-get update -y
sudo apt-get install ansible -y