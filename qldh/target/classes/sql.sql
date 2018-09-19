create database qldh;
/*All User's gets stored in APP_USER table*/
create table qldh.APP_USER (
   id BIGINT NOT NULL AUTO_INCREMENT,
   sso_id VARCHAR(30) NOT NULL,
   password VARCHAR(100) NOT NULL,
   first_name VARCHAR(30) NOT NULL,
   last_name  VARCHAR(30) NOT NULL,
   email VARCHAR(30) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE (sso_id)
);
   
/* USER_PROFILE table contains all possible roles */ 
create table qldh.USER_PROFILE(
   id BIGINT NOT NULL AUTO_INCREMENT,
   type VARCHAR(30) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE (type)
);
   
/* JOIN TABLE for MANY-TO-MANY relationship*/  
CREATE TABLE qldh.APP_USER_USER_PROFILE (
    user_id BIGINT NOT NULL,
    user_profile_id BIGINT NOT NULL,
    PRIMARY KEY (user_id, user_profile_id),
    CONSTRAINT FK_APP_USER FOREIGN KEY (user_id) REFERENCES qldh.APP_USER (id),
    CONSTRAINT FK_USER_PROFILE FOREIGN KEY (user_profile_id) REFERENCES qldh.USER_PROFILE (id)
);
  
/* Populate USER_PROFILE Table */
INSERT INTO qldh.USER_PROFILE(type)
VALUES ('USER');
  
INSERT INTO qldh.USER_PROFILE(type)
VALUES ('ADMIN');
  
INSERT INTO qldh.USER_PROFILE(type)
VALUES ('DBA');
  
  
/* Populate one Admin User which will further create other users for the application using GUI */
INSERT INTO qldh.APP_USER(sso_id, password, first_name, last_name, email)
VALUES ('van-thanh','$2a$10$3Fv.IgpPByYRzpHQ.r7u/.X790s7.oThFJFXMy7nUDnNX9D.cZrz6', 'van-thanh','van-thanh','thanhhv26@gmail.com');
  
  
/* Populate JOIN Table */
INSERT INTO qldh.APP_USER_USER_PROFILE (user_id, user_profile_id)
  SELECT user.id, profile.id FROM qldh.app_user user, qldh.user_profile profile
  where user.sso_id='sam' and profile.type='ADMIN';
 
/* Create persistent_logins Table used to store rememberme related stuff*/
CREATE TABLE qldh.persistent_logins (
    username VARCHAR(64) NOT NULL,
    series VARCHAR(64) NOT NULL,
    token VARCHAR(64) NOT NULL,
    last_used TIMESTAMP NOT NULL,
    PRIMARY KEY (series)
);