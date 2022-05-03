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
INSERT INTO pharmacy.Allergies(ID, CONSUMER_ID, ALLERGIES)
VALUES (1, 1, 'Penicillin');

INSERT INTO pharmacy.Allergies(ID, CONSUMER_ID, ALLERGIES)
VALUES (2, 1, 'Aspirin');

INSERT INTO pharmacy.Allergies(ID, CONSUMER_ID, ALLERGIES)
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


--
-- Dumping data for table `Doctor`
--

INSERT INTO `Doctor` (`ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUM`, `HOSPITAL_ID`) VALUES
(1, 'Wade', 'Avery', '1-116-565-1167', 1),
(2, 'Payton', 'Lynn', '2-286-745-2270', 2),
(3, 'Rocco', 'Allington', '0-225-702-3610', 3),
(4, 'Stephanie', 'Redwood', '3-578-584-7264', 4),
(5, 'Enoch', 'Jarrett', '7-260-740-8421', 5),
(6, 'Charlotte', 'Lambert', '5-755-638-5008', 6),
(7, 'Rosie', 'Ainsworth', '0-400-234-3403', 7),
(8, 'Margot', 'Hobbs', '1-575-751-3080', 8),
(9, 'Moira', 'Ianson', '2-508-877-8106', 9),
(10, 'Janice', 'Shaw', '3-513-244-4220', 10);

--
-- Dumping data for table `Drug`
--

INSERT INTO `Drug` (`ID`, `NAME`, `DATE_OF_MANUFACTURE`, `EXPIRATION_DATE`, `DRUGTYPE`, `MANUFACTURER_ID`, `MANUFACTURING_COST`, `DESCRIPTION`) VALUES
(13, 'Neproxane', '2021-10-04', '2022-11-25', 'OxyContin', 51795, 15, 'Best Relief for pain, fever, anxiety, cold'),
(15, 'Ibuprofen', '2020-10-04', '2023-10-04', 'Zoloft', 59354, 12, 'Best Relief for pain, fever, anxiety, cold'),
(16, 'Mexanone', '2021-10-04', '2022-11-25', 'Cosopt', 51795, 9, 'Best for burn, cold, flu, and allergies'),
(19, 'Micoglcium', '2020-10-04', '2024-10-04', 'Ibalgin', 59355, 8, 'Best for burn, cold, flu, and allergies'),
(21, 'Methoxyl500', '2021-10-04', '2024-10-04', 'Claritin', 64683, 16, 'Best for burn, cold, flu, and allergies');

--
-- Dumping data for table `Hospital`
--

INSERT INTO `Hospital` (`ID`, `NAME`, `ADDRESS`, `CITY`, `STATE`, `ZIPCODE`, `PHONE_NUM`, `EMAIL`) VALUES
(13, 'Carbon health', '28 N Almaden Ave #10', 'San Jose', 'CA', 95110, 1085161949, 'ucare@health.com'),
(15, 'SCV Medical Center', '761 E Santa Clara St', 'San Jose', 'CA', 95112, 1084161949, 'svc@health.com'),
(21, 'Regional Hospital', '225 N Jackson Ave', 'San Jose', 'CA', 95116, 156541554, 'RMC@med.com'),
(55, 'O\'Connor Hospital', '105 Forest Ave', 'San Jose', 'CA', 95128, 408256716, 'OC@hospital.com'),
(64, 'McKee Hospital', '2360 McKee Rd', 'San Jose', 'CA', 95116, 1664846515, 'MMC@health.com');

--
-- Dumping data for table `Presecription`
--

INSERT INTO `Presecription` (`RX_NUMBER`, `CONSUMER_ID`, `DRUG_ID`, `DATE_CREATED`, `EXPIRATION_DATE`, `QUANTITY`, `NUMBER_OF_REFILLS`, `ADDITIONAL_INFORMATION`, `DOCTOR_ID`) VALUES
(1520, 16, 19, '2021-07-07', '2023-07-07', 10, 4, '', 3),
(1521, 17, 16, '2021-07-07', '2025-07-07', 12, 5, '', 4),
(1522, 19, 15, '2020-07-07', '2025-05-07', 15, 4, '', 1),
(1523, 18, 16, '2021-07-07', '2024-07-07', 16, 8, '', 4),
(1525, 15, 15, '2021-07-07', '2022-07-07', 18, 5, '', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PHONE_NUM` (`PHONE_NUM`);

--
-- Indexes for table `Drug`
--
ALTER TABLE `Drug`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Hospital`
--
ALTER TABLE `Hospital`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUM`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `Presecription`
--
ALTER TABLE `Presecription`
  ADD PRIMARY KEY (`RX_NUMBER`),
  ADD KEY `DRUG_ID` (`DRUG_ID`),
  ADD KEY `DOCTOR_ID` (`DOCTOR_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Presecription`
--
ALTER TABLE `Presecription`
  ADD CONSTRAINT `DOCTOR_ID` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `Doctor` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `DRUG_ID` FOREIGN KEY (`DRUG_ID`) REFERENCES `Drug` (`ID`) ON UPDATE CASCADE;
COMMIT;
