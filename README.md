# Real Estate App
Real estate app was created to to manage Real Estate properties.

# Features
- Rails Version: 6.1.3
- Ruby Version: 2.7.2
- MySQL

# Structure
- App
    - controllers: Http actions
        - application_controller.rb
        - real_estates_controller.rb
    - models: Database models.
        - real_estate.rb
- Config
    - routes.rb: Contain http routes.
    - database.yml: Configuration file for the database connection.
    
- Test
    - controllers
        - real_estates_controller_test.rb: Contain the test for action.


# Setting up

1. Import "realestate_db.sql" file to MySQL instance.

2. Set up the params (host, username, password, port) in "database.yml" file in order to set connection with database:
- host: (IP or Host Name server of MySQL) by default "localhost".
- database: (Database Name) by default "realestate_db".
- username: (Username) by default "root".
- password: (Password) by default "1234".
- port: (Mysql Port Connection) by default "3306".

3. Run Rails server executing the command:  
   rails s -e development -p 3000

4. Enter to URL: http://localhost:3000/

5. Run controller tests:
   
   ruby -Itest test/controllers/real_estates_controller_test.rb