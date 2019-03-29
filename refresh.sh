#!/bin/bash
git pull https://github.com/zbay/chartman 
sudo docker pull zbayindustries/chartman_nest 
sudo docker pull zbayindustries/chartman_frontend
echo y | sudo docker container prune
echo y | sudo docker image prune
sudo docker-compose up & disown