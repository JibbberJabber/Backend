#!/bin/bash

chmod 400 ${{ secrets.PROD_KEY }}
ssh -i ${{ secrets.PROD_KEY }}  ${{ secrets.USERNAME }}@${{ secrets.PROD_IP }}
cd Backend
docker rm -f $(docker ps -qa)
docker rmi -f $(docker images -aq)
sudo docker-compose up --force-recreate -d
