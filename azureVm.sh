#!/bin/bash

chmod 400 ${{ secrets.DEV_KEY }}
ssh -i ${{ secrets.DEV_KEY }}  ${{ secrets.USERNAME }}@51.141.54.133
