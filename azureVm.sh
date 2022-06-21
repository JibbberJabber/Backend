#!/bin/bash
chmod 400 $KEY
ssh -i $KEY  $USERNAME@$IP "cd Backend && sudo docker-compose down &&
                                                            sudo docker pull ghcr.io/jibbberjabber/posts-api:master &&
                                                            sudo docker pull ghcr.io/jibbberjabber/folllowing-api:master &&
                                                            sudo docker-compose up  -d"

#chmod 400 SSHvmName.pem
# #ssh -i ${{ secrets.PROD_KEY }}  ${{ secrets.USERNAME }}@${{ secrets.PROD_IP }} "cd Backend && sudo docker-compose down &&
#                                                            sudo docker pull ghcr.io/jibbberjabber/posts-api:master &&
#                                                            sudo docker pull ghcr.io/jibbberjabber/folllowing-api:master &&
#                                                            sudo docker-compose up  -d"


# ssh -i SSHvmName.pem azureuser@51.141.54.133 "cd Backend && sudo docker-compose down &&
#                                                            sudo docker pull ghcr.io/jibbberjabber/posts-api:master &&
#                                                            sudo docker pull ghcr.io/jibbberjabber/folllowing-api:master &&
#                                                            sudo docker-compose up  -d"
#
#
      #ssh -i ${{ secrets.PROD_KEY }}  ${{ secrets.USERNAME }}@${{ secrets.PROD_IP }}
      #cd Backend && sudo docker-compose down
      #sudo docker pull
      #sudo docker-compose up  -d
      #'cd Backend && sudo docker-compose down &&
      # sudo docker pull &&
      # sudo docker-compose up  -d'

      #ssh -i SSHvmName.pem azureuser@51.141.54.133 "mkdir hello2"
