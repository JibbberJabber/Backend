#!/bin/bash

chmod 400 ${{ secrets.PROD_KEY }}
ssh -i ${{ secrets.PROD_KEY }}  ${{ secrets.USERNAME }}@${{ secrets.PROD_IP }}
cd Backend
sudo docker run hello-world
#sudo docker-compose up --force-recreate
