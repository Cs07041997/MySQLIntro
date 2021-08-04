CREATE DATABASE addressBookService;
SHOW DATABASES;
USE addressBookService;
create Table addressBook (firstname varchar(20) NOT NULL, lastname varchar(13) NOT NULL, adress varchar(40)
						 NOT NULL, city varchar(6) NOT NULL, zip INT(7) NOT NULL, 
                         phonenumber varchar(10) NOT NULL, email varchar(25) NOT NULL);
ALTER Table addressBook DROP COLUMN zip;
ALTER Table addressBook ADD COLUMN zip varchar(7) AFTER state;
INSERT INTO addressBook VALUES ("CHANDAN", "KUMAR", "RAMPUR CHHAPRA BIHAR", "CHHAPRA", "12345",
                               "7221804239", "CHANDANSINGH07041997@GMAIL.COM");
SELECT firstName FROM addressbook WHERE firstName = "CHANDAN";
INSERT INTO addressbook VALUES ("CHANDAN", "KUMAR", "RAMPUR CHHAPRA BIHAR", "CHHAPRA", "12345",
                               "7221804239", "CHANDANSINGH07041997@GMAIL.COM");
ALTER TABLE employee_payroll RENAME COLUMN salary TO basicpay ;
                               
