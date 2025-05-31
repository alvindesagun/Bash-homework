#!/bin/bash

function k-pop() {
	sudo groupadd blackpink
	for user in {jenny,rose,lisa,jisoo}
	do
		sudo useradd $user
		sudo usermod -aG blackpink $user
	done
	tail -4 /etc/passwd > verify-kpop
}

function wordpress() {
	sudo dnf install -y httpd php php-mysqli mariadb105
	wget https://wordpress.org/latest.tar.gz
	tar -zxf latest.tar.gz
	sudo mv wordpress/* /var/www/html/
	sudo chown -R apache:apache /var/www/html
	sudo chmod -R 755 /var/www/html
	sudo systemctl enable httpd
	sudo systemctl start httpd
	curl -v http://localhost > verify-wordpress 2>&1
}

function binary() {
	sudo yum install -y tree yum-utils
	sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
	sudo yum install -y terraform
	which tree > verify-binary
	terraform -version >> verify-binary
}


k-pop
wordpress
binary

