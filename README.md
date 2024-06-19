# db4dev-generator
Create databases for develop

## Use Step-by-step
1. **Data generation**: 
   
   Go to https://generatedata.com/generator and generate a SQL script to initilize the DB.

2. **Put the data in the db directory**:

   Put the data generated into `db/create-database.sql`.

3. **Execute the Docker compose file**:

   The docker compose file execute the bash script to initialize the DB.

4. **DONE!**

   You have your DB up and runnig with your data