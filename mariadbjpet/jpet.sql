create database jpetstore;
create user 'jpetstore'@'localhost' identified by 'jppwd';
grant all privileges on jpetstore.* to 'jpetstore'@'localhost';
