#!/bin/sh

sudo yum update && \
sudo yum install -y docker && \
sudo usermod -a -G docker $USER && \
wget https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) && \
sudo mv docker-compose-$(uname -s)-$(uname -m) /usr/local/bin/docker-compose && \
sudo chmod -v +x /usr/local/bin/docker-compose && \
sudo systemctl enable docker.service && \
sudo systemctl start docker.service && \
echo -e "\nInstalled docker & docker-compose. \nRun 'docker run hello-world' to verify your installation." && \
newgrp docker
