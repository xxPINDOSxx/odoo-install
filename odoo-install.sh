#!/bin/bash
#########################################################
# A script to install odoo
#########################################################


VERSION="17.0"
USER="odoo17"
HOME="/home/$USER"
PORT="8069"
SUPERADMIN_PASSWORD="admin"
REPO_LINK="https://github.com/OCA/OCB"


echo -e "\n---------- Updating Server ----------"
sudo apt-get update
sudo apt-get upgrade -y

echo -e "\n---------- Installing git ----------"
sudo apt install git

echo -e "\n---------- Cloning chosen odoo repo ----------"
sudo git clone --depth 1 --branch $VERSION $REPO_LINK $HOME/


echo -e "\n---------- Installing Python and dependencies ----------"
sudo apt-get install python3 python3-pip python3-venv

echo -e "\n---------- Installing PostgreSQL ----------"
sudo apt install postgresql postgresql-client


echo -e "\n---------- Creating PostgreSQL user and database ----------"
# -u = Run command as user; in this case "postgres". Alternate: sudo - su postgres -c
# createuser is equivalent to SQL command CREATE ROLE
# createuser -d = The new user will be allowed to create databases. Alternate: --createdb
#            -R = The new user will not be allowed to create new roles. This is the default. Alernate: --no-createrole
#            -S = The new user will not be a superuser. This is the default. Alternate: --no-superuser
sudo -u postgres createuser -d -R -S $USER
# createdb is equivalent to SQL command CREATE DATABASE
#Maybe? createdb $USER


