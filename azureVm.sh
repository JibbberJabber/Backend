#!/bin/bash


chmod 400 ${{ secrets.DEV_KEY }}
#ssh -i ${{ secrets.PROD_KEY }}  ${{ secrets.USERNAME }}@${{ secrets.PROD_IP }}
#cd Backend && sudo docker-compose down
#sudo docker pull
#sudo docker-compose up  -d
#'cd Backend && sudo docker-compose down &&
# sudo docker pull &&
# sudo docker-compose up  -d'

ssh -i ${{ secrets.DEV_KEY }} ${{ secrets.USERNAME }}@${{ secrets.DEV_IP }} "cd Backend && sudo docker-compose down &&
                                                            sudo docker pull  &&
                                                            sudo docker-compose up  -d"