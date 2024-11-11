CREATE database Techshop

--CREATING A CUSTOMERS TABLE 

CREATE table Customers(CustomerId int primary key, FirstName varchar(20) not null, LastName varchar(20),
Email varchar(20) not null, Phone varchar(10) , Address varchar(20) not null,) 

ALTER table Customers add unique(Email)


ALTER TABLE Customers
ADD OrderCount INT;

INSERT into Customers values(21,'shanmathi','Selvam', 'shan@gmail.com','9876543210','TMC') 
INSERT into Customers values(22,'kiruthika','Anand', 'kiru@gmail.com','9988776655','KVP') 
INSERT into Customers values(23,'Vijaya','Raja', 'vj@gmail.com','5544332211','NGPT') 
INSERT into Customers values(24,'Bairavi','Shankar', 'bai@gmail.com','111222444','KMK') 
INSERT into Customers values(25,'Kavi','Bharathi', 'kavi@gmail.com','776689757','PNM') 
INSERT into Customers values(26,'Abi','Rami', 'abi@gmail.com','9955443675','SVI') 
INSERT into Customers values(27,'Dhakshana','Sekar', 'dhak@gmail.com','0099775359','MDI') 
INSERT into Customers values(28,'Sumi','Susi', 'sumi@gmail.com','8899660044','SKL') 
INSERT into Customers values(29,'Surya','Rajesh', 'Surya@gmail.com','2288443355','RTI') 
INSERT into Customers values(30,'Ram','Ravi', 'ram@gmail.com','5566443322','OOP') 
INSERT into Customers values(31,'Vedha','Mani', 'vedha@gmail.com','9955332211','IIU') 

select * from Customers

--CREATING A PRODUCTS TABLE

CREATE TABLE Products (
    ProductId INT PRIMARY KEY, 
    ProductName VARCHAR(200) NOT NULL, 
    Description VARCHAR(1000) NOT NULL, 

    Price DECIMAL NOT NULL, 
    CategoryId INT,
    foreign key (CategoryId) references Categories(CategoryId)
)


INSERT into Products values(11,'laptop','High performance',75000.00) 
INSERT into Products values(12,'Smartphone','high-resolutiontouch',30000)
INSERT into Products values(43,'Smartwatch','making calls,msg',2000)
INSERT into Products values(35,'Wireless Earbuds','noise-canceling',2500)
INSERT into Products values(36,'Virtual Reality Headset','3D virtual',30000)
INSERT into Products values(37,'Tablet','portable touchscreen ',35000)
INSERT into Products values(38,'Portable Power Bank','battery-powered ',8000)
INSERT into Products values(39,'Bluetooth Speaker','wireless,waterproof',1000)
INSERT into Products values(40,'Smart Home Hub','central control unit',7000)
INSERT into Products values(41,'Drone','unmanned aerial vehicle',9000)
INSERT into Products values(42,'Digital Camera','Digital formatpic ',7500)

alter table Products
add Category varchar(20)

alter table Products
add CategoryId varchar(20)

EXEC sp_rename 'Products.CategoryId', 'Category', 'COLUMN'



delete from Products  where ProductId=32
select * from Products

--CREATING A ORDERS TABLE

CREATE table Orders(OrderId int primary key,CustomerId int , Orderdate date , 
 TotalAmount int,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)) 

 INSERT into Orders values(51,21,'01-11-2024',3000)
 INSERT into Orders values(52,22,'02-11-2024',1000)
 INSERT into Orders values(53,23,'03-11-2024',8000)
 INSERT into Orders values(54,24,'04-11-2024',30000)
 INSERT into Orders values(55,25,'05-11-2024',45000)
 INSERT into Orders values(56,26,'06-11-2024',35000)
 INSERT into Orders values(57,27,'07-11-2024',5000)
 INSERT into Orders values(58,28,'08-11-2024',4000)
 INSERT into Orders values(59,29,'09-11-2024',15000)
 INSERT into Orders values(60,30,'10-11-2024',9000)
 INSERT into Orders values(61,31,'11-11-2024',7500)

 select * from Orders
 
--CREATING A OrderDetails TABLE

 CREATE table OrderDetails(OrderDetailsId int primary key,OrderId int, ProductId int,Quantity int,
 FOREIGN KEY (OrderId) REFERENCES Orders(OrderId),
 FOREIGN KEY (ProductId) REFERENCES Products(ProductId),
) 
  INSERT into OrderDetails values(01,51,11,1)
  INSERT into OrderDetails values(02,52,12,2)
  INSERT into OrderDetails values(03,53,13,1)
  INSERT into OrderDetails values(04,54,31,1)
  INSERT into OrderDetails values(05,55,35,2)
  INSERT into OrderDetails values(06,56,37,1)
  INSERT into OrderDetails values(07,57,38,3)
  INSERT into OrderDetails values(08,58,39,2)
  INSERT into OrderDetails values(09,59,40,1)
  INSERT into OrderDetails values(10,60,42,2)
  INSERT into OrderDetails values(11,61,43,2)

  

  select * from OrderDetails


--CREATING A INVENTORY TABLE

CREATE table Inventory(InventoryId int primary key, ProductId int,QuantityInStock int, LastStockUpdate date not null,
FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
)
 INSERT into Inventory values(71,11,10,'2024-12-27')
 INSERT into Inventory values(72,12,20,'2024-12-28')
 INSERT into Inventory values(73,13,9, '2024-12-29')
 INSERT into Inventory values(74,31,11,'2024-12-30')
 INSERT into Inventory values(75,35,13,'2024-12-31')
 INSERT into Inventory values(76,37,21,'2024-12-26')
 INSERT into Inventory values(77,38,15,'2024-12-25')
 INSERT into Inventory values(78,39,12,'2024-12-24')
 INSERT into Inventory values(79,40,70,'2024-12-23')
 INSERT into Inventory values(90,42,30,'2024-12-22')
 INSERT into Inventory values(88,43,10,'2024-12-21')
 
 SELECT * from Inventory

--CREATING A CATEGORY TABLE 

CREATE TABLE Categories(CategoryId int primary key, CategoryName varchar(20))

EXEC sp_rename 'Categories.CustomerId', 'CategoryId', 'COLUMN'
INSERT into Categories values(1,' category1')
INSERT into Categories values(2,'category2')
INSERT into Categories values(3,'category1')
INSERT into Categories values(4,'category3')
INSERT into Categories values(5,'category2')
INSERT into Categories values(6,'category1')
INSERT into Categories values(7,'category3')
INSERT into Categories values(8,'category2')
INSERT into Categories values(9,'category1')
INSERT into Categories values(10,'category2')
INSERT into Categories values(11,'category3')

select * from  Categories


 --TASK 2
 -- 1.retrieve the names and emails of all customers.

 SELECT  FirstName +' '+LastName as Name ,Email from Customers
 
--2.list all orders with their order dates and corresponding customer names.

 SELECT OrderId, OrderDate, 
    (SELECT FirstName+ ' '+LastName 
     from Customers 
     where Customers.CustomerId = Orders.CustomerId) AS CustomerName
from Orders

--3.insert a new customer record into the "Customers" table. Include customer information such as name, email, and address.

INSERT into Customers values(32,'Sri','Ram','sri@gmail.com','4444444444','SSS')
SELECT * from Customers
SELECT * from Orders

--4.update the prices of all electronic gadgets in the "Products" table by increasing them by 10%.

UPDATE Products SET Price=Price*1.10
SELECT * from Products

--5.delete a specific order and its associated order details from the "Orders" and "OrderDetails" tables. Allow users to input the order ID as a parameter.


DECLARE @OrderId INT = 51;  
DELETE FROM OrderDetails
WHERE OrderId = 51;
DELETE FROM Orders
WHERE OrderId = 51;


SELECT * FROM Orders;
SELECT * FROM OrderDetails;

--6.insert a new order into the "Orders" table. Include the customer ID, order date, and any other necessary information.

INSERT into Orders values(62,32,'2024-12-11',34000)
SELECT * from Orders 

--7.update the contact information (e.g., email and address) of a specific customer in the "Customers" table. Allow users to input the customer ID and new contact information

UPDATE Customers SET Email='dhakshana@gmail.com',Address='EGSPEC' where CustomerId=27

--8.Write an SQL query to recalculate and update the total cost of each order in the "Orders" table based on the prices and quantities in the "OrderDetails" table

UPDATE Orders
SET TotalAmount = (
    SELECT SUM(OD.Quantity * P.Price)
    FROM OrderDetails OD
    JOIN Products P ON OD.ProductId = P.ProductId
    WHERE OD.OrderId = Orders.OrderId
);

select * from Orders


--9.delete all orders and their associated order details for a specific customer from the "Orders" and "OrderDetails" tables. Allow users to input the customer ID as a parameter

DECLARE @CustomerID INT = 22;  


DELETE FROM OrderDetails
WHERE OrderID IN (SELECT OrderID FROM Orders WHERE CustomerID = @CustomerID);


DELETE FROM Orders
WHERE CustomerID = @CustomerID;


SELECT * FROM Orders;
SELECT * FROM OrderDetails;



--10.insert a new electronic gadget product into the "Products" table, including product name, category, price, and any other relevant details.

INSERT into Products values(44,'Modem','platform independent',2500)
SELECT * from Products

--11.update the status of a specific order in the "Orders" table (e.g., from "Pending" to "Shipped"). Allow users to input the order ID and the new status.

ALTER table Orders 
add Orders_Status varchar(20)
UPDATE Orders SET Orders_Status = 'Shipped' WHERE OrderID = 51;
UPDATE Orders SET Orders_Status = 'Pending' WHERE OrderID = 52;
UPDATE Orders SET Orders_Status = 'Shipped' WHERE OrderID = 53;
UPDATE Orders SET Orders_Status = 'Pending' WHERE OrderID = 54;
UPDATE Orders SET Orders_Status = 'Shipped' WHERE OrderID =55;
UPDATE Orders SET Orders_Status = 'Pending' WHERE OrderID = 56;
UPDATE Orders SET Orders_Status = 'Shipped' WHERE OrderID = 57;
UPDATE Orders SET Orders_Status = 'Shipped' WHERE OrderID = 58;
UPDATE Orders SET Orders_Status = 'Pending' WHERE OrderID = 59;
UPDATE Orders SET Orders_Status = 'Shipped' WHERE OrderID = 60;
UPDATE Orders SET Orders_Status = 'Pending' WHERE OrderID = 61;
UPDATE Orders SET Orders_Status = 'Shipped' WHERE OrderID = 62;



-- Update the Status of a specific order
UPDATE Orders
SET Orders_Status = 'Shipped' 
WHERE OrderId = 62; 




use Techshop

--12.calculate and update the number of orders placed by each customer in the "Customers" table based on the data in the "Orders" table.

UPDATE Customers
SET OrderCount = (
    SELECT COUNT(*)
    FROM Orders
    WHERE Orders.CustomerId = Customers.CustomerId
)


select * from  Customers





--TASK-3 

--1. Write an SQL query to retrieve a list of all orders along with customer information (e.g., customer name) for each order.

SELECT 
    Orders.OrderId,
    Orders.Orderdate,
    Orders.TotalAmount,
    Customers.FirstName,
    Customers.LastName,
    Customers.Email,
    Customers.Phone from Orders JOIN Customers ON Orders.CustomerId = Customers.CustomerId





--2. Write an SQL query to find the total revenue generated by each electronic gadget product. Include the product name and the total revenue.

SELECT 
    Products.ProductName,
    SUM(OrderDetails.Quantity * Products.Price) AS TotalRevenue
FROM 
    OrderDetails
JOIN 
    Products ON OrderDetails.ProductId = Products.ProductId
GROUP BY 
    Products.ProductName



--3. Write an SQL query to list all customers who have made at least one purchase. Include their names and contact information.

SELECT 
    Customers.FirstName,
    Customers.LastName,
    Customers.Email,
    Customers.Phone from Customers
JOIN 
    Orders ON Customers.CustomerId = Orders.CustomerId
GROUP BY 
    Customers.CustomerId;

--4. Write an SQL query to find the most popular electronic gadget, which is the one with the highest total quantity ordered. Include the product name and the total quantity ordered.

SELECT 
    P.ProductName,
    SUM(OD.Quantity) AS TotalQuantityOrdered
FROM 
    OrderDetails OD
JOIN 
    Products P ON OD.ProductId = P.ProductId
GROUP BY 
    P.ProductName
ORDER BY 
    TotalQuantityOrdered DESC
--5. Write an SQL query to retrieve a list of electronic gadgets along with their corresponding categories.

SELECT 
    P.ProductName,
    C.CategoryName
FROM 
    Products P
JOIN 
    Categories C ON P.CategoryId = C.CategoryId;


--6. Write an SQL query to calculate the average order value for each customer. Include the customer's name and their average order value.

SELECT 
    c.FirstName + ' ' + c.LastName AS CustomerName,
    AVG(o.TotalAmount) AS AverageOrderValue
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerId = o.CustomerId
GROUP BY 
    c.CustomerId, c.FirstName, c.LastName;
--7. Write an SQL query to find the order with the highest total revenue. Include the order ID, customer information, and the total revenue.

SELECT 
    o.OrderId,
    c.FirstName + ' ' + c.LastName AS CustomerName,
    c.Email,
    c.Phone,
    o.TotalAmount AS TotalRevenue
FROM 
    Orders o
JOIN 
    Customers c ON o.CustomerId = c.CustomerId
ORDER BY 
    o.TotalAmount DESC
--8. Write an SQL query to list electronic gadgets and the number of times each product has been ordered.
SELECT 
    Products.ProductName,
    COUNT(OrderDetails.OrderDetailsId) AS TimesOrdered
FROM 
    Products
JOIN 
    OrderDetails ON Products.ProductId = OrderDetails.ProductId
GROUP BY 
    Products.ProductName;

--9. Write an SQL query to find customers who have purchased a specific electronic gadget product. Allow users to input the product name as a parameter.

--DECLARE laptop VARCHAR(100) = 'legion lap';

SELECT 
    C.CustomerId,
    C.FirstName,
    C.LastName,
    C.Email
FROM 
    Customers C
JOIN 
    Orders O ON C.CustomerId = O.CustomerId
JOIN 
    OrderDetails OD ON O.OrderId = OD.OrderId
JOIN 
    Products P ON OD.ProductId = P.ProductId
WHERE 
    P.ProductName = ProductName

--10. Write an SQL query to calculate the total revenue generated by all orders placed within a specific time period. Allow users to input the start and end dates as parameters.

SELECT SUM(TotalAmount) AS TotalRevenue FROM Orders WHERE Orderdate BETWEEN '2024-01-01' AND '2024-12-31'


--TASK-4


--1. Write an SQL query to find out which customers have not placed any orders.
select * from Orders
select * from OrderDetails 
select * from Customers
SELECT 
    C.CustomerId,
    C.FirstName,
    C.LastName
FROM 
    Customers C
LEFT JOIN 
    Orders O ON C.CustomerId = O.CustomerId
WHERE 
    O.OrderId IS NULL;



--2. Write an SQL query to find the total number of products available for sale. 
SELECT COUNT(*) AS TotalProducts FROM Products

--3. Write an SQL query to calculate the total revenue generated by TechShop. 

SELECT 
    SUM(TotalAmount) AS TotalRevenue
FROM 
    Orders;

--4. Write an SQL query to calculate the average quantity ordered for products in a specific category. Allow users to input the category name as a parameter.
SELECT 
    AVG(OrderDetails.Quantity) AS AverageQuantityOrdered
FROM 
    OrderDetails
WHERE 
    OrderDetails.ProductId IN (SELECT ProductId FROM Products WHERE Category = 'high class');


--5. Write an SQL query to calculate the total revenue generated by a specific customer. Allow users to input the customer ID as a parameter.

SELECT 
    C.FirstName,
    C.LastName,
    SUM(O.TotalAmount) AS TotalRevenue
FROM 
    Customers C
JOIN 
    Orders O ON C.CustomerId = O.CustomerId
WHERE 
    C.CustomerId = 21
GROUP BY 
    C.FirstName, C.LastName;

--6. Write an SQL query to find the customers who have placed the most orders. List their names and the number of orders they've placed.

SELECT 
    C.FirstName +' '+
    C.LastName as Name,
    COUNT(O.OrderId) AS OrderCount
FROM 
    Customers C
JOIN 
    Orders O ON C.CustomerId = O.CustomerId
GROUP BY 
    C.FirstName, C.LastName
ORDER BY 
    OrderCount DESC;

--7. Write an SQL query to find the most popular product category, which is the one with the highest total quantity ordered across all orders.

SELECT p.Category, SUM(od.Quantity) AS TotalQuantityOrdered
FROM Products p
JOIN OrderDetails od ON p.ProductId = od.ProductId
GROUP BY p.Category
ORDER BY TotalQuantityOrdered DESC

--8. Write an SQL query to find the customer who has spent the most money (highest total revenue) on electronic gadgets. List their name and total spending.

SELECT c.FirstName+' '+ c.LastName as Name, SUM(od.Quantity * p.Price) AS TotalSpending
FROM Customers c
JOIN Orders o ON c.CustomerId = o.CustomerId
JOIN OrderDetails od ON o.OrderId = od.OrderId
JOIN Products p ON od.ProductId = p.ProductId
GROUP BY c.CustomerId, c.FirstName, c.LastName
ORDER BY TotalSpending DESC



--9. Write an SQL query to calculate the average order value (total revenue divided by the number of orders) for all customers
SELECT SUM(TotalAmount) / COUNT(OrderId) AS AverageOrderValue FROM Orders;

--10. Write an SQL query to find the total number of orders placed by each customer and list their names along with the order count 

SELECT c.FirstName, c.LastName, COUNT(o.OrderId) AS OrderCount
FROM Customers c
JOIN Orders o ON c.CustomerId = o.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName











