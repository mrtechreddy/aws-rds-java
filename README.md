Java project with integration of Database

Goal: The purpose of this project is to test java application connectivity with AWS RDS(MySQL)

Database Info
Database Name : jwt
src/main/webapp/login.jsp
src/main/webapp/userRegistration.jsp
Steps for creating Schema
CREATE TABLE USER(idint(10) unsigned NOT NULL auto_increment,first_namevarchar(45) NOT NULL,last_namevarchar(45) NOT NULL,emailvarchar(45) NOT NULL,usernamevarchar(45) NOT NULL,passwordvarchar(45) NOT NULL,regdate date NOT NULL, PRIMARY KEY  (id) ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

Steps for building/running this project.
Be in the project directory

mvn package
Copy the artifact i.e war file from target directory to Application Server Webapps directory
