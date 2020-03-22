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

#### New User Creation
* Reference: https://aws.amazon.com/premiumsupport/knowledge-center/new-user-accounts-linux-instance/

#### Basic Virtual host setup 
* Apache2 will be installed while creating the server from the user data.
* Create a file index.html in the /var/www/html folder.
* Add a basic contents in the /var/www/html/index.html
* Add the virtual host config details in the /etc/apache2/sites-available folder from virtual-host directory files 
* Restart the apache2 service
* Reference: https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-ubuntu-18-04-quickstart

#### DNS Setup 
* Reference: https://medium.com/progress-on-ios-development/connecting-an-ec2-instance-with-a-godaddy-domain-e74ff190c233

#### Creating Sub Domain in GoDaddy
* Reference: https://in.godaddy.com/help/create-a-subdomain-4080


#### SSL Certification Generation from LetsEncrypt
* Prerequisite:
     * Virtual host setup should be created for 80 port 
     * DNS should be updated in the Domain Manager and 80 port access should be kept open ( Since for verification for access, letsecnrypt will create a file in our server and access it )
* Commands: 
     ```
     sudo add-apt-repository ppa:certbot/certbot
     sudo apt install python-certbot-apache
     sudo apache2ctl configtest
     sudo systemctl reload apache2
     sudo certbot --apache -d your_domain -d www.your_domain
     ```
* Reference: https://www.digitalocean.com/community/tutorials/how-to-secure-apache-with-let-s-encrypt-on-ubuntu-18-04

* Generating the SSL Certificate via Shell script
    * Download ssl-certificate-generation/certificate-generation.sh file.
    * Make the .sh file as executable from the command sudo chmod +x certificate-generation.sh 
    * Execute the command with the parameter of the domain name (./certificate-generation.sh akshaykarkala.com)

#### Basic Docker Setup
* Docker setup from the shell script from docker 
```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo docker run hello-world 
```

* Docker setup from the shell script from the project 
      * Download the docker/docker-basic-setup.sh 
      * Make the .sh file as executable from the command sudo chmod +x docker-basic-setup.sh 
      * Execute the shell script ./docker-basic-setup.sh 
      * Docker user can be made non root user by running the command sudo usermod -aG docker your-user
      * Docker setup can be validated by executing docker run hello-world command
      



