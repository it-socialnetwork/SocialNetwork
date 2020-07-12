DROP TABLE IF EXISTS Users ;
CREATE TABLE Users (idUser_Users INT AUTO_INCREMENT NOT NULL,
lastname_Users VARCHAR(255),
firstname_Users VARCHAR(255),
datenaissance_Users VARCHAR(255),
email_Users VARCHAR(255),
password_Users VARCHAR(255),
firstconnection_Users BOOL,
sexe_Users CHAR,
admin_Users BOOL,
PRIMARY KEY (idUser_Users)) ENGINE=InnoDB;

DROP TABLE IF EXISTS listSubject ;
CREATE TABLE listSubject (idListSub_listSubject INT AUTO_INCREMENT NOT NULL,
nameSubject_listSubject VARCHAR(255),
PRIMARY KEY (idListSub_listSubject)) ENGINE=InnoDB;

DROP TABLE IF EXISTS userSubject ;
CREATE TABLE userSubject (idListSub_listSubject **NOT FOUND** AUTO_INCREMENT NOT NULL,
idUser_Users **NOT FOUND** NOT NULL,
PRIMARY KEY (idListSub_listSubject,
 idUser_Users)) ENGINE=InnoDB;

ALTER TABLE userSubject ADD CONSTRAINT FK_userSubject_idListSub_listSubject FOREIGN KEY (idListSub_listSubject) REFERENCES listSubject (idListSub_listSubject);

ALTER TABLE userSubject ADD CONSTRAINT FK_userSubject_idUser_Users FOREIGN KEY (idUser_Users) REFERENCES Users (idUser_Users);
