#!/bin/bash

chmod 400 ProdVM_key.pem
#ssh -i ProdVM_key.pem azureuser@20.90.74.161 'cd Backend & sudo docker-compose down & sudo docker-compose up -f --force-recreate -d'

ssh -i ProdVM_key.pem azureuser@20.90.74.161 'cd Backend && sudo docker-compose down &&
                                                            sudo docker pull
                                                            sudo docker-compose up  -d'