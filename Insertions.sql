# CONSUMER INSERTIONS
# adding Sally Brown
INSERT INTO pharmacy.CONSUMER(ID, FIRST_NAME, LAST_NAME, AGE, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, DOCTOR_ID, VALID_INSURANCE_ID)
VALUES (1, 'Sally', 'Brown', 31, '123 Castle Road', 'San Jose', 'CA', 95120, '4086432984', 'sally.mae@gmail.com', 1, 1);

# adding Mark Brown
INSERT INTO pharmacy.CONSUMER(ID, FIRST_NAME, LAST_NAME, AGE, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, DOCTOR_ID, VALID_INSURANCE_ID)
VALUES (2, 'Mark', 'Brown', 30, '123 Castle Road', 'San Jose', 'CA', 95120, '4085520123', 'markbrown@gmail.com', 2, 2);

# adding Harry Potter
INSERT INTO pharmacy.CONSUMER(ID, FIRST_NAME, LAST_NAME, AGE, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, DOCTOR_ID, VALID_INSURANCE_ID)
VALUES (3, 'Harry', 'Potter', 17, '123 Hogwarts Court', 'Omaha', 'NE', 68007, '5129238374', 'harrypotter@hotmail.com', 3, 3);

# adding Percy Jackson
INSERT INTO pharmacy.CONSUMER(ID, FIRST_NAME, LAST_NAME, AGE, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, DOCTOR_ID, VALID_INSURANCE_ID)
VALUES (4, 'Percy', 'Jackson', 14, '456 Camp Halfblood Way', 'Long Island', 'NY', 11101, '7348283992', 'percy.jackson@gmail.com', 2, 4);

# adding Mia Thermopolis
INSERT INTO pharmacy.CONSUMER(ID, FIRST_NAME, LAST_NAME, AGE, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, DOCTOR_ID, VALID_INSURANCE_ID)
VALUES (5, 'Amelia', 'Thermopolis', 18, '911 Twisty Road', 'San Francisco', 'CA', 94016, '4153248954', 'amelia.m.thermopolis@genovia.com', 1, 5);



# INSURANCE INSERTIONS
INSERT INTO INSURANCE(ID, NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, WEBSITE)
VALUES (1, 'UnitedHealthcare', '9900 Bred Rd E', 'Minnetonka', 'MN', 55343, '8005524679', 'contact@uhc.com', 'https://www.uhc.com/')


# STAFF INSERTIONS
INSERT INTO pharmacy.Staff (ID, JOB_TITLE, FIRST_NAME, LAST_NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL) 
VALUES (1, "Pharmacist", "Rohan", "Singh", "1234 Blank Drive", "San Jose", "CA", 95123, "4081234567", "rohan.singh@gmail.com");

INSERT INTO pharmacy.Staff (ID, JOB_TITLE, FIRST_NAME, LAST_NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL) 
VALUES (2, "Pharmacist", "Maria", "Silvan", "1234 Shell Ave", "San Jose", "CA", 95123, "4081234568", "maria.silvan@gmail.com");

INSERT INTO pharmacy.Staff (ID, JOB_TITLE, FIRST_NAME, LAST_NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL) 
VALUES (3, "Pharmacist", "Carisa", "Stewart", "455 Stanford Street", "Palo Alto", "CA", 95236, "4081234569", "carisa.stewart@gmail.com");

INSERT INTO pharmacy.Staff (ID, JOB_TITLE, FIRST_NAME, LAST_NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL) 
VALUES (4, "Pharmacist", "Brandon", "Smith", "6532 Village Drive", "San Jose", "CA", 95124, "4081234570", "brandon.smith@gmail.com");

INSERT INTO pharmacy.Staff (ID, JOB_TITLE, FIRST_NAME, LAST_NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL) 
VALUES (5, "Pharmacist", "Blake", "Nguyen", "539 Blank Drive", "San Jose", "CA", 95123, "4081234571", "blake.nguyen@gmail.com");
