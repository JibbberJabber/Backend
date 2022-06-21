#!/bin/bash
chmod 400 ${{ secrets.DEV_KEY }}
ssh -i ${{ secrets.DEV_KEY }}  ${{ secrets.USERNAME }}@${{ secrets.DEV_IP }} "cd Backend && sudo docker-compose down &&
                                                            sudo docker pull ghcr.io/jibbberjabber/posts-api:master &&
                                                            sudo docker pull ghcr.io/jibbberjabber/folllowing-api:master &&
                                                            sudo docker-compose up  -d"


#ssh -i $KEY  $USERNAME@$IP "cd Backend && sudo docker-compose down &&
#                                                            sudo docker pull ghcr.io/jibbberjabber/posts-api:master &&
#                                                            sudo docker pull ghcr.io/jibbberjabber/folllowing-api:master &&
#                                                            sudo docker-compose up  -d"



# ssh -i SSHvmName.pem azureuser@51.141.54.133 "cd Backend && sudo docker-compose down &&
#                                                            sudo docker pull ghcr.io/jibbberjabber/posts-api:master &&
#                                                            sudo docker pull ghcr.io/jibbberjabber/folllowing-api:master &&
#                                                            sudo docker-compose up  -d"
#
#
