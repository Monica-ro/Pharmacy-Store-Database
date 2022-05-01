# create Consumer table
CREATE Table pharmacy.CONSUMER (
	ID INT NOT NULL PRIMARY KEY,
	FIRST_NAME VARCHAR(30) NOT NULL,
	LAST_NAME VARCHAR(30) NOT NULL,
	AGE INT NOT NULL,
	ADDRESS VARCHAR(50) NOT NULL,
	CITY VARCHAR(30) NOT NULL,
	STATE VARCHAR(2) NOT NULL,
	ZIP_CODE INT NOT NULL, 
	PHONE_NUM VARCHAR(9) UNIQUE NOT NULL,
	EMAIL VARCHAR(50) UNIQUE NOT NULL,
	DOCTOR_ID INT NOT NULL,
	VALID_INSURANCE_ID INT NOT NULL,
);

# email, address, and zip code should be valid
ALTER TABLE pharmacy.CONSUMER
	ADD CONSTRAINT CONSUMER_CK_EMAIL CHECK (EMAIL LIKE '%@%.%');
	
ALTER TABLE pharmacy.CONSUMER
	ADD CONSTRAINT CONSUMER_CK_ADDRESS CHECK ( (ADDRESS NOT LIKE '%P.O.%Box%') OR (ADDRESS NOT LIKE '%P%O%Box%'));
	
ALTER TABLE pharmacy.CONSUMER
	ADD CONSTRAINT CONSUMER_CK_ZIP_CODE CHECK (ZIP_CODE >= 10000 AND ZIP_CODE <= 99999);

# phone number and email must be unique
ALTER TABLE pharmacy.CONSUMER
	ADD CONSTRAINT CONSUMER_UQ_PHONE_NUM UNIQUE (PHONE_NUM);

ALTER TABLE pharmacy.CONSUMER
	ADD CONSTRAINT CONSUMER_UQ_EMAIL UNIQUE (EMAIL);
 
# adding a foreign key for Doctor ID to Consumer
ALTER TABLE pharmacy.CONSUMER
	ADD CONSTRAINT CONSUMER_FK_DOCTOR FOREIGN KEY (DOCTOR_ID) REFERENCES pharmacy.DOCTOR(ID);

# create Insurance table
CREATE Table pharmacy.INSURANCE (
	ID INT NOT NULL PRIMARY KEY,
	NAME VARCHAR(30) NOT NULL,
	ADDRESS VARCHAR(50) NOT NULL,
	CITY VARCHAR(30) NOT NULL,
	STATE VARCHAR(2) NOT NULL,
	ZIP_CODE INT NOT NULL, 
	PHONE_NUM VARCHAR(9) UNIQUE NOT NULL,
	EMAIL VARCHAR(50) UNIQUE NOT NULL,
	WEBSITE VARCHAR(50) NOT NULL
);

# email, address, and zip code should be valid
ALTER TABLE pharmacy.INSURANCE
	ADD CONSTRAINT INSURANCE_CK_EMAIL CHECK (EMAIL LIKE '%@%.%');

ALTER TABLE pharmacy.INSURANCE
	ADD CONSTRAINT INSURANCE_CK_ADDRESS CHECK ( (ADDRESS NOT LIKE '%P.O.%Box%') OR (ADDRESS NOT LIKE '%P%O%Box%'));
 
ALTER TABLE pharmacy.INSURANCE
	ADD CONSTRAINT INSURANCE_CK_ZIPCODE CHECK (ZIP_CODE >= 10000 AND ZIP_CODE <= 99999);
 
 # phone number and email must be unique
ALTER TABLE pharmacy.INSURANCE
	ADD CONSTRAINT INSURANCE_UQ_PHONE_NUM UNIQUE (PHONE_NUM);

ALTER TABLE pharmacy.INSURANCE
	ADD CONSTRAINT INSURANCE_UQ_EMAIL UNIQUE (EMAIL);
 
# create Insurance Member table
CREATE Table pharmacy.INSURANCE_MEMBER (
	ID INT NOT NULL PRIMARY KEY,
	INSURANCE_MEMBER_ID UNIQUE INT,
	INSURANCE_GROUP_NUM INT,
	INSURANCE_PLAN VARCHAR(10),
	INSURANCE_ID INT
);

# add a foreign key for Insurance ID to Insurance Member
ALTER TABLE pharmacy.INSURANCE_MEMBER
	ADD CONSTRAINT INSURANCE_MEMBER_FK_INSURANCE FOREIGN KEY (INSURANCE_ID) REFERENCES pharmacy.INSURANCE(ID);
 
# add a foreign key for Insurance Member ID to Consumer
ALTER TABLE pharmacy.CONSUMER
	ADD CONSTRAINT CONSUMER_FK_VALID_INSURANCE_ID FOREIGN KEY (VALID_INSURANCE_ID) REFERENCES pharmacy.INSURANCE_MEMBER(ID);
 
# create Allergies table
CREATE Table pharmacy.ALLERGIES (
	CONSUMER_ID INT NOT NULL PRIMARY KEY,
	ALLERGIES VARCHAR(40)
);

# add a foreign key for Consumer ID to Allergies
ALTER TABLE pharmacy.ALLERGIES
	ADD CONSTRAINT CONSUMER_FK_CONSUMER_ID FOREIGN KEY (CONSUMER_ID) REFERENCES pharmacy.CONSUMER(ID);
