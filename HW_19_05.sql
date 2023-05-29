-- TABLE
CREATE TABLE Address (
    id INT PRIMARY KEY,
    street VARCHAR(255),
    id_city INT,
    FOREIGN KEY (id_city) REFERENCES City(id)
);
CREATE TABLE Category (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);
CREATE TABLE City (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    id_region INT,
    FOREIGN KEY (id_region) REFERENCES Region(id)
);
CREATE TABLE Country (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);
CREATE TABLE Delivery (
    id INT PRIMARY KEY,
    id_product INT,
    id_supplier INT,
    price DECIMAL(10, 2),
    quantity INT,
    date_of_delivery DATE,
    FOREIGN KEY (id_product) REFERENCES Product(id),
    FOREIGN KEY (id_supplier) REFERENCES Supplier(id)
);
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
CREATE TABLE Markup (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    percent DECIMAL(10, 2)
);
CREATE TABLE Measurement (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255)
);
CREATE TABLE Producer (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    id_address INT,
    FOREIGN KEY (id_address) REFERENCES Address(id)
);
CREATE TABLE Product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    id_category INT,
    price DECIMAL(10, 2),
    quantity INT,
    id_producer INT,
    id_measurement INT,
    id_markup INT,
    FOREIGN KEY (id_category) REFERENCES Category(id),
    FOREIGN KEY (id_producer) REFERENCES Producer(id),
    FOREIGN KEY (id_measurement) REFERENCES Measurement(id),
    FOREIGN KEY (id_markup) REFERENCES Markup(id)
);
CREATE TABLE Region (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    id_country INT,
    FOREIGN KEY (id_country) REFERENCES Country(id)
);
CREATE TABLE Sale (
    id INT PRIMARY KEY,
    id_product INT,
    price DECIMAL(10, 2),
    quantity INT,
    date_of_sale DATE,
    FOREIGN KEY (id_product) REFERENCES Product(id)
);
CREATE TABLE Supplier (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    id_address INT,
    FOREIGN KEY (id_address) REFERENCES Address(id)
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 