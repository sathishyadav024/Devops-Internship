#!/bin/bash


        ## Author: Gurka Sathish
        ## Date  : 10-09-2024
        ## company: PearlThoughts
#step:1

# Installing PostgreSQL database on ubuntu
set -x
# Update the server
sudo apt update

# Install the PostgreSQL
sudo apt install postgresql postgresql-contrib

# Start the PostgreSQL if it is not started
sudo systemctl start postgresql

# Check the status of PostgreSQL
sudo systemctl status Postgresql

#Step:2

##Installing Medusa_Backend application

# Install Node.js and npm

sudo apt install npm
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs


# Install medusa-cli
sudo npm install -g @medusajs/medusa-cli

# create a directory for medusa backend server
mkdir medusa-backend-server

# Go to medusa-backend-server
cd medusa-backend-server

# Step 5: Create admin user
# Replace with your desired admin email and password
ADMIN_EMAIL="sathishgurka@gmail.com"
ADMIN_PASSWORD="sathish024"

echo "Creating admin user..."
medusa user -e $ADMIN_EMAIL -p $ADMIN_PASSWORD

echo "Admin user created with email: $ADMIN_EMAIL"
# Initialize a new medusa project with this command
medusa new .

# Run medusa migrations
medusa migrations run

#Start the Medusa Server
medusa develop
