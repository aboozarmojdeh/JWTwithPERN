CREATE DATABASE jwt;
-- \x on ---> diplay on

-- If you want to generate a UUID value solely based on 
-- random numbers, you can use the uuid_generate_v4() function.
-- uuid datatype: 
-- UUID stands for Universal Unique Identifier defined 
-- by RFC 4122 and other related standards. 
-- A UUID value is 128-bit quantity generated by an algorithm 
-- that make it unique in the known universe using the same algorithm. 
-- The following shows some examples of the UUID values:
-- 40e6215d-b5c6-4896-987c-f30f3678f608
-- 6ecd8c99-4036-403d-bf84-cf8400f67836
-- 3f333df6-90a4-4fda-8dd3-9485d27cee36

-- CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE users(
    user_id uuid PRIMARY KEY DEFAULT 
    uuid_generate_v4(),
    user_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_password VARCHAR(255) NOT NULL
);


INSERT INTO users (user_name,user_email,user_password) VALUES ('Aboozar Mojdeh','aboozar.mojdeh@gmail.com','mypassword');