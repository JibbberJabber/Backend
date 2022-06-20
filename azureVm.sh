#!/bin/bash

${{ secrets.USERNAME }}

chmod 400 ${{ secrets.PROD_KEY }} 
ssh -i ${{ secrets.PROD_KEY }}  ${{ secrets.USERNAME }}@${{ secrets.PROD_IP }} 
'cd Backend && sudo docker-compose down &&
 sudo docker pull &&
 sudo docker-compose up  -d'

