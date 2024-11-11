use Book_Store
-- CREATE A TABLE WITH ATTRIBUTES

CREATE table Book(ISBN int primary key,Title varchar(30) not null, Genre varchar(30) not null,
PublicationDate varchar(20) not null,price decimal not null, Authorid int 
FOREIGN KEY (Authorid) references Author(Authorid) );

CREATE table Author(Authorid int primary key,Authorname varchar(30) not null, )

CREATE table Publisher(PublisherId int primary key,Publishername varchar(20) not null, PublisherAddress varchar(20), PublisherContact int) 
alter table Publisher 
alter column PublisherContact varchar(20)

CREATE table Users(UserId int primary key,Email varchar(20) not null, Contact varchar(20)) 

CREATE table OrderTable(OrderId int primary key,OrderDate date,TotalAmount decimal not null, Status varchar(20) not null)

alter table OrderTable 
alter column OrderDate varchar(20)




CREATE table OrderDetails(orderDetailsId int primary key,OrderId int,ISBN int,price decimal,No_of_Products int,
FOREIGN KEY (OrderId) REFERENCES OrderTable(OrderId),
FOREIGN KEY (ISBN) REFERENCES Book(ISBN),)

alter table OrderDetails
add No_of_Products int 
-- Example entries
INSERT INTO OrderDetails (orderDetailsId, OrderId, ISBN, price, No_of_Products) VALUES (1, 1, 1111, 100.00, 3);
INSERT INTO OrderDetails (orderDetailsId, OrderId, ISBN, price, No_of_Products) VALUES (2, 1, 2222, 110.00, 2);
INSERT INTO OrderDetails (orderDetailsId, OrderId, ISBN, price, No_of_Products) VALUES (3, 2, 4444, 130.00, 4);
INSERT INTO OrderDetails (orderDetailsId, OrderId, ISBN, price, No_of_Products) VALUES (4, 3, 5555, 180.00, 1);
INSERT INTO OrderDetails (orderDetailsId, OrderId, ISBN, price, No_of_Products) VALUES (5, 3, 6666, 80.00, 5);



alter table OrderDetails
add No_of_Products int 

select * from OrderDetails




--INSERT VALUES INTO TABLES 

INSERT into Book values(1111,'Wings of fire','Motivational','27-7-2006',100.00)
INSERT into Book values(2222,'The Alchemist','Novel','09-1-1999',110.00)
INSERT into Book values(4444,'The White Tiger','Interesting story','18-8-2003',130.00)
INSERT into Book values(5555,'Gitanjali',' Patriotic','23-4-2005',180.00)
INSERT into Book values(6666,'Gravitation','Science','27-12-2005',80.00)
INSERT into Book values(7777,'Thirukkural','Literature','23-4-2005',133.00)
INSERT into Book values(8888,'AI',' Technology','23-4-2005',115.00)
INSERT into Book values(9999,'The south pole','Science','23-4-2005',118.00)
INSERT into Book values(0000,'Data Analytics','Technology','23-4-2005',150.00)

Update Book set Authorid=77 where ISBN=1111
Update Book set Authorid=78 where ISBN=2222
Update Book set Authorid=79 where ISBN=4444
Update Book set Authorid=80 where ISBN=5555
Update Book set Authorid=81 where ISBN=6666
Update Book set Authorid=82 where ISBN=7777
Update Book set Authorid=83 where ISBN=8888
Update Book set Authorid=84 where ISBN=9999
Update Book set Authorid=85 where ISBN=0000


update Book SET Genre='Novel' where ISBN=2222
update Book SET Genre='Thriller' where ISBN=4444
update Book SET Genre='Patriotic' where ISBN=5555

select * from Book

INSERT into Author values(77,'Dr.Apj')
INSERT into Author values(78,'Paulo Coelho')
INSERT into Author values(79,'Aravind Adiga')
INSERT into Author values(80,'Rabindranath Tagore')

select * from Book
select * from Author

INSERT into Publisher values(001,'shanmathi','ssss','9876543210')
INSERT into Publisher values(002,'kiruthi','ssss','9873546709')
INSERT into Publisher values(003,'karthika','ssss','9922334455')
INSERT into Publisher values(004,'vijaya','ssss','9944551144')

update Publisher SET PublisherAddress='TTTT' where PublisherId=002 
update Publisher SET PublisherAddress='UUUU' where PublisherId=003 
update Publisher SET PublisherAddress='VVVV' where PublisherId=004 

alter table Publisher 
drop column City

select * from Publisher

INSERT into Users values(11,'agc@gmail.com','8888888888')
INSERT into Users values(22,'mji@gmail.com','7777777777')
INSERT into Users values(33,'dfr@gmail.com','0000000000')
INSERT into Users values(44,'msd@gmail.com','3333333333')
INSERT into Users values(55,'kkk@gmail.com','4444444444')

alter table Users
add City varchar(20)

UPDATE Users SET City = 'Bangalore' WHERE Userid = 11;
UPDATE Users SET City = 'Chennai' WHERE Userid = 22;
UPDATE Users SET City = 'Coimbatore' WHERE Userid = 33;
UPDATE Users SET City = 'Pune' WHERE Userid = 44;
UPDATE Users SET City = 'Bangalore' WHERE Userid = 55;



select * from Users

INSERT into OrderTable values(01,'04-11-2024',3000.0,'delivererd')
INSERT into OrderTable values(02,'30-11-2024',4000.0,'not yet delivererd')
INSERT into OrderTable values(03,'06-11-2024',5000.0,'delivered shortly')
INSERT into OrderTable values(04,'05-11-2024',6000.0,'just now delivererd')

update OrderTable SET  OrderId=0001 where OrderId=1
update OrderTable SET  OrderId=0002 where OrderId=2
update OrderTable SET  OrderId=0003 where OrderId=3
update OrderTable SET  OrderId=0004 where OrderId=4

select * from OrderTable

INSERT into OrderDetails values( 1, 1, 1111, 100.00,1)
INSERT into OrderDetails values(2, 1, 2222, 100.00,1)
INSERT into OrderDetails values(3, 2, 3333, 150.00,2)
INSERT into OrderDetails values(4, 3, 1111, 200.00,2) 

CREATE TABLE Author_Book (
    AuthorID INT,
    ISBN INT,
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);

CREATE TABLE Sales (
    ID INT,
    ISBN INT,
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);


INSERT INTO Author_Book VALUES (77, 1111);  
INSERT INTO Author_Book VALUES (78, 2222);  
INSERT INTO Author_Book VALUES (79, 4444);  
INSERT INTO Author_Book VALUES (80, 5555);  
INSERT INTO Author_Book VALUES (77, 6666); 

select * from Author_Book
select * from OrderDetails

--PRACTICE QUERIES (05/11/24) 
--1.list all books where Price is greater than 20.

SELECT * from Book where Price>20

--2.List all books where PublisherID is 2

SELECT* from Publisher where PublisherId=2 

--3.Find all orders where Status is "Not yet delivered"

SELECT * from OrderTable where Status='not yet delivererd'

--4.Change the price of the book with ISBN = your choice  to 300

UPDATE Book SET Price=300 where ISBN=444

--5Increase the price of all books in the "Technology" genre by 10%

UPDATE Book SET Price=Price*1.10 where Genre='Motivational'
SELECT * from Book

--6.DELETE FROM Book WHERE ISBN = Your choice 

Delete  from Book where ISBN=4444

--7.Get details of books published on or after January 1, 2022 
SELECT * 
FROM Book
WHERE PublicationDate >= '2022-01-01';



--8.List all books where the genre is not "Novel"

SELECT * from Book where Genre!='Novel'


--9.List all customers with contact numbers that are not NULL.

SELECT * from Users where Contact is not null


--TASK (07/11/24) 

 --1.Count the total number of books in the bookstore.

SELECT count(ISBN) from Book where Title is not null

--2.Find the average price of all books in the "Technology" genre.

SELECT AVG(price) AS AvgPrice
FROM Book
WHERE Genre = 'Technology';



--3.Get the total revenue generated from all orders.

SELECT SUM(TotalAmount) AS TotalRevenue
FROM OrderTable;


--4.Find the minimum and maximum price of books in the "Fiction" genre

SELECT MIN(price) AS MinPrice, MAX(price) AS MaxPrice
FROM Book
WHERE Genre = 'Fiction';


--5.Count the number of orders for each status (Pending, Shipped, Delivered)

SELECT Status, COUNT(*) AS OrderCount
FROM OrderTable
GROUP BY Status;


--6.Get the month when each order was placed

SELECT OrderId, DATEPART(MONTH, CAST(OrderDate AS DATE)) AS OrderMonth
FROM OrderTable;


--7.Calculate the total revenue for each month

SELECT DATEPART(MONTH, CAST(OrderDate AS DATE)) AS OrderMonth, SUM(TotalAmount) AS MonthlyRevenue
FROM OrderTable
GROUP BY DATEPART(MONTH, CAST(OrderDate AS DATE));

--8.List all books along with their publisher names
SELECT b.Title, p.Publishername
FROM Book b
JOIN Publisher p ON b.ISBN = p.PublisherId;
--9.Retrieve all orders along with the names of the customers who placed them
SELECT o.OrderId, u.Email AS CustomerEmail, u.Contact AS CustomerContact
FROM OrderTable o
JOIN Users u ON o.UserId = u.UserId;
--10.Find all books that have been ordered at least once

SELECT DISTINCT b.Title
FROM Book b
JOIN OrderDetails od ON b.ISBN = od.ISBN;
--11.Retrieve a list of authors along with the titles of books they have written

SELECT a.Authorname, b.Title
FROM Author a
JOIN Authorname ba ON a.AuthorId = ba.AuthorId
JOIN Book b ON ba.ISBN = b.ISBN;
--12.List all books along with their publisher names, including books with no publisher information

SELECT b.Title, p.Publishername
FROM Book b
LEFT JOIN Publisher p ON b.ISBN = p.PublisherId;
--13.Retrieve all orders with their details, including orders with no items

SELECT o.OrderId, od.OrderDetailsId, od.ISBN, od.price, od.No_of_Products
FROM OrderTable o
LEFT JOIN OrderDetails od ON o.OrderId = od.OrderId;

--14.Find all pairs of customers from the same city

SELECT u1.UserId AS User1, u2.UserId AS User2, u1.City
FROM Users u1
JOIN Users u2 ON u1.City = u2.City AND u1.UserId < u2.UserId;





select * from Users
select * from Book
select * from Author

Alter table Book
add Authorid int 





 use Book_Store
--TASK ON 08/11/2024

--1.Find the title of the book with the highest price.

SELECT title 
FROM Book
WHERE price = (SELECT MAX(price) FROM Book)

--2.List all authors who have written books in the "your choice" genre 

SELECT A.Authorname
FROM Author A
JOIN Author_Book AB ON A.AuthorID = AB.AuthorID
JOIN Book B ON AB.ISBN = B.ISBN
WHERE B.Genre = 'Science';

--3.Find the title of the book that have never been ordered.

SELECT B.Title
FROM Book B
LEFT JOIN OrderDetails OD ON B.ISBN = OD.ISBN
WHERE OD.ISBN IS not NULL;


--4.Get the names of customers who have placed orders totaling more than 'amount as per values you have in database'.

SELECT U.Email AS CustomerName
FROM Users U
JOIN OrderTable OT ON U.UserID = OT.OrderId
GROUP BY U.UserID, U.Email
HAVING SUM(OT.TotalAmount) > 40;




--5.List all books that cost more than th average price of all books.

SELECT Title, Price
FROM Book
WHERE Price > (SELECT AVG(Price) FROM Book);


--6.Retrieve books published by the publisher with the fewest books.

SELECT Publishername, PublisherId
FROM Publisher
WHERE PublisherID = (
    SELECT PublisherId
    FROM Publisher
    GROUP BY PublisherId
    ORDER BY COUNT(*) ASC
    
);



--7.Find the average quantity of books per order.

SELECT AVG(TotalQuantity) AS AverageQuantityPerOrder
FROM (
    SELECT OrderId, SUM(No_of_Products) AS TotalQuantity
    FROM OrderDetails
    GROUP BY OrderId
) AS OrderQuantities;



--8.Display each book's title and it's rank by price(Highest to lowest) 


--9.Find customers who have placed more orders than the average orders per customers.

SELECT U.UserID, U.Email AS CustomerName, COUNT(O.OrderID) AS OrderCount
FROM Users U
JOIN OrderTable O ON U.UserID = O.UserId
GROUP BY U.UserId, U.Email
HAVING COUNT(O.OrderID) > (
    SELECT AVG(OrderCount)
    FROM (SELECT COUNT(OrderID) AS OrderCount FROM OrderTable GROUP BY UserId) AS AvgOrders
);



--10.List all books along with the number of orders use a correlated subquery to count orders for each book.

SELECT B.Title, 
       (SELECT COUNT(*) 
        FROM OrderDetails OD 
        WHERE OD.ISBN = B.ISBN) AS NumberOfOrders
FROM Book B;

--TASK 09/11/2024

--Get the total sales amount by month and genre, including totals for each genre across all months and for each month across all genres

SELECT 
    MONTH(OrderTable.OrderDate) AS Month,
    Book.Genre,
    SUM(OrderDetails.No_of_Products * OrderDetails.price) AS TotalSalesAmount
FROM 
    OrderTable
JOIN 
    OrderDetails ON OrderTable.OrderId = OrderDetails.OrderId
JOIN 
    Book ON OrderDetails.ISBN = Book.ISBN
GROUP BY 
    GROUPING SETS ((MONTH(OrderTable.OrderDate), Book.Genre), 
                   (MONTH(OrderTable.OrderDate)), 
                   (Book.Genre), 
                   ());


--Show the total quantity sold and total sales revenue for each publisher and genre, including totals by publisher, by genre, and overall
				    
    SELECT Publisher.PublisherName,
    Book.Genre,
    SUM(OrderDetails.No_of_Products) AS TotalQuantitySold,
    SUM(OrderDetails.No_of_Products * OrderDetails.price) AS TotalSalesRevenue
FROM 
    Publisher
JOIN 
    Book ON Publisher.PublisherId = Book.PublisherId
JOIN 
    OrderDetails ON OrderDetails.ISBN = Book.ISBN
GROUP BY 
    GROUPING SETS ((Publisher.PublisherName, Book.Genre), 
                   (Publisher.PublisherName), 
                   (Book.Genre), 
                   ());


--Get the total revenue generated from each book genre per month, with subtotals by genre and by month


	SELECT 
    MONTH(OrderTable.OrderDate) AS Month,
    Book.Genre,
    SUM(OrderDetails.No_of_Products * OrderDetails.price) AS TotalRevenue
FROM 
    OrderTable
JOIN 
    OrderDetails ON OrderTable.OrderId = OrderDetails.OrderId
JOIN 
    Book ON OrderDetails.ISBN = Book.ISBN
GROUP BY 
    GROUPING SETS ((MONTH(OrderTable.OrderDate), Book.Genre), 
                   (MONTH(OrderTable.OrderDate)), 
                   (Book.Genre), 
                   ());
