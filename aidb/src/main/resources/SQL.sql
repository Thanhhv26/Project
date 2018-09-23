DROP DATABASE QLDH;
CREATE DATABASE QLDH;
/*All User's gets stored in APP_USER table*/
create table QLDH.APP_USER (
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
create table QLDH.USER_PROFILE(
   id BIGINT NOT NULL AUTO_INCREMENT,
   type VARCHAR(30) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE (type)
);
   
/* JOIN TABLE for MANY-TO-MANY relationship*/  
CREATE TABLE QLDH.APP_USER_USER_PROFILE (
    user_id BIGINT NOT NULL,
    user_profile_id BIGINT NOT NULL,
    PRIMARY KEY (user_id, user_profile_id),
    CONSTRAINT FK_APP_USER FOREIGN KEY (user_id) REFERENCES QLDH.APP_USER (id),
    CONSTRAINT FK_USER_PROFILE FOREIGN KEY (user_profile_id) REFERENCES QLDH.USER_PROFILE (id)
);
  
/* Populate USER_PROFILE Table */
INSERT INTO QLDH.USER_PROFILE(type) VALUES ('USER');
  
INSERT INTO QLDH.USER_PROFILE(type) VALUES ('ADMIN');
  
INSERT INTO QLDH.USER_PROFILE(type) VALUES ('DBA');  
  
/* Populate one Admin User which will further create other users for the application using GUI */
INSERT INTO QLDH.APP_USER(sso_id, password, first_name, last_name, email)
VALUES ('van-thanh','$2a$10$Y5ZOL6f8VmuqpaoUK.Yn8ui3g3kaj.r8CyRlJWNHjL4Lzt14dAHi.', 'Thanh','Huynh','thanhhv26@gmail.com');  
  
/* Populate JOIN Table */
INSERT INTO QLDH.APP_USER_USER_PROFILE (user_id, user_profile_id)
  SELECT user.id, profile.id FROM QLDH.app_user user, QLDH.user_profile profile
  where user.sso_id='sam' and profile.type='ADMIN';
 
/* Create persistent_logins Table used to store rememberme related stuff*/
CREATE TABLE QLDH.persistent_logins (
    username VARCHAR(64) NOT NULL,
    series VARCHAR(64) NOT NULL,
    token VARCHAR(64) NOT NULL,
    last_used TIMESTAMP NOT NULL,
    PRIMARY KEY (series)
);