# create Pharmacy schema
CREATE SCHEMA pharmacy;

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
	PHONE_NUM VARCHAR(9) NOT NULL,
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

# address shouldn't be a PO box in staff table
ALTER TABLE pharmacy.Staff
 ADD CONSTRAINT STAFF_CK_ADDRESS
CHECK ( (ADDRESS NOT LIKE '%P.O.%Box%') OR (ADDRESS NOT LIKE '%P%O%Box%'));

# create Manufacturer table
CREATE Table pharmacy.Manufacturer(
	ID INT NOT NULL PRIMARY KEY,
	NAME VARCHAR(30) NOT NULL,
	ADDRESS VARCHAR(50) NOT NULL,
	CITY VARCHAR(30) NOT NULL,
	STATE VARCHAR(2) NOT NULL,
	ZIP_CODE INT NOT NULL, 
	PHONE_NUM VARCHAR(9) NOT NULL,
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

# address shouldn't be a PO box
ALTER TABLE pharmacy.Manufacturer
 ADD CONSTRAINT MANUFACTURER_CK_ADDRESS
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

# add foreign key constraint to manufacturerID
ALTER TABLE pharmacy.OrderForm
 ADD CONSTRAINT ORDERFORM_FK_MANUFACTURERID
FOREIGN KEY (MANUFACTURER_ID) REFERENCES pharmacy.Manufacturer(ID);

# add foreign key constraint to staffID
ALTER TABLE pharmacy.OrderForm
 ADD CONSTRAINT ORDERFORM_FK_STAFFID
FOREIGN KEY (STAFF_ID) REFERENCES pharmacy.Staff(ID);




