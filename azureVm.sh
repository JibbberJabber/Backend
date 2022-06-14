#!/bin/bash

chmod 400 ${{ secrets.DEV_KEY }}
ssh -i ${{ secrets.DEV_KEY }}  ${{ secrets.USERNAME }}@${{ secrets.DEV_IP }}
cd Backend
sudo docker run hello-world
#sudo docker-compose up --force-recreate
