#!/bin/bash


#Step:2

##Installing Medusa_Backend application

# Install Node.js and npm

set -x # debug mode
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

