#!/usr/bin/env bash
#
dpkg -s docker-ce &> /dev/null
if [ $? -eq 0 ]; then
    echo "Docker is installed! No worries mon!"
else
    echo "Docker is not installed! Proceeding with Docker installation "
        $sudo apt-get update
        $sudo curl -fsSL https://get.docker.com -o get-docker.sh
        $sudo sh get-docker.sh
        echo "LLLLLLLLLLLEEEEEEERRRRRRRRRROOOOOOOOOOOOYYYYYYYYYYYYYY
        JJJJJJJJJJEEEEEEEEEENNNNNNNNKKKKKKKKKKIIIIIIIINNNNNNNNSSSSSSS!!!!!!"
        $sudo docker run \
                -u root \
                --rm \
                -d \
                -p 8000:8080 \
                -v jenkins-data:/var/jenkins_home \
                -v /var/run/docker.sock:/var/run/docker.sock \
                --name jenkins \
                jenkinsci/blueocean
fi
#
exit 0
