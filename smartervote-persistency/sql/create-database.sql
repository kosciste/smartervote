-- setup of the database with the psql command line tool:
-- 
-- 1) open console of your choice in the directory this script is located
-- 2) on windows execute following command. this sets the code page to 1252 to handle encoding properly. by default it is set to 437 which is just standard ASCII:
-- $ chcp 1252
-- 3) connect to the database with default postgres super user and enter the password:
-- $ psql -h 127.0.0.1 -U postgres
-- 4) execute the file with following command:
-- $ \i create-database.sql
-- 5) connect to newly created database:
-- $ \c smartervote
-- 6) execute script to create table:
-- $ \i create-tables.sql

-- drop all sessions on smartervote database
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'smartervote'
AND pid <> pg_backend_pid();

-- drop databases that might already exist
DROP DATABASE IF EXISTS smartervote;
DROP USER IF EXISTS smartervote_user;

-- user used by the application
-- https://www.postgresql.org/docs/current/sql-createrole.html
CREATE USER smartervote_user WITH
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    INHERIT
    LOGIN
    NOREPLICATION
    PASSWORD '123456';

-- database
-- https://www.postgresql.org/docs/current/sql-createdatabase.html
CREATE DATABASE smartervote WITH
    OWNER postgres
    ENCODING 'UTF8'
    LC_COLLATE = 'German_Switzerland.1252'
    LC_CTYPE = 'German_Switzerland.1252'
	TABLESPACE pg_default
	CONNECTION LIMIT = -1;