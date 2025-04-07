
create database cafe_management_system;
use cafe_management_system;

/*--------------------------------------------------------ROLE_TABLE------------------------------------------------------------------------*/

create table roles(Role_Id int primary key,Role_name varchar(35) not null) ;
---------------------------------
insert into roles(Role_Id,Role_Name) values 
(1,"Admin"),
(2,"user_2");
------------------------------------
select* from roles;
/*------------------------------------------------------- USERS_TABLE ---------------------------------------------------------------------*/
drop table users;
---------------
create table users(User_Id int primary key AUTO_INCREMENT,
First_Name varchar(35) not null,
Last_Name varchar(35) not null,
Address varchar(100) not null,
Email varchar(30) not null,
Mobile_Number varchar(25),
Role_Id int,
foreign key(Role_Id) references roles(Role_Id));
-------------------------------
select* from users;
------------------------------
INSERT INTO users (First_Name, Last_Name, Address, Email, Mobile_Number, Role_Id) VALUES
('John', 'Doe', '123 Main St, New York, NY', 'john.doe@example.com', '1234567890', 1),
('Emily', 'Smith', '456 Oak Ave, Los Angeles, CA', 'emily.smith@example.com', '2345678901', 2),
('David', 'Lee', '789 Pine Rd, Chicago, IL', 'david.lee@example.com', '3456789012', 2),
('Sophia', 'Brown', '321 Cedar Blvd, Houston, TX', 'sophia.brown@example.com', '4567890123', 1),
('Michael', 'Johnson', '654 Maple Ln, Miami, FL', 'michael.johnson@example.com', '5678901234', 2),
('Ava', 'Davis', '101 Elm St, Seattle, WA', 'ava.davis@example.com', '6789012345', 2),
('William', 'Wilson', '202 Birch St, Denver, CO', 'william.wilson@example.com', '7890123456', 1),
('Olivia', 'Taylor', '303 Spruce Rd, Boston, MA', 'olivia.taylor@example.com', '8901234567', 2),
('James', 'Anderson', '404 Walnut St, Phoenix, AZ', 'james.anderson@example.com', '9012345678', 1),
('Isabella', 'Martinez', '505 Ash Blvd, Atlanta, GA', 'isabella.martinez@example.com', '0123456789', 2),
('Benjamin', 'Thomas', '606 Fir Ln, Dallas, TX', 'benjamin.thomas@example.com', '1112223333', 2),
('Mia', 'Hernandez', '707 Chestnut Dr, Austin, TX', 'mia.hernandez@example.com', '2223334444', 1),
('Logan', 'Moore', '808 Redwood Ct, Orlando, FL', 'logan.moore@example.com', '3334445555', 2),
('Charlotte', 'Martin', '909 Magnolia Ave, San Diego, CA', 'charlotte.martin@example.com', '4445556666', 2),
('Daniel', 'White', '111 Hickory Rd, San Jose, CA', 'daniel.white@example.com', '5556667777', 1),
('Amelia', 'Clark', '222 Maple Ave, Portland, OR', 'amelia.clark@example.com', '6667778888', 2),
('Henry', 'Lewis', '333 Oak Dr, Columbus, OH', 'henry.lewis@example.com', '7778889999', 2),
('Evelyn', 'Lee', '444 Pine Blvd, Nashville, TN', 'evelyn.lee@example.com', '8889990000', 1),
('Liam', 'Walker', '555 Cedar Ct, Indianapolis, IN', 'liam.walker@example.com', '9990001111', 2),
('Harper', 'Hall', '666 Birch Ln, Charlotte, NC', 'harper.hall@example.com', '0001112222', 2),
('Jackson', 'Young', '777 Fir Ave, Jacksonville, FL', 'jackson.young@example.com', '1231231234', 1),
('Ella', 'King', '888 Elm Rd, Detroit, MI', 'ella.king@example.com', '2342342345', 2),
('Sebastian', 'Scott', '999 Spruce Blvd, Milwaukee, WI', 'sebastian.scott@example.com', '3453453456', 2),
('Abigail', 'Green', '101 Ash Dr, Kansas City, MO', 'abigail.green@example.com', '4564564567', 1),
('Matthew', 'Adams', '202 Hickory Ln, Memphis, TN', 'matthew.adams@example.com', '5675675678', 2),
('Sofia', 'Baker', '303 Chestnut St, Baltimore, MD', 'sofia.baker@example.com', '6786786789', 2),
('Aiden', 'Gonzalez', '404 Redwood Blvd, Louisville, KY', 'aiden.gonzalez@example.com', '7897897890', 1),
('Chloe', 'Nelson', '505 Magnolia Rd, Albuquerque, NM', 'chloe.nelson@example.com', '8908908901', 2),
('Lucas', 'Carter', '606 Walnut Ct, Oklahoma City, OK', 'lucas.carter@example.com', '9019019012', 2),
('Grace', 'Mitchell', '707 Maple Ln, Tucson, AZ', 'grace.mitchell@example.com', '0120120123', 1);
/*---------------------------------------------------------ORDER_TABLE--------------------------------------------------------------------------*/
create table orders(
Order_Id int primary key AUTO_INCREMENT,
Order_Date date not null,
Total_Amount decimal,
User_Id int,
foreign key(User_Id) references users(User_Id));
-------------------------------------------------------------------------------------
select*from orders;
DELETE FROM orders WHERE Order_Id IN (10,11,12,13,14,15,16);
drop table orders;
ALTER TABLE orders AUTO_INCREMENT = 101;
-------------------------------------------------------------------------------------
INSERT INTO orders (Order_Date, Total_Amount, User_Id) VALUES
('2025-04-01', 15.75, 1),
('2025-04-01', 8.50, 2),
('2025-04-02', 12.00, 3),
('2025-04-02', 20.25, 4),
('2025-04-03', 9.99, 5),
('2025-04-03', 13.75, 6),
('2025-04-03', 17.40, 7),
('2025-04-04', 6.80, 8),
('2025-04-04', 10.50, 9),
('2025-04-04', 14.25, 10),
('2025-04-05', 18.00, 11),
('2025-04-05', 7.60, 12),
('2025-04-05', 19.90, 13),
('2025-04-06', 5.75, 14),
('2025-04-06', 21.10, 15),
('2025-04-06', 16.40, 16),
('2025-04-07', 22.50, 17),
('2025-04-07', 9.00, 18),
('2025-04-07', 11.25, 19),
('2025-04-08', 13.60, 20),
('2025-04-08', 8.40, 21),
('2025-04-08', 15.10, 22),
('2025-04-09', 12.90, 23),
('2025-04-09', 7.25, 24),
('2025-04-09', 18.80, 25),
('2025-04-10', 20.00, 26),
('2025-04-10', 6.45, 27),
('2025-04-10', 14.35, 28),
('2025-04-10', 19.25, 29),
('2025-04-10', 17.15, 30);
/*----------------------------------------------------------------PAYMENT_TABLE----------------------------------------------------------------------------*/
create table Payments(
Payment_Id int primary key auto_increment,
Payment_Date datetime,
Amount decimal,
Payment_Method varchar(20),
Order_Id int ,
foreign key (Order_Id) references orders(Order_Id)
);
---------------------------------------------------------
select*from payments;
ALTER TABLE Payments AUTO_INCREMENT = 1001;
drop table payments;
---------------------------------------------------------
INSERT INTO payments (Payment_Date, Amount, Payment_Method, Order_Id) VALUES
('2025-04-01', 15.75, 'Credit Card', 100),
('2025-04-01', 8.50, 'Cash', 101),
('2025-04-02', 12.00, 'UPI', 102),
('2025-04-02', 20.25, 'Credit Card', 103),
('2025-04-03', 9.99, 'Debit Card', 104),
('2025-04-03', 13.75, 'Credit Card', 105),
('2025-04-03', 17.40, 'Cash', 106),
('2025-04-04', 6.80, 'UPI', 107),
('2025-04-04', 10.50, 'Credit Card', 108),
('2025-04-04', 14.25, 'Debit Card', 109),
('2025-04-05', 18.00, 'UPI', 110),
('2025-04-05', 7.60, 'Credit Card', 111),
('2025-04-05', 19.90, 'Cash', 112),
('2025-04-06', 5.75, 'Credit Card', 113),
('2025-04-06', 21.10, 'UPI', 114),
('2025-04-06', 16.40, 'Debit Card', 115),
('2025-04-07', 22.50, 'Credit Card', 116),
('2025-04-07', 9.00, 'Cash', 117),
('2025-04-07', 11.25, 'Credit Card', 118),
('2025-04-08', 13.60, 'UPI', 119),
('2025-04-08', 8.40, 'Debit Card', 120),
('2025-04-08', 15.10, 'Credit Card', 121),
('2025-04-09', 12.90, 'Cash', 122),
('2025-04-09', 7.25, 'UPI', 123),
('2025-04-09', 18.80, 'Credit Card', 124),
('2025-04-10', 20.00, 'Debit Card', 125),
('2025-04-10', 6.45, 'Credit Card', 126),
('2025-04-10', 14.35, 'Cash', 127),
('2025-04-10', 19.25, 'UPI', 128),
('2025-04-10', 17.15, 'Credit Card', 129);
/*----------------------------------------------------------------------CATEGORIES-----------------------------------------------------------------------------------------*/
use cafe_management_system;
create table categories(Category_Id int primary key not null,
Category_Name varchar(35) not null);

select * from categories;

/*---------------------------------------------------------------------------------MENUS-----------------------------------------------------------------------------------*/

create table menus(Menu_Id int primary key auto_increment,
Menu_Name varchar(35) not null,
price decimal not null,
Category_Id int,
foreign key(Category_Id) references categories(Category_Id));
-----------------------------------------------------------------
use cafe_management_system;
select*from menus;
ALTER TABLE Payments AUTO_INCREMENT = 001;
----------------------------------------------------------------------------------
INSERT INTO menus (menu_name, Price, Category_Id) VALUES
('Espresso', 3.00, 1),
('Cappuccino', 3.50, 1),
('Latte', 4.00, 1),
('Americano', 3.00, 1),
('Mocha', 4.25, 1),
('Flat White', 3.75, 1),
('Macchiato', 3.25, 1),
('Irish Coffee', 5.00, 1),
('Cold Brew', 4.50, 2),
('Iced Latte', 4.00, 2),
('Iced Mocha', 4.50, 2),
('Iced Americano', 3.50, 2),
('Iced Cappuccino', 4.00, 2),
('Iced Espresso', 3.25, 2),
('Iced Tea', 2.75, 2),
('Fruit Punch', 3.00, 2),
('Lemonade', 2.50, 2),
('Vanilla Milkshake', 4.25, 2),
('Chocolate Milkshake', 4.50, 2),
('Strawberry Milkshake', 4.25, 2),
('Cheesecake', 5.00, 3),
('Brownie', 3.75, 3),
('Chocolate Muffin', 2.50, 3),
('Blueberry Muffin', 2.75, 3),
('Apple Pie', 4.00, 3),
('Tiramisu', 5.50, 3),
('Donut', 2.00, 3),
('Croissant', 2.25, 3),
('Cupcake', 2.50, 3),
('Ice Cream Sundae', 4.75, 3);
/*----------------------------------------------------------------Reviews---------------------------------------------------------------------------------------------------*/

create table reviews(Review_Id int primary key auto_increment,
User_Id int,
foreign key(User_Id) references users(User_Id),
Menu_Id int,
foreign key(Menu_Id) references menus(Menu_Id),
comments varchar(500),
rating int
 );
 ----------------------------------------------------------
 drop table reviews;
 select* from reviews;
 ------------------------------------------------------------
 ALTER TABLE Payments AUTO_INCREMENT = 001;
 ----------------------------------------------------------
 INSERT INTO reviews (review_id, user_id, menu_id, rating) VALUES
(1, 1, 5, 5),
(2, 2, 10, 4),
(3, 3, 15, 5),
(4, 4, 20, 3),
(5, 5, 25, 4),
(6, 6, 3, 5),
(7, 7, 8, 4),
(8, 8, 13, 5),
(9, 9, 18, 3),
(10, 10, 23, 5),
(11, 11, 1, 4),
(12, 12, 6, 5),
(13, 13, 11, 3),
(14, 14, 16, 4),
(15, 15, 21, 5),
(16, 16, 26, 3),
(17, 17, 2, 5),
(18, 18, 7, 4),
(19, 19, 12, 5),
(20, 20, 17, 4),
(21, 21, 22, 5),
(22, 22, 27, 3),
(23, 23, 4, 4),
(24, 24, 9, 5),
(25, 25, 14, 3),
(26, 26, 19, 4),
(27, 27, 24, 5),
(28, 28, 29, 4),
(29, 29, 30, 5),
(30, 30, 28, 4);
 /*-------------------------------------------------------------------------ORDER_DETAILS-----------------------------------------------------------------------------------*/
 
 create table order_details(Order_Details_Id int primary key auto_increment,
 order_id int,
 foreign key(Order_id)references orders(order_id),
 quantity int not null,
 Menu_Id int,
 foreign key(Menu_Id)references menus(Menu_Id)
 );
 -----------------------------------------------------------------------
  select* from order_details;
  drop table order_details;
   ALTER TABLE Payments AUTO_INCREMENT = 500;
  ---------------------------------------------------------
INSERT INTO order_details (order_details_id, order_id, quantity, menu_id) VALUES
(500, 100, 2, 1),
(501, 101, 1, 2),
(502, 102, 3, 3),
(503, 103, 2, 4),
(504, 104, 4, 5),
(505, 105, 1, 6),
(506, 106, 2, 7),
(507, 107, 5, 8),
(508, 108, 3, 9),
(509, 109, 2, 10),
(510, 110, 1, 11),
(511, 111, 3, 12),
(512, 112, 2, 13),
(513, 113, 4, 14),
(514, 114, 1, 15),
(515, 115, 3, 16),
(516, 116, 5, 17),
(517, 117, 2, 18),
(518, 118, 1, 19),
(519, 119, 3, 20),
(520, 120, 4, 21),
(521, 121, 2, 22),
(522, 122, 5, 23),
(523, 123, 1, 24),
(524, 124, 3, 25),
(525, 125, 2, 26),
(526, 126, 4, 27),
(527, 127, 2, 28),
(528, 128, 5, 29),
(529, 129, 3, 30);