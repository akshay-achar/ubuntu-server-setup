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

