#!/bin/bash

. stop_docker.sh
sudo docker restart db
sudo docker restart back
sudo docker restart front-dev
sudo docker restart front-prod
sudo docker restart phpmyadmin
sudo docker restart jenkins

sudo chmod 666 /var/run/docker.sock
