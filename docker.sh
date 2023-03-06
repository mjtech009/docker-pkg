#!/bin/bash -ex
yum update -y
yum install curl wget docker git telnet -y
systemctl start docker
sudo usermod -aG docker $USER
systemctl enable docker 
sudo chmod 777 /var/run/docker.sock
systemctl restart docker
curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
