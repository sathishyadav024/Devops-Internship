# Devops-Internship

## Integrating and running Medusa_Backend Locally: 


- Update the server

sudo apt update

- Install the PostgreSQL

sudo apt install postgresql postgresql-contrib


![alt text](<Screenshot 2024-09-10 211536-1.png>)
![alt text](<Screenshot 2024-09-10 211550.png>)


 Check the status of PostgreSQL

sudo systemctl status Postgresql

![alt text](<Screenshot 2024-09-10 212229.png>)


PostgreSQL by default creates a postgres. Use this command to get into the user(postgres)

sudo -i -u postgres

Enter this command to use the command line for PostgreSQL databse

psql 

Set a Password for the postgres-user

ALTER USER postgres PASSWORD 'sathish';

Create Database

CREATE DATABASE medusa_db;

Give access of of medusa_db to postgres user

GRANT ALL PRIVILEGES ON DATABASE medusa_db TO postgres;

use this command to exit from prompt

\q

![alt text](<Screenshot 2024-09-10 212535.png>)


Go to the pg_hba.conf file to change the ip-address

sudo vim /etc/postgresql/14/main/pg_hba.conf

 Make the ip-address to 0.0.0.0/0 to access by anyone with the credentials

host    all             all             0.0.0.0/0            md5

Restart the PostgreSQL

sudo systemctl restart PostgreSQL

![alt text](<Screenshot 2024-09-10 213001.png>)

### SUCCESSFULLY INSTALLED AND CONFIGURED THE POSTGRESQL DATABAS

Install Node.js and npm

sudo apt install npm

curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -




![alt text](<Screenshot 2024-09-10 213727.png>)

sudo apt install -y nodejs

![alt text](<Screenshot 2024-09-10 213743.png>)

Install medusa-cli

sudo npm install -g @medusajs/medusa-cli
![alt text](<Screenshot 2024-09-10 213846.png>)

 create a directory for medusa backend server

mkdir medusa-backend-server

Go to medusa-backend-server

cd medusa-backend-server

Initialize a new medusa project with this command

medusa new .

![alt text](<Screenshot 2024-09-10 214140.png>)

![alt text](<Screenshot 2024-09-10 214228.png>)

Start the Medusa Server

medusa develop

![alt text](<Screenshot 2024-09-10 214545.png>)


![alt text](<Screenshot 2024-09-10 162541.png>)


# Successfully installed and integrated the medusa server with PostgreSQL



