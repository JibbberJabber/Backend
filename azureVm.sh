#!/bin/bash

chmod 400 ${{ secrets.PROD_KEY }}
#ssh -i ProdVM_key.pem azureuser@20.90.74.161 'cd Backend & sudo docker-compose down & sudo docker-compose up -f --force-recreate -d'

ssh -i ${{ secrets.PROD_KEY }} ${{ secrets.USERNAME }}@${{ secrets.PROD_IP }} 'cd Backend && sudo docker-compose down &&
                                                            sudo docker pull &&
                                                            sudo docker-compose up  -d'