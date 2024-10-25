#!/bin/bash
#########################################################
# A script to install odoo
#########################################################


VERSION="17.0"

USER="odoo17"

HOME="/home/$USER"

PORT="8069"

SUPERADMIN_PASSWORD="admin"


echo -e "\n---------- Updating Server ----------"
sudo apt-get update
sudo apt-get upgrade -y

echo -e "\n---------- Installing git ----------"
sudo apt install git

echo -e "\n---------- Installing PostgreSQL ----------"
sudo apt install postgresql postgresql-client


