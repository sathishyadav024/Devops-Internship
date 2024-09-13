# `Integration and Installation of Medusa`

The project consists of installing postgresql database in kocal and integating it with Medusa

https://github.com/user-attachments/assets/491acb37-d109-4ca2-9690-79b701b6db89


## `Pre-requisites`
Linux server

Node.js v16+

Git

PostgreSQL

## `Installation of PostgreSQL and Medusa_Backend`

Install postgresql and Medusa_Backend with this bash script

```bash
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
```
    ## Run Locally

Clone the project

```bash
  git clone https://github.com/sathishyadav024/Devops-Internship.git
```

----
Go to the project directory

```bash
  cd Devops-Internship
```

Give permissions to the file and Run

```bash
  chmod 744 medusa-backend.sh

  ./medusa-backend.sh
```


## `OR`
## `Installation of Postgresql using shell-script`

```bash
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
```

```bash
Run the script with this command

 ./postgresql.sh
```
## `Next`

Run this commands mannually to setup your Database

```bash
# PostgreSQL by default creates a postgres. Use this command to get into the user(postgres)
sudo -i -u postgres

# Enter this command to use the command line for PostgreSQL databse
psql 

# Set a Password for the postgres-user
ALTER USER postgres PASSWORD 'sathish';

# Create Database
CREATE DATABASE medusa_db;

# Give access of of medusa_db to postgres user
GRANT ALL PRIVILEGES ON DATABASE medusa_db TO postgres;

# use this command to exit from prompt
\q
# to exit from database enter this command
exit
# Go to the pg_hba.conf file to change the ip-address
sudo vim /etc/postgresql/14/main/pg_hba.conf

# Make the ip-address to 0.0.0.0/0 to access by anyone with the credentials
host    all             all             0.0.0.0/0            md5

# Restart the PostgreSQL
sudo systemctl restart PostgreSQL

SUCCESSFULLY INSTALLED AND CONFIGURED THE POSTGRESQL DATABASE

```
## `Next`

Run this commands mannually to setup your Database

```bash
# PostgreSQL by default creates a postgres. Use this command to get into the user(postgres)
sudo -i -u postgres

# Enter this command to use the command line for PostgreSQL databse
psql 

# Set a Password for the postgres-user
ALTER USER postgres PASSWORD 'sathish';

# Create Database
CREATE DATABASE medusa_db;

# Give access of of medusa_db to postgres user
GRANT ALL PRIVILEGES ON DATABASE medusa_db TO postgres;

# use this command to exit from prompt
\q
# to exit from database enter this command
exit
# Go to the pg_hba.conf file to change the ip-address
sudo vim /etc/postgresql/14/main/pg_hba.conf

# Make the ip-address to 0.0.0.0/0 to access by anyone with the credentials
host    all             all             0.0.0.0/0            md5

# Restart the PostgreSQL
sudo systemctl restart PostgreSQL

SUCCESSFULLY INSTALLED AND CONFIGURED THE POSTGRESQL DATABASE

```
## `And`

## `Installation of Medusa-Backend using shell-script`

```bash
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
```

```bash
Run the script with this command

./medusa.sh
```
## `Result`

Successfully installed and integrated the medusa server with PostgreSQL
