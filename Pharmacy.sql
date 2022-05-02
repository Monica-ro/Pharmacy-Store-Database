# create pharmacy schema
CREATE SCHEMA pharmacy;

## Table structure for table drug

# create Manufacturer table
CREATE Table pharmacy.Manufacturer(
	ID INT NOT NULL PRIMARY KEY,
	NAME VARCHAR(30) NOT NULL,
	ADDRESS VARCHAR(50) NOT NULL,
	CITY VARCHAR(30) NOT NULL,
	STATE VARCHAR(2) NOT NULL,
	ZIP_CODE INT NOT NULL, 
	PHONE_NUM VARCHAR(10) NOT NULL,
	EMAIL VARCHAR(50) NOT NULL
);

# Add constraint: email must include an @ symbol
ALTER TABLE pharmacy.Manufacturer
 ADD CONSTRAINT MANUFACTURER_CK_EMAIL
CHECK (EMAIL LIKE '%@%.%');

# Add constraint: zipcode should range between 10000 and 99999
ALTER TABLE pharmacy.Manufacturer
 ADD CONSTRAINT MANUFACTURER_CK_ZIPCODE
CHECK (ZIP_CODE >= 10000 AND ZIP_CODE <= 99999);

# add unique constraint to email and phone number
ALTER TABLE pharmacy.Manufacturer
 ADD CONSTRAINT MANUFACTURER_UQ_PHONENUM
UNIQUE (PHONE_NUM);

ALTER TABLE pharmacy.Manufacturer
 ADD CONSTRAINT MANUFACTURER_UQ_EMAIL
UNIQUE (EMAIL);

# address should not be a PO box
ALTER TABLE pharmacy.Manufacturer
 ADD CONSTRAINT MANUFACTURER_CK_ADDRESS
CHECK ( (ADDRESS NOT LIKE '%P.O.%Box%') OR (ADDRESS NOT LIKE '%P%O%Box%'));


# create drug id
CREATE TABLE pharmacy.DRUG(
  ID int NOT NULL,
  NAME varchar(30) NOT NULL,
  DATE_OF_MANUFACTURE date NOT NULL,
  EXPIRATION_DATE date NOT NULL,
  DRUGTYPE varchar(20) NOT NULL,
  MANUFACTURER_ID int NOT NULL,
  MANUFACTURING_COST int NOT NULL,
  DESCRIPTION varchar(90) NOT NULL
);

-- Indexes for table drug
--
ALTER TABLE pharmacy.drug
  ADD PRIMARY KEY (ID);
  
# manufacturer id  foreign key
ALTER TABLE pharmacy.DRUG
 ADD CONSTRAINT DRUG_FK_MANUFACTURER_ID
FOREIGN KEY (MANUFACTURER_ID) REFERENCES pharmacy.Manufacturer(ID);

-- Table structure for table hospital

CREATE TABLE pharmacy.Hospital (
  ID int NOT NULL,
  NAME varchar(50) NOT NULL,
  ADDRESS varchar(100) NOT NULL,
  CITY varchar(19) NOT NULL,
  STATE varchar(2) NOT NULL,
  ZIPCODE int NOT NULL,
  PHONE_NUM VARCHAR(10) NOT NULL,
  EMAIL varchar(50) NOT NULL
);

-- Indexes for table hospital
--
ALTER TABLE pharmacy.Hospital
  ADD PRIMARY KEY (ID),
  ADD UNIQUE KEY PHONE_NUM (PHONE_NUM),
  ADD UNIQUE KEY EMAIL (EMAIL);


# create doctor table
CREATE TABLE pharmacy.Doctor (
  ID int NOT NULL,
  FIRST_NAME varchar(30) NOT NULL,
  LAST_NAME varchar(30) NOT NULL,
  PHONE_NUM VARCHAR(10) NOT NULL,
  HOSPITAL_ID INT NOT NULL
); 

-- Indexes for table Doctor
--
ALTER TABLE pharmacy.Doctor
  ADD PRIMARY KEY (ID),
  ADD UNIQUE KEY PHONE_NUM (PHONE_NUM);

# hospital ID foreign key
ALTER TABLE pharmacy.Doctor
 ADD CONSTRAINT DOCTOR_FK_HOSPITAL_ID
FOREIGN KEY (HOSPITAL_ID) REFERENCES pharmacy.Hospital(ID);

# create Staff table
CREATE Table pharmacy.Staff(
	ID INT NOT NULL PRIMARY KEY,
	JOB_TITLE VARCHAR(40) NOT NULL,
	FIRST_NAME VARCHAR(30) NOT NULL,
	LAST_NAME VARCHAR(30) NOT NULL,
	ADDRESS VARCHAR(50) NOT NULL,
	CITY VARCHAR(30) NOT NULL,
	STATE VARCHAR(2) NOT NULL,
	ZIP_CODE INT NOT NULL, 
	PHONE_NUM VARCHAR(10) NOT NULL,
	EMAIL VARCHAR(50) NOT NULL
);

# Add constraint: email must include an @ symbol
ALTER TABLE pharmacy.Staff
 ADD CONSTRAINT STAFF_CK_EMAIL
CHECK (EMAIL LIKE '%@%.%');

# Add constraint: zipcode should range between 10000 and 99999
ALTER TABLE pharmacy.Staff
 ADD CONSTRAINT STAFF_CK_ZIPCODE
CHECK (ZIP_CODE >= 10000 AND ZIP_CODE <= 99999);

# add unique constraint to email and phone number
ALTER TABLE pharmacy.Staff
 ADD CONSTRAINT STAFF_UQ_PHONENUM
UNIQUE (PHONE_NUM);

ALTER TABLE pharmacy.Staff
 ADD CONSTRAINT STAFF_UQ_EMAIL
UNIQUE (EMAIL);

# address should not be a PO box in staff table
ALTER TABLE pharmacy.Staff
 ADD CONSTRAINT STAFF_CK_ADDRESS
CHECK ( (ADDRESS NOT LIKE '%P.O.%Box%') OR (ADDRESS NOT LIKE '%P%O%Box%'));

# create Inventory table
CREATE Table pharmacy.Inventory(
	DRUG_ID INT NOT NULL PRIMARY KEY,
	MANUFACTURER_ID INT NOT NULL,
	QUANTITY INT NOT NULL, 
	LOCATION VARCHAR(30)
);

# add foreign key constraint to manufacturerID 
# from the inventory table
ALTER TABLE pharmacy.Inventory
 ADD CONSTRAINT INVENTORY_FK_MANUFACTURERID
FOREIGN KEY (MANUFACTURER_ID) REFERENCES pharmacy.Manufacturer(ID);

# add foreign key constraint to drugID 
# from the inventory table
ALTER TABLE pharmacy.Inventory
 ADD CONSTRAINT INVENTORY_FK_DRUG_ID
FOREIGN KEY (DRUG_ID) REFERENCES pharmacy.Drug(ID);

# create Order Form table
CREATE Table pharmacy.OrderForm(
	ID INT NOT NULL PRIMARY KEY,
	ORDER_DATE  DATE NOT NULL,
	DRUG_ID  INT NOT NULL,
	MANUFACTURER_ID INT NOT NULL,
	ORDER_QUANTITY INT NOT NULL,
	STAFF_ID INT NOT NULL
);

# add foreign key constraint to
# drugID
ALTER TABLE pharmacy.OrderForm
 ADD CONSTRAINT ORDERFORM_FK_DRUGID
FOREIGN KEY(DRUG_ID) REFERENCES pharmacy.Drug(ID);


# add foreign key constraint to manufacturerID
ALTER TABLE pharmacy.OrderForm
 ADD CONSTRAINT ORDERFORM_FK_MANUFACTURERID
FOREIGN KEY (MANUFACTURER_ID) REFERENCES pharmacy.Manufacturer(ID);

# add foreign key constraint to staffID
ALTER TABLE pharmacy.OrderForm
 ADD CONSTRAINT ORDERFORM_FK_STAFFID
FOREIGN KEY (STAFF_ID) REFERENCES pharmacy.Staff(ID);

# create Consumer table
CREATE Table pharmacy.Consumer (
	ID INT NOT NULL PRIMARY KEY,
	FIRST_NAME VARCHAR(30) NOT NULL,
	LAST_NAME VARCHAR(30) NOT NULL,
	AGE INT NOT NULL,
	ADDRESS VARCHAR(50) NOT NULL,
	CITY VARCHAR(30) NOT NULL,
	STATE VARCHAR(2) NOT NULL,
	ZIP_CODE INT NOT NULL, 
	PHONE_NUM VARCHAR(10) UNIQUE NOT NULL,
	EMAIL VARCHAR(50) UNIQUE NOT NULL,
	DOCTOR_ID INT NOT NULL,
	VALID_INSURANCE_ID INT NOT NULL
);

# email, address, and zip code should be valid
ALTER TABLE pharmacy.Consumer
	ADD CONSTRAINT CONSUMER_CK_EMAIL CHECK (EMAIL LIKE '%@%.%');
	
ALTER TABLE pharmacy.Consumer
	ADD CONSTRAINT CONSUMER_CK_ADDRESS CHECK ( (ADDRESS NOT LIKE '%P.O.%Box%') OR (ADDRESS NOT LIKE '%P%O%Box%'));
	
ALTER TABLE pharmacy.Consumer
	ADD CONSTRAINT CONSUMER_CK_ZIP_CODE CHECK (ZIP_CODE >= 10000 AND ZIP_CODE <= 99999);

# phone number and email must be unique
#ALTER TABLE pharmacy.Consumer
#	ADD CONSTRAINT CONSUMER_UQ_PHONE_NUM UNIQUE (PHONE_NUM);

#ALTER TABLE pharmacy.Consumer
#	ADD CONSTRAINT CONSUMER_UQ_EMAIL UNIQUE (EMAIL);
    
#ALTER TABLE pharmacy.Consumer
#	DROP CONSTRAINT CONSUMER_UQ_EMAIL;
    
#ALTER TABLE pharmacy.Consumer
#	DROP CONSTRAINT CONSUMER_UQ_PHONE_NUM;
 
# adding a foreign key for Doctor ID to Consumer
ALTER TABLE pharmacy.Consumer
	ADD CONSTRAINT CONSUMER_FK_DOCTOR FOREIGN KEY (DOCTOR_ID) REFERENCES pharmacy.Doctor(ID);

# create Insurance table
CREATE Table pharmacy.Insurance (
	ID INT NOT NULL PRIMARY KEY,
	NAME VARCHAR(30) NOT NULL,
	ADDRESS VARCHAR(50) NOT NULL,
	CITY VARCHAR(30) NOT NULL,
	STATE VARCHAR(2) NOT NULL,
	ZIP_CODE INT NOT NULL, 
	PHONE_NUM VARCHAR(10) UNIQUE NOT NULL,
	EMAIL VARCHAR(50) UNIQUE NOT NULL,
	WEBSITE VARCHAR(50) NOT NULL
);

# email, address, and zip code should be valid
ALTER TABLE pharmacy.Insurance
	ADD CONSTRAINT INSURANCE_CK_EMAIL CHECK (EMAIL LIKE '%@%.%');

ALTER TABLE pharmacy.Insurance
	ADD CONSTRAINT INSURANCE_CK_ADDRESS CHECK ( (ADDRESS NOT LIKE '%P.O.%Box%') OR (ADDRESS NOT LIKE '%P%O%Box%'));
 
ALTER TABLE pharmacy.Insurance
	ADD CONSTRAINT INSURANCE_CK_ZIPCODE CHECK (ZIP_CODE >= 10000 AND ZIP_CODE <= 99999);
 
 # phone number and email must be unique
ALTER TABLE pharmacy.Insurance
	ADD CONSTRAINT INSURANCE_UQ_PHONE_NUM UNIQUE (PHONE_NUM);

ALTER TABLE pharmacy.Insurance
	ADD CONSTRAINT INSURANCE_UQ_EMAIL UNIQUE (EMAIL);
 
# create Insurance Member table
CREATE Table pharmacy.Insurance_Member (
	ID INT NOT NULL PRIMARY KEY,
	INSURANCE_MEMBER_ID INT,
	INSURANCE_GROUP_NUM INT,
	INSURANCE_PLAN VARCHAR(10),
	INSURANCE_ID INT
);

# add a unique constraint to Insurance member ID from the Insurance Member table
ALTER TABLE pharmacy.Insurance_Member
	ADD CONSTRAINT INSURANCE_MEMBER_ID_UQ_INSURANCE 
    UNIQUE (INSURANCE_MEMBER_ID);
 
# add a foreign key for Insurance ID to Insurance Member
ALTER TABLE pharmacy.Insurance_Member
	ADD CONSTRAINT INSURANCE_MEMBER_FK_INSURANCE FOREIGN KEY (INSURANCE_ID) REFERENCES pharmacy.Insurance(ID);

# add a foreign key for Insurance ID to Insurance Member
ALTER TABLE pharmacy.Insurance_Member
	ADD CONSTRAINT INSURANCE_MEMBER_FK_INSURANCE FOREIGN KEY (INSURANCE_ID) REFERENCES pharmacy.Insurance(ID);
 
# add a foreign key for Insurance Member ID to Consumer
ALTER TABLE pharmacy.Consumer
	ADD CONSTRAINT CONSUMER_FK_VALID_INSURANCE_ID FOREIGN KEY (VALID_INSURANCE_ID) REFERENCES pharmacy.Insurance_Member(ID);
 
# create Allergies table
CREATE Table pharmacy.Allergies (
	CONSUMER_ID INT NOT NULL PRIMARY KEY,
	ALLERGIES VARCHAR(40)
);

# add a foreign key for Consumer ID to Allergies
ALTER TABLE pharmacy.Allergies
	ADD CONSTRAINT CONSUMER_FK_CONSUMER_ID FOREIGN KEY (CONSUMER_ID) REFERENCES pharmacy.Consumer(ID);

-- Table structure for table Prescription
CREATE TABLE pharmacy.Prescription (
  RX_NUMBER int NOT NULL,
  CONSUMER_ID int NOT NULL,
  DRUG_ID int NOT NULL,
  DATE_CREATED date NOT NULL,
  EXPIRATION_DATE date NOT NULL,
  QUANTITY int NOT NULL,
  NUMBER_OF_REFILLS int NOT NULL,
  ADDITIONAL_INFORMATION varchar(500) NOT NULL,
  DOCTOR_ID int NOT NULL
);

-- Indexes for table Prescription
ALTER TABLE pharmacy.Prescription
  ADD PRIMARY KEY (RX_NUMBER);

# Add doctor id foreign key to prescription
  ALTER TABLE pharmacy.Prescription
  	ADD CONSTRAINT PRESCRIPTION_FK_DOCTOR_ID FOREIGN KEY (DOCTOR_ID) REFERENCES pharmacy.Doctor(ID);
	
# Add consumer id foreign key to prescription
  ALTER TABLE pharmacy.Prescription
  	ADD CONSTRAINT PRESCRIPTION_FK_CONSUMER_ID FOREIGN KEY (CONSUMER_ID) REFERENCES pharmacy.Consumer(ID);


