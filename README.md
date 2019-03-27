# jenkinsinstaller
basic bash scripts to install Docker and Jenkins

OS Reqs: Ubuntu 16.04LTS or 18.04LTS

Environments tested so far: AWS, GCP, Virtual Box

High level overview:

I want to install Jenkins onto a Linux server, i'm targeting Ubuntu 16.04LTS , i've also tested it on Ubuntu 18.04LTS, either are fine.

I need to install Jenkins in an automated way.

The automation, if run again should not effect the existing instantiation (instance) that the automation just created.

Jenkins needs to be listening on port 8000.



Instructions:

Download script 

place script into /usr/local/bin

Make executable ( sudo chmod a+x  filename)

run script as sudo

command line should give you some on going feedback, it should exit gracefully.

to verify that container is started you can 'sudo docker container ls'

If you see the container is running, navigate in browser to http://localhost:8000 or http://yourserversip:8000 , you should see a Jenkins getting started screen. If running in cloud env, you obviously will want to open those ports in your firewall/etc.

If you execute the script a second time, it should not redeploy, nor tear down existing Docker or contiainer.
