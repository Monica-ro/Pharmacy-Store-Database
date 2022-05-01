# create Pharmacy schema
CREATE SCHEMA pharmacy;

# create Staff table
CREATE Table pharmacy.Staff(
	ID VARCHAR(9) NOT NULL PRIMARY KEY,
	jobTitle VARCHAR(40) NOT NULL,
	firstName VARCHAR(30) NOT NULL,
	lastName VARCHAR(30) NOT NULL,
	address VARCHAR(50) NOT NULL,
	city VARCHAR(30) NOT NULL,
	state VARCHAR(2) NOT NULL,
	zipCode INT NOT NULL, 
	phoneNumber VARCHAR(9) NOT NULL,
	email VARCHAR(50) NOT NULL
);

# Add constraint: email must include an @ symbol
ALTER TABLE pharmacy.Staff
 ADD CONSTRAINT CHECK_EMAIL_STAFF
CHECK (email LIKE '%@%');

# Add constraint: zipcode should range between 10000 and 99999
ALTER TABLE pharmacy.Staff
 ADD CONSTRAINT CHECK_ZIPCODE_STAFF
CHECK (zipCode >= 10000 AND zipCode <= 99999);

# create Manufacturer table
CREATE Table pharmacy.Manufacturer(
	ID VARCHAR(9) NOT NULL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	address VARCHAR(50) NOT NULL,
	city VARCHAR(30) NOT NULL,
	state VARCHAR(2) NOT NULL,
	zipCode INT NOT NULL, 
	phoneNumber VARCHAR(9) NOT NULL,
	email VARCHAR(50) NOT NULL
);

# Add constraint: email must include an @ symbol
ALTER TABLE pharmacy.Manufacturer
 ADD CONSTRAINT CHECK_EMAIL_MANUFACTURER
CHECK (email LIKE '%@%');

# Add constraint: zipcode should range between 10000 and 99999
ALTER TABLE pharmacy.Manufacturer
 ADD CONSTRAINT CHECK_ZIPCODE_MANUFACTURER
CHECK (zipCode >= 10000 AND zipCode <= 99999);

# create Inventory table
CREATE Table pharmacy.Inventory(
	drugID VARCHAR(9) NOT NULL PRIMARY KEY,
	manufacturerID VARCHAR(9) NOT NULL,
	quantity INT NOT NULL, 
	location VARCHAR(30)
);

# add foreign key constraint to manufacturerID 
# from the inventory table
ALTER TABLE pharmacy.Inventory
 ADD CONSTRAINT INVENTORY_FK_MANUFACTURER
FOREIGN KEY (manufacturerID) REFERENCES pharmacy.Manufacturer(ID);

# add foreign key constraint to drugID 
# from the inventory table

##

# create Order Form table
CREATE Table pharmacy.OrderForm(
	ID VARCHAR(9) NOT NULL PRIMARY KEY,
	orderDate DATE NOT NULL,
	drugID  VARCHAR(9) NOT NULL,
	manufacturerID VARCHAR(9) NOT NULL,
	orderQuantity VARCHAR(9) NOT NULL,
	staffID VARCHAR(9) NOT NULL
);

# add foreign key constraint to
# drugID

# add foreign key constraint to manufacturerID
ALTER TABLE pharmacy.OrderForm
 ADD CONSTRAINT ORDERFORM_FK_MANUFACTURER
FOREIGN KEY (manufacturerID) REFERENCES pharmacy.Manufacturer(ID);

# add foreign key constraint to staffID
ALTER TABLE pharmacy.OrderForm
 ADD CONSTRAINT ORDERFORM_FK_STAFF
FOREIGN KEY (staffID) REFERENCES pharmacy.Staff(ID);


Hello




