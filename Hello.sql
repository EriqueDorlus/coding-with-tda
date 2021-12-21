CREATE DATABASE Commerce;

use Commerce;
CREATE TABLE Products (
Id integer,
Descdription text,
Sku text,
SupplierId integer,
Category Integer,
Quantity Integer,
UnitPrice decimal,
SupplierProductId text );
ALTER TABLE Products
ADD FOREIGN KEY (SupplierId) REFERENCES Suppliers(Id);

ALTER TABLE ProductCategories
ADD PRIMARY KEY (Id);

ALTER TABLE ProductCategories
ADD FOREIGN KEY (Id) REFERENCES Products(Id);


CREATE TABLE Suppliers (
Id Integer,
Name Text,
Address Text,
Phone Text);

CREATE TABLE Customers (
Id Integer,
Name Text,
Address text,
Email Text,
Phone Text);

ALTER TABLE Custumers
ADD PRIMARY KEY (Id);

ALTER TABLE Customers
ADD FOREIGN KEY (Id) REFERENCES Orders(Id);



CREATE TABLE Orders (
Id Integer,
OrderDate datetime,
DeliveryDat datetime,
CustomerId Integer,
TotalPrice decimal);

ALTER TABLE Orders
DROP COLUMN DeliveryDat;

ALTER TABLE Orders
ADD COLUMN DiveryDate datetime;
 
 ALTER TABLE Orders
DROP COLUMN DiveryDate;


ALTER TABLE Orders
ADD COLUMN DeliveryDate datetime;
  
 CREATE TABLE ProductCategories (
 Id Integer,
 Name Text);
 
 CREATE TABLE OrderItems (
 Id int NOT NULL,
 ProductId int NOT NULL,
 OrderId int NOT NULL,
 QTY decimal,
 PRIMARY KEY (Id),
 FOREIGN KEY (ProductId) REFERENCES Products(Id),
 FOREIGN KEY (OrderId) REFERENCES Orders(Id)
 );
 
 ALTER TABLE Orders
 ADD PRIMARY KEY (Id);
 
 ALTER TABLE Products
 ADD PRIMARY KEY (Id); 
 
 AlTER TABLE Suppliers
 ADD PRIMARY KEY (Id);
 
 
 INSERT INTO Suppliers
 VALUES (1, "My Favorite Supplier", "Boca Raton, FL", "305-305-3055");
 SELECt * 
 FROM Suppliers;
 SELECT phone
 FROM Suppliers 