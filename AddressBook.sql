CREATE DATABASE AddressBookService;
SHOW DATABASES;
CREATE TABLE`addressbook` AddressBook(
    FirstName VARCHAR(50) NOT NULL PRIMARY KEY,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State VARCHAR(50) NOT NULL,
    Zip INT(20) NOT NULL,
    PhoneNumber INT(20) NOT NULL,
    Email VARCHAR(40) NOT NULL
);
SHOW TABLES;
INSERT INTO AddressBook(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email) VALUES
    ('Pallavi', 'Srivastava', 'EcoAppartment', 'Bangalore', 'KA', '560068', '919919326678', 'pallavi@gmail.com'),
    ('Jiya', 'Srivastava', 'Shivpur','Varanasi', 'UP', '221990', '917398067847', 'jiya@gmail.com'),
    ('Ani', 'Srivastava', 'GautamBudh_Nagar','Gr_noida', 'UP', '221956', '917398345678', 'ani@gmail.com');
    
 UPDATE AddressBook SET City = 'Grnoida' WHERE FirstName = 'Ani';  
 DELETE FROM AddressBook WHERE FirstName = 'Ani'; 
 SELECT * FROM AddressBook WHERE City = 'Varanasi';
 SELECT COUNT(*) FROM AddressBook WHERE City = 'Bangalore' AND State = 'KA';
 SELECT	* FROM AddressBook WHERE City = 'Bangalore' ORDER BY FirstName ASC;
 ALTER TABLE AddressBook ADD AddressBookName VARCHAR(50);
 ALTER TABLE AddressBook ADD AddressBookType VARCHAR(50);	
 UPDATE AddressBook SET addressBookName = 'JiyaAddressBook' WHERE FirstName = 'Jiya';
 UPDATE AddressBook SET addressBookType = 'Family' WHERE FirstName = 'Jiya';
  UPDATE AddressBook SET addressBookName = 'PalAddressBook' WHERE FirstName = 'Pallavi';
 UPDATE AddressBook SET addressBookType = 'Friends' WHERE FirstName = 'Pallavi';
 SELECT COUNT(*) FROM AddressBook WHERE addressBookType = 'Family'; 												
