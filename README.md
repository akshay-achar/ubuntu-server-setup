# ubuntu-server-setup
ubuntu Server Setup configuration and installation setup 

##### Following are the setps to create the the EC2 server

* Click on the Launch Instance and select the Ubuntu server from the list.
* Select the instance type
* Add the instance details 
  * For the	 user data setup with apache installed following are the commands 	
    ```
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y apache2
    ```
* Add the Storage details 
* Add the tag details 
* Add the security group details 
* Review the details once and select the server access private key pair and launch it.

#### Note for the Security Group details:
* Inbound rules are the rules for the outside request accessing our server.
* Outbound rules are the rules for our server accessing outside URLs.
* Always only add my IP  in the ssh, http, https in the inbound rules for the initial setup.


#### Note for User data setup while instance creation: 
* The commands should start with bin/bash
* The commands should have -y for install
* The log files will be in the /var/logs/cloud-init-output.log


#### Basic Virtual host setup 
* Apache2 will be installed while creating the server from the user data.
* Create a file index.html in the /var/www/html folder.
* Add a basic contents in the /var/www/html/index.html
* Add the virtual host config details in the /etc/apache2/sites-available folder from virtual-host directory files 
* Restart the apache2 service
* Reference: https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-ubuntu-18-04-quickstart






