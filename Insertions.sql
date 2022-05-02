# CONSUMER INSERTIONS
# adding Sally Brown
INSERT INTO pharmacy.Consumer(ID, FIRST_NAME, LAST_NAME, AGE, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, DOCTOR_ID, VALID_INSURANCE_ID)
VALUES (1, 'Sally', 'Brown', 31, '123 Castle Road', 'San Jose', 'CA', 95120, '4086432984', 'sally.mae@gmail.com', 1, 1);

# adding Mark Brown
INSERT INTO pharmacy.Consumer(ID, FIRST_NAME, LAST_NAME, AGE, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, DOCTOR_ID, VALID_INSURANCE_ID)
VALUES (2, 'Mark', 'Brown', 30, '123 Castle Road', 'San Jose', 'CA', 95120, '4085520123', 'markbrown@gmail.com', 2, 2);

# adding Harry Potter
INSERT INTO pharmacy.Consumer(ID, FIRST_NAME, LAST_NAME, AGE, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, DOCTOR_ID, VALID_INSURANCE_ID)
VALUES (3, 'Harry', 'Potter', 17, '123 Hogwarts Court', 'Omaha', 'NE', 68007, '5129238374', 'harrypotter@hotmail.com', 3, 3);

# adding Percy Jackson
INSERT INTO pharmacy.Consumer(ID, FIRST_NAME, LAST_NAME, AGE, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, DOCTOR_ID, VALID_INSURANCE_ID)
VALUES (4, 'Percy', 'Jackson', 14, '456 Camp Halfblood Way', 'Long Island', 'NY', 11101, '7348283992', 'percy.jackson@gmail.com', 2, 4);

# adding Mia Thermopolis
INSERT INTO pharmacy.Consumer(ID, FIRST_NAME, LAST_NAME, AGE, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, DOCTOR_ID, VALID_INSURANCE_ID)
VALUES (5, 'Amelia', 'Thermopolis', 18, '911 Twisty Road', 'San Francisco', 'CA', 94016, '4153248954', 'amelia.m.thermopolis@genovia.com', 1, 5);



# INSURANCE INSERTIONS
INSERT INTO pharmacy.Insurance(ID, NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, WEBSITE)
VALUES (1, 'UnitedHealthcare', '9900 Bred Rd E', 'Minnetonka', 'MN', 55343, '8005524679', 'contact@uhc.com', 'https://www.uhc.com/');

INSERT INTO pharmacy.Insurance(ID, NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, WEBSITE)
VALUES (2, 'Allstate Insurance', '145 Kaplan Drive', 'San Francisco', 'CA', 96443, '8005524680', 'contact@allstate.org', 'https://www.allstate.com/');

INSERT INTO pharmacy.Insurance(ID, NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, WEBSITE)
VALUES (3, 'Kaiser Permanente', '123 Medical Circle', 'Oakland', 'CA', 97445, '8005524676', 'contact@kp.org', 'https://www.kp.org/');

INSERT INTO pharmacy.Insurance(ID, NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, WEBSITE)
VALUES (4, 'Geico', '447 Klein Drive', 'Oakland', 'CA', 97445, '8005524677', 'contact@geico.com', 'https://www.geico.com/');

INSERT INTO pharmacy.Insurance(ID, NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL, WEBSITE)
VALUES (5, 'Covered California', '447 Gov Circle', 'Sacramento', 'CA', 93664, '8005524678', 'contact@coveredca.com', 'https://www.coveredca.com/');


# INSURANCE MEMBER INSERTIONS
INSERT INTO pharmacy.Insurance_Member(ID, INSURANCE_MEMBER_ID, INSURANCE_GROUP, INSURANCE_PLAN, INSURANCE_ID)
VALUES (1, 823948242, 204933, '234-23343-94', 1);

INSERT INTO pharmacy.Insurance_Member(ID, INSURANCE_MEMBER_ID, INSURANCE_GROUP, INSURANCE_PLAN, INSURANCE_ID)
VALUES (2, 402483948, 204933, '234-23343-94', 1);

INSERT INTO pharmacy.Insurance_Member(ID, INSURANCE_MEMBER_ID, INSURANCE_GROUP, INSURANCE_PLAN, INSURANCE_ID)
VALUES (3, NULL, NULL, NULL, NULL);

INSERT INTO pharmacy.Insurance_Member(ID, INSURANCE_MEMBER_ID, INSURANCE_GROUP, INSURANCE_PLAN, INSURANCE_ID)
VALUES (4, 284934838, 149429, '523-90235-26', 5);

INSERT INTO pharmacy.Insurance_Member(ID, INSURANCE_MEMBER_ID, INSURANCE_GROUP, INSURANCE_PLAN, INSURANCE_ID)
VALUES (5, 842843848, 001323, '834-24432-46', 3);


# ALLERGIES INSERTIONS
INSERT INTO pharmacy.Allergies(CONSUMER_ID, ALLERGIES)
VALUES (1, 1, 'Penicillin');

INSERT INTO pharmacy.Allergies(CONSUMER_ID, ALLERGIES)
VALUES (2, 1, 'Aspirin');

INSERT INTO pharmacy.Allergies(CONSUMER_ID, ALLERGIES)
VALUES (3, 5, 'Naproxen');


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


# update name data type from manufacturer table
ALTER TABLE pharmacy2.Manufacturer
	MODIFY NAME VARCHAR(70);

# MANUFACTURER INSERTIONS
INSERT INTO pharmacy.Manufacturer (ID, NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL) 
VALUES (1, "Johnson & Johnson", "123 Johnson Drive", "San Francisco", "CA", 94321, "5312234567", "inquiries@jnj.com");

INSERT INTO pharmacy.Manufacturer (ID, NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL) 
VALUES (2, "Pfizer", "123 Pfizer Ave", "Baltimore", "MD", 92493, "5312234568", "inquiries@pfizer.com");

INSERT INTO pharmacy.Manufacturer (ID, NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL) 
VALUES (3, "Roche", "123 Roche Drive", "San Francisco", "CA", 94321, "5312234569", "inquiries@roche.com");

INSERT INTO pharmacy.Manufacturer (ID, NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL) 
VALUES (4, "Novartis", "1234 Novartis Ave", "San Francisco", "CA", 94321, "5312234570", "inquiries@novartis.com");

INSERT INTO pharmacy.Manufacturer (ID, NAME, ADDRESS, CITY, STATE, ZIP_CODE, PHONE_NUM, EMAIL) 
VALUES (5, "AbbVie", "455 Sierra Drive", "San Francisco", "CA", 94321, "5312234567", "inquiries@AbbVie.com");


# order form insertions

INSERT INTO pharmacy.OrderForm (ID, ORDER_DATE, MANUFACTURER_ID, ORDER_QUANTITY, STAFF_ID) 
VALUES (1, "2022-04-15", 2, 1,3);

INSERT INTO pharmacy.OrderForm (ID, ORDER_DATE, MANUFACTURER_ID, ORDER_QUANTITY, STAFF_ID) 
VALUES (2, "2022-04-18", 2, 2,4);

INSERT INTO pharmacy.OrderForm (ID, ORDER_DATE, MANUFACTURER_ID, ORDER_QUANTITY, STAFF_ID) 
VALUES (3, "2022-04-18", 1, 1,4);

INSERT INTO pharmacy.OrderForm (ID, ORDER_DATE, MANUFACTURER_ID, ORDER_QUANTITY, STAFF_ID) 
VALUES (4, "2022-04-20", 5, 1,2);

INSERT INTO pharmacy.OrderForm (ID, ORDER_DATE, MANUFACTURER_ID, ORDER_QUANTITY, STAFF_ID) 
VALUES (5, "2022-04-22", 4, 1,5);




# update inventory variable type
ALTER TABLE pharmacy.Inventory
	MODIFY LOCATION VARCHAR(200);
  
# inventory insertions
INSERT INTO pharmacy.Inventory (DRUG_ID, MANUFACTURER_ID, QUANTITY, LOCATION) 
VALUES (1, 2, 5, "Aisle 1, Cabinet 2");

INSERT INTO pharmacy.Inventory (DRUG_ID, MANUFACTURER_ID, QUANTITY, LOCATION) 
VALUES (3, 4, 100, "Aisle 1, Cabinet 4");

INSERT INTO pharmacy.Inventory (DRUG_ID, MANUFACTURER_ID, QUANTITY, LOCATION) 
VALUES (2, 2, 50, "Aisle 10, Cabinet 3");

INSERT INTO pharmacy.Inventory (DRUG_ID, MANUFACTURER_ID, QUANTITY, LOCATION) 
VALUES (4, 4, 200, "Aisle 3, Cabinet 2");

INSERT INTO pharmacy.Inventory (DRUG_ID, MANUFACTURER_ID, QUANTITY, LOCATION) 
VALUES (5, 2, 200, "Aisle 2, Cabinet 1");

