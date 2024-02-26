create database Resturant_managment_system19
use Resturant_managment_system19



/*creating a resturant table */

CREATE TABLE RESTAURANT(
   Resturant_id int CONSTRAINT RID_pk PRIMARY KEY,
   Resturant_name VARCHAR(20),
   Contact_no int
);



CREATE TABLE CUSTOMER(
   Customer_id int CONSTRAINT Cs_pk PRIMARY KEY,
   Customer_name VARCHAR(15),
   Contact_no int,
   Resturant_id int CONSTRAINT RI_pk foreign key(Resturant_id) references RESTAURANT(Resturant_id)
);



CREATE TABLE RESTAURANT_INFO(
   Resturant_name varchar(20) CONSTRAINT RN primary key,
   Address1 varchar(20)
);



CREATE TABLE ORDER1(
   Order_no int CONSTRAINT Order1_no primary key,
   Customer_id int CONSTRAINT Customer_id_fk REFERENCES CUSTOMER(Customer_id),
   No_of_item int
);



CREATE TABLE WAITER(
   Waiter_id int CONSTRAINT W_pk primary key,
   Waiter_name varchar(10),
   Customer_id int CONSTRAINT Cusid1 foreign key(Customer_id) references CUSTOMER(Customer_id),
   Order_no int CONSTRAINT Order_no_fk foreign key(Order_no) references ORDER1(Order_no),
   
);





CREATE TABLE ORDER1_INFO(
   No_of_item int CONSTRAINT No_pk primary key,
   Order_time varchar(20)

);




CREATE TABLE FOOD(
   Food_no int CONSTRAINT Fo_pk primary key,
   Quantity int ,
   Description1 varchar(20),
   Order_no int CONSTRAINT Order2_no foreign key(Order_no) references ORDER1(Order_no)

);



CREATE TABLE FOOD_Details(
   Food_no int CONSTRAINT Fo1_pk foreign key(Food_no) references FOOD(Food_no),
   Quantity int,
   Price_no int
);



CREATE TABLE CHEF(
   Chef_id int CONSTRAINT Chef_pk not null,
   Chef_name varchar(20) ,
   Order_no int CONSTRAINT Order3_no foreign key(Order_no) references ORDER1(Order_no),
);



CREATE TABLE BILL(
   Bill_no int CONSTRAINT Bill_pk primary key,
   Price_no int ,
   Order_dtl varchar(20),
   Customer_id int CONSTRAINT Cs1_pk foreign key(Customer_id) references CUSTOMER(Customer_id)
   
);



CREATE TABLE BILL_DTLS(
   Price varchar(15) CONSTRAINT Pc_pk primary key,
   Vat varchar(15)
   
);



/* Inserting data into the RESTAURANT table */
INSERT INTO RESTAURANT (Resturant_id, Resturant_name, Contact_no)
VALUES
  (1, 'Restaurant A', 123432325),
  (2, 'Restaurant B', 133231341),
  (3, 'Restaurant C', 111111111),
  (4, 'Restaurant D', 222222222),
  (5, 'Restaurant E', 333333333),
  (6, 'Restaurant F', 444444444),
  (7, 'Restaurant G', 555555555),
  (8, 'Restaurant H', 666666666),
  (9, 'Restaurant I', 777777777),
  (10, 'Restaurant J', 888888888),
  (11, 'Restaurant K', 999999999),
  (12, 'Restaurant L', 123450987),
  (13, 'Restaurant M', 987650321),
  (14, 'Restaurant N', 135792468),
  (15, 'Restaurant O', 864209753),
  (16, 'Restaurant P', 246813579),
  (17, 'Restaurant Q', 975318642),
  (18, 'Restaurant R', 369852147),
  (19, 'Restaurant S', 741852963),
  (20, 'Restaurant T', 258963147),
  (21, 'Restaurant U', 753951246),
  (22, 'Restaurant V', 951357864),
  (23, 'Restaurant W', 159753486),
  (24, 'Restaurant X', 357951628),
  (25, 'Restaurant Y', 456789123),
  (26, 'Restaurant Z', 654321987),
  (27, 'Restaurant AA', 852963741),
  (28, 'Restaurant BB', 951623487),
  (29, 'Restaurant CC', 753129468),
  (30, 'Restaurant DD', 852741963),
  (31, 'Restaurant EE', 963258147),
  (32, 'Restaurant FF', 123456789),
  (33, 'Restaurant GG', 987654321),
  (34, 'Restaurant HH', 111111111),
  (35, 'Restaurant II', 222222222),
  (36, 'Restaurant JJ', 333333333),
  (37, 'Restaurant KK', 444444444),
  (38, 'Restaurant LL', 555555555),
  (39, 'Restaurant MM', 666666666),
  (40, 'Restaurant NN', 777777777),
  (41, 'Restaurant OO', 888888888),
  (42, 'Restaurant PP', 999999999),
  (43, 'Restaurant QQ', 123450987),
  (44, 'Restaurant RR', 987650321),
  (45, 'Restaurant SS', 135792468),
  (46, 'Restaurant TT', 864209753),
  (47, 'Restaurant UU', 246813579),
  (48, 'Restaurant VV', 975318642),
  (49, 'Restaurant WW', 369852147),
  (50, 'Restaurant XX', 741852963);

/* Inserting data into the CUSTOMER table */
ALTER TABLE CUSTOMER
ALTER COLUMN Customer_name VARCHAR(100);
INSERT INTO CUSTOMER (Customer_id, Customer_name, Contact_no, Resturant_id)
VALUES
   (1, 'Miheretabe samson',54534532,1),
   (2, 'Aberham ayana',878472477,2),
  (3, 'Abebe Kebede', 777888999, 3),
  (4, 'Tigist Getachew', 111222333, 4),
  (5, 'Mulatu Haile', 444555666, 5),
  (6, 'Senait Tesfaye', 777888999, 6),
  (7, 'Tadesse Girma', 111222333, 7),
  (8, 'Eyerusalem Assefa', 444555666, 8),
  (9, 'Mekonnen Berhanu', 777888999, 9),
  (10, 'Alemnesh Dereje', 111222333, 10),
  (11, 'Elias Fekadu', 444555666, 11),
  (12, 'Genet Mulugeta', 777888999, 12),
  (13, 'Yeshiwork Yimer', 111222333, 13),
  (14, 'Solomon Wondimu', 444555666, 14),
  (15, 'Birtukan Habte', 777888999, 15),
  (16, 'Alemayehu Tadesse', 111222333, 16),
  (17, 'Etenesh Moges', 444555666, 17),
  (18, 'Belaynesh Bekele', 777888999, 18),
  (19, 'Dawit Kassa', 111222333, 19),
  (20, 'Muluken Tefera', 444555666, 20),
  (21, 'Meseret Yohannes', 777888999, 21),
  (22, 'Hirut Alemu', 111222333, 22),
  (23, 'Fikadu Demissie', 444555666, 23),
  (24, 'Teshome Tessema', 777888999, 24),
  (25, 'Ephrem Tilahun', 111222333, 25),
  (26, 'Tsion Mekonnen', 444555666, 26),
  (27, 'Mengistu Abate', 777888999, 27),
  (28, 'Sara Haile', 111222333, 28),
  (29, 'Hana Birhanu', 444555666, 29),
  (30, 'Tewodros Negash', 777888999, 30),
  (31, 'Meron Alemayehu', 111222333, 31),
  (32, 'Yohannes Mekuriya', 444555666, 32),
  (33, 'Tiruwork Ayalew', 777888999, 33),
  (34, 'Tamrat Teferi', 111222333, 34),
  (35, 'Winta Abiy', 444555666, 35),
  (36, 'Esubalew Tilahun', 777888999, 36),
  (37, 'Hiwot Zewdu', 111222333, 37),
  (38, 'Temesgen Lemma', 444555666, 38),
  (39, 'Yodit Tadesse', 777888999, 39),
  (40, 'Biruk Asfaw', 111222333, 40),
  (41, 'Tsega Solomon', 444555666, 41),
  (42, 'Birtukan Hailu', 777888999, 42),
  (43, 'Ermias Kebede', 111222333, 43),
  (44, 'Lemlem Tsegaye', 444555666, 44),
  (45, 'Asefa Mulu', 777888999, 45),
  (46, 'Hirut Tessema', 111222333, 46),
  (47, 'Yordanos Tadesse', 444555666, 47),
  (48, 'Abebech Bekele', 777888999, 48),
  (49, 'Chaltu Kebede', 111222333, 49),
  (50, 'Mulualem Teshome', 444555666, 50);

 /* Inserting data into the RESTAURANT_INFO table */
INSERT INTO RESTAURANT_INFO (Resturant_name, Address1)
VALUES
  ('Restaurant C', 'Address C'),
  ('Restaurant D', 'Address D'),
  ('Restaurant E', 'Address E'),
  ('Restaurant F', 'Address F'),
  ('Restaurant G', 'Address G'),
  ('Restaurant H', 'Address H'),
  ('Restaurant I', 'Address I'),
  ('Restaurant J', 'Address J'),
  ('Restaurant K', 'Address K'),
  ('Restaurant L', 'Address L'),
  ('Restaurant M', 'Address M'),
  ('Restaurant N', 'Address N'),
  ('Restaurant O', 'Address O'),
  ('Restaurant P', 'Address P'),
  ('Restaurant Q', 'Address Q'),
  ('Restaurant R', 'Address R'),
  ('Restaurant S', 'Address S'),
  ('Restaurant T', 'Address T'),
  ('Restaurant U', 'Address U'),
  ('Restaurant V', 'Address V'),
  ('Restaurant W', 'Address W'),
  ('Restaurant X', 'Address X'),
  ('Restaurant Y', 'Address Y'),
  ('Restaurant Z', 'Address Z'),
  ('Restaurant AA', 'Address AA'),
  ('Restaurant BB', 'Address BB'),
  ('Restaurant CC', 'Address CC'),
  ('Restaurant DD', 'Address DD'),
  ('Restaurant EE', 'Address EE'),
  ('Restaurant FF', 'Address FF'),
  ('Restaurant GG', 'Address GG'),
  ('Restaurant HH', 'Address HH'),
  ('Restaurant II', 'Address II'),
  ('Restaurant JJ', 'Address JJ'),
  ('Restaurant KK', 'Address KK'),
  ('Restaurant LL', 'Address LL'),
  ('Restaurant MM', 'Address MM'),
  ('Restaurant NN', 'Address NN'),
  ('Restaurant OO', 'Address OO'),
  ('Restaurant PP', 'Address PP'),
  ('Restaurant QQ', 'Address QQ'),
  ('Restaurant RR', 'Address RR'),
  ('Restaurant SS', 'Address SS'),
  ('Restaurant TT', 'Address TT'),
  ('Restaurant UU', 'Address UU'),
  ('Restaurant VV', 'Address VV'),
  ('Restaurant WW', 'Address WW'),
  ('Restaurant XX', 'Address XX'),
  ('Restaurant YY', 'Address YY'),
  ('Restaurant ZZ', 'Address ZZ');
/* Inserting data into the ORDER1 table */
INSERT INTO ORDER1 (Order_no, No_of_item)
VALUES
   (1882, 3),
   (1883, 2),
   (1884, 4),
   (1885, 1),
   (1886, 2),
   (1887, 3),
   (1888, 4),
   (1889, 2),
   (1890, 1),
   (1891, 3),
   (1892, 2),
   (1893, 4),
   (1894, 1),
   (1895, 2),
   (1896, 3),
   (1897, 4),
   (1898, 2),
   (1899, 1),
   (1900, 3),
   (1901, 2),
   (1902, 4),
   (1903, 1),
   (1904, 2),
   (1905, 3),
   (1906, 4),
   (1907, 2),
   (1908, 1),
   (1909, 3),
   (1910, 2),
   (1911, 4),
   (1912, 1),
   (1913, 2),
   (1914, 3),
   (1915, 4),
   (1916, 2),
   (1917, 1),
   (1918, 3),
   (1919, 2),
   (1920, 4),
   (1921, 1),
   (1922, 2),
   (1923, 3),
   (1924, 4),
   (1925, 2),
   (1926, 1),
   (1927, 3),
   (1928, 2),
   (1929, 4),
   (1930, 1),
   (1931, 2),
   (1932, 3);
   /* Inserting data into the WAITER table */
INSERT INTO WAITER (Waiter_id, Waiter_name)
VALUES
  (1421, 'Waiter J'),
  (1422, 'Waiter K'),
  (1423, 'Waiter L'),
  (1424, 'Waiter M'),
  (1425, 'Waiter N'),
  (1426, 'Waiter O'),
  (1427, 'Waiter P'),
  (1428, 'Waiter Q'),
  (1429, 'Waiter R'),
  (1430, 'Waiter S'),
  (1431, 'Waiter T'),
  (1432, 'Waiter U'),
  (1433, 'Waiter V'),
  (1434, 'Waiter W'),
  (1435, 'Waiter X'),
  (1436, 'Waiter Y'),
  (1437, 'Waiter Z'),
  (1438, 'Waiter AA'),
  (1439, 'Waiter BB'),
  (1440, 'Waiter CC'),
  (1441, 'Waiter DD'),
  (1442, 'Waiter EE'),
  (1443, 'Waiter FF'),
  (1444, 'Waiter GG'),
  (1445, 'Waiter HH'),
  (1446, 'Waiter II'),
  (1447, 'Waiter JJ'),
  (1448, 'Waiter KK'),
  (1449, 'Waiter LL'),
  (1450, 'Waiter MM'),
  (1451, 'Waiter NN'),
  (1452, 'Waiter OO'),
  (1453, 'Waiter PP'),
  (1454, 'Waiter QQ'),
  (1455, 'Waiter RR'),
  (1456, 'Waiter SS'),
  (1457, 'Waiter TT'),
  (1458, 'Waiter UU'),
  (1459, 'Waiter VV'),
  (1460, 'Waiter WW'),
  (1461, 'Waiter XX'),
  (1462, 'Waiter YY'),
  (1463, 'Waiter ZZ'),
  (1464, 'Waiter AAA'),
  (1465, 'Waiter BBB'),
  (1466, 'Waiter CCC'),
  (1467, 'Waiter DDD'),
  (1468, 'Waiter EEE'),
  (1469, 'Waiter FFF'),
  (1470, 'Waiter GGG'),
  (1471, 'Waiter HHH');
/* Inserting data into the ORDER1_INFO table */
INSERT INTO ORDER1_INFO (No_of_item, Order_time)
VALUES
  (4, '2023-09-14 16:20:00'),
  (1, '2023-09-14 18:10:00'),
  (3, '2023-09-14 20:30:00'),
  (2, '2023-09-14 22:15:00'),
  (5, '2023-09-15 09:30:00'),
  (6, '2023-09-15 11:45:00'),
  (7, '2023-09-15 14:00:00'),
  (8, '2023-09-15 16:20:00'),
  (9, '2023-09-15 18:40:00'),
  (10, '2023-09-15 20:15:00'),
  (11, '2023-09-16 09:00:00'),
  (12, '2023-09-16 11:30:00'),
  (13, '2023-09-16 13:45:00'),
  (14, '2023-09-16 15:55:00'),
  (15, '2023-09-16 18:10:00'),
  (16, '2023-09-16 20:25:00'),
  (17, '2023-09-17 09:15:00'),
  (18, '2023-09-17 11:30:00'),
  (19, '2023-09-17 13:45:00'),
  (20, '2023-09-17 16:00:00'),
  (21, '2023-09-17 18:20:00'),
  (22, '2023-09-17 20:35:00'),
  (23, '2023-09-18 09:30:00'),
  (24, '2023-09-18 11:45:00'),
  (25, '2023-09-18 14:00:00'),
  (26, '2023-09-18 16:20:00'),
  (27, '2023-09-18 18:40:00'),
  (28, '2023-09-18 20:15:00'),
  (29, '2023-09-19 09:00:00'),
  (30, '2023-09-19 11:30:00'),
  (31, '2023-09-19 13:45:00'),
  (32, '2023-09-19 15:55:00'),
  (33, '2023-09-19 18:10:00'),
  (34, '2023-09-19 20:25:00'),
  (35, '2023-09-20 09:15:00'),
  (36, '2023-09-20 11:30:00'),
  (37, '2023-09-20 13:45:00'),
  (38, '2023-09-20 16:00:00'),
  (39, '2023-09-20 18:20:00'),
  (40, '2023-09-20 20:35:00'),
  (41, '2023-09-21 09:30:00'),
  (42, '2023-09-21 11:45:00'),
  (43, '2023-09-21 14:00:00'),
  (44, '2023-09-21 16:20:00'),
  (45, '2023-09-21 18:40:00'),
  (46, '2023-09-21 20:15:00'),
  (47, '2023-09-22 09:00:00'),
  (48, '2023-09-22 11:30:00'),
  (49, '2023-09-22 13:45:00'),
  (50, '2023-09-22 15:55:00');

/* Inserting data into the FOOD table */
INSERT INTO FOOD (Food_no, Quantity, Description1)
VALUES
  (3, 3, 'Food C'),
  (4, 2, 'Food D'),
  (5, 1, 'Food E'),
  (6, 4, 'Food F'),
  (7, 2, 'Food G'),
  (8, 3, 'Food H'),
  (9, 1, 'Food I'),
  (10, 3, 'Food J'),
  (11, 2, 'Food K'),
  (12, 4, 'Food L'),
  (13, 2, 'Food M'),
  (14, 3, 'Food N'),
  (15, 1, 'Food O'),
  (16, 3, 'Food P'),
  (17, 2, 'Food Q'),
  (18, 4, 'Food R'),
  (19, 2, 'Food S'),
  (20, 3, 'Food T'),
  (21, 1, 'Food U'),
  (22, 3, 'Food V'),
  (23, 2, 'Food W'),
  (24, 4, 'Food X'),
  (25, 2, 'Food Y'),
  (26, 3, 'Food Z'),
  (27, 1, 'Food AA'),
  (28, 3, 'Food BB'),
  (29, 2, 'Food CC'),
  (30, 4, 'Food DD'),
  (31, 2, 'Food EE'),
  (32, 3, 'Food FF'),
  (33, 1, 'Food GG'),
  (34, 3, 'Food HH'),
  (35, 2, 'Food II'),
  (36, 4, 'Food JJ'),
  (37, 2, 'Food KK'),
  (38, 3, 'Food LL'),
  (39, 1, 'Food MM'),
  (40, 3, 'Food NN'),
  (41, 2, 'Food OO'),
  (42, 4, 'Food PP'),
  (43, 2, 'Food QQ'),
  (44, 3, 'Food RR'),
  (45, 1, 'Food SS'),
  (46, 3, 'Food TT'),
  (47, 2, 'Food UU'),
  (48, 4, 'Food VV'),
  (49, 2, 'Food WW'),
  (50, 3, 'Food XX');
/* Inserting data into the FOOD_Details table */
INSERT INTO FOOD_Details (Food_no, Quantity, Price_no)
VALUES
  (3, 3, 20),
  (4, 2, 25),
  (5, 1, 30),
  (6, 4, 35),
  (7, 2, 40),
  (8, 3, 45),
  (9, 1, 50),
  (10, 3, 55),
  (11, 2, 60),
  (12, 4, 65),
  (13, 2, 70),
  (14, 3, 75),
  (15, 1, 80),
  (16, 3, 85),
  (17, 2, 90),
  (18, 4, 95),
  (19, 2, 100),
  (20, 3, 105),
  (21, 1, 110),
  (22, 3, 115),
  (23, 2, 120),
  (24, 4, 125),
  (25, 2, 130),
  (26, 3, 135),
  (27, 1, 140),
  (28, 3, 145),
  (29, 2, 150),
  (30, 4, 155),
  (31, 2, 160),
  (32, 3, 165),
  (33, 1, 170),
  (34, 3, 175),
  (35, 2, 180),
  (36, 4, 185),
  (37, 2, 190),
  (38, 3, 195),
  (39, 1, 200),
  (40, 3, 205),
  (41, 2, 210),
  (42, 4, 215),
  (43, 2, 220),
  (44, 3, 225),
  (45, 1, 230),
  (46, 3, 235),
  (47, 2, 240),
  (48, 4, 245),
  (49, 2, 250),
  (50, 3, 255);
/* Inserting data into the CHEF table */
INSERT INTO CHEF (Chef_id, Chef_name)
VALUES
  (3, 'Chef C'),
  (4, 'Chef D'),
  (5, 'Chef E'),
  (6, 'Chef F'),
  (7, 'Chef G'),
  (8, 'Chef H'),
  (9, 'Chef I'),
  (10, 'Chef J'),
  (11, 'Chef K'),
  (12, 'Chef L'),
  (13, 'Chef M'),
  (14, 'Chef N'),
  (15, 'Chef O'),
  (16, 'Chef P'),
  (17, 'Chef Q'),
  (18, 'Chef R'),
  (19, 'Chef S'),
  (20, 'Chef T'),
  (21, 'Chef U'),
  (22, 'Chef V'),
  (23, 'Chef W'),
  (24, 'Chef X'),
  (25, 'Chef Y'),
  (26, 'Chef Z'),
  (27, 'Chef AA'),
  (28, 'Chef BB'),
  (29, 'Chef CC'),
  (30, 'Chef DD'),
  (31, 'Chef EE'),
  (32, 'Chef FF'),
  (33, 'Chef GG'),
  (34, 'Chef HH'),
  (35, 'Chef II'),
  (36, 'Chef JJ'),
  (37, 'Chef KK'),
  (38, 'Chef LL'),
  (39, 'Chef MM'),
  (40, 'Chef NN'),
  (41, 'Chef OO'),
  (42, 'Chef PP'),
  (43, 'Chef QQ'),
  (44, 'Chef RR'),
  (45, 'Chef SS'),
  (46, 'Chef TT'),
  (47, 'Chef UU'),
  (48, 'Chef VV'),
  (49, 'Chef WW'),
  (50, 'Chef XX');



/* 
select with a WHERE clause
			just means selecting specific unit which is unique and updating or doing anything to it

*/

SELECT * FROM CUSTOMER WHERE Customer_id = 1;

SELECT * FROM BILL_DTLS WHERE Price = '$50';

SELECT * FROM CHEF WHERE Chef_name = 'Chef B';

SELECT * FROM FOOD WHERE Order_no = 1001;

/*
 select with aggregate function:

			just means aggregating the functions calls one on top of the other one 
*/

SELECT Order_no, SUM(No_of_item) AS Total_Items FROM ORDER1 GROUP BY Order_no;/* well this adds everything inside Order1 named by diffrent Order_no and give us the totall sum as total_itmes*/
SELECT Bill_no, SUM(Price_no) AS Total_Price FROM BILL GROUP BY Bill_no;/*and this gives totall money that will cost us to buy something*/
SELECT Food_no, SUM(Quantity) AS Total_Food FROM FOOD GROUP BY Food_no;/*grouping them by food number this gives totall number of fodds that was orderd by a customer */

/*
one of complex joins 

 selecting tables using INNER JOIN
		here our group has decided to use C as an alias(providing temporary alternative name)for the CUSTOMER table, and R is an alias for the RESTAURANT table naming convention 
*/

SELECT C.Customer_id, C.Customer_name, R.Resturant_name FROM CUSTOMER C INNER JOIN RESTAURANT R ON C.Resturant_id = R.Resturant_id;/*this will take all costumers and resturants with macthing id */
		/*we want to join the CUSTOMER table (C) with the RESTAURANT table (R) using the common 
		column Resturant_id. This means that the query will match rows from both tables where the Resturant_id values are the same.*/
SELECT C.Customer_id, C.Customer_name, O.Order_no FROM CUSTOMER C LEFT JOIN ORDER1 O ON C.Customer_id = O.Customer_id;/*this will take all customers which matches with the order specific id based on the id*/
		/*the LEFT JOIN retrieves all rows from the CUSTOMER table and the matching rows from 
		the ORDER1 table based on the Customer_id column. If a customer does not have any orders, the Order_no column will be NULL.
		*/
SELECT O.Order_no, C.Customer_name, R.Resturant_name, CF.Chef_name FROM ORDER1 O INNER JOIN CUSTOMER C ON O.Customer_id = C.Customer_id 
INNER JOIN RESTAURANT R ON C.Resturant_id = R.Resturant_id
LEFT JOIN CHEF CF ON O.Order_no = CF.Order_no;/*well this does both the above  */
		/*this retrieves the order number, customer name, restaurant name, and chef name assigned
		to an order. The INNER JOIN is used to link the ORDER1, CUSTOMER, and RESTAURANT tables,
		while the LEFT JOIN is used to include the chef information if available
		*/

/*
one of complex joins 

 joining using Subquery 
 */

 SELECT B.Bill_no, B.Price_no, B.Order_dtl, C.Customer_name FROM BILL B INNER JOIN CUSTOMER C ON B.Customer_id = C.Customer_id 
 WHERE B.Price_no > (SELECT AVG(Price_no) FROM BILL);
		/*the inner join is just a filter which insures only the matching sets from both the customer and order gets to pass and the where filters it further more
		
		specificaly where does this It specifies that only rows where the Price_no in the BILL table is 
		greater than the average Price_no across all rows in the BILL table should be selected.
		AVG and SUM is builtin
		
		the subquery part of the code is  subquery (SELECT AVG(Price_no) FROM BILL) calculates the average of the Price_no column in the BILL table.
		*/



/*our group has decided to focus on specific part of the transaction process which we will list below 
		1. Placing an Order:-  done by the customer 
					..we decided to make the customer named customer 1 lets say customer 1 orders some food of item quntity 2 
					then that means that food is to be taken by the waiter so at the same time this updates the data in the 
					waiter and order ..this being the waiter taking the order and the order incremented or updated
*/
begin TRANSACTION;
		DECLARE @customerID INT = 1; 
		DECLARE @restaurantID INT = 1; 
		DECLARE @orderNo INT = 1873; /*this help us in code reusabilty but we could have just inserted the values with out declaring them*/
		DECLARE @newOrderNo INT;
	

	-- Disable foreign key constraints
ALTER TABLE WAITER NOCHECK CONSTRAINT Order_no_fk;
ALTER TABLE ORDER1 NOCHECK CONSTRAINT Customer_id_fk;
--we need to disable them because they are causing a lot of problems when our group was trying to execute the code
--based on the circular reference between the "ORDER1" and "WAITER" tables is causing conflicts 
		
		INSERT INTO ORDER1 (Order_no, Customer_id, No_of_item) VALUES (@orderNo, @customerID, 2);/*inserting it into the order*/
		/*but here the order is to be passed to the waiter too because he/she is the one who is going to take the order*/
		INSERT INTO WAITER (Waiter_id, Waiter_name, Customer_id, Order_no) VALUES (1412, 'Waiter A', @customerID, @orderNo);

		/*but here if the customer already exist with the same name then we have to increment there order by 1 updating the order*/
			--UPDATE ORDER1	SET Order_no = Order_no + 1 WHERE Order_no = @orderNo; though here we cant use update and where on the same line so this causes an error so
		UPDATE ORDER1 SET No_of_item = No_of_item * 2 WHERE Order_no = @orderNo;

		
		-- Re-enable foreign key constraints
ALTER TABLE WAITER CHECK CONSTRAINT Order_no_fk;
ALTER TABLE ORDER1 CHECK CONSTRAINT Customer_id_fk;


COMMIT TRANSACTION;
 
 /*
	2.Food Preparation
			lets say a chef with an id 1 is taking the job of preparing the food 
			then 2 cases 1.if the chef's only order is this 
					     2.is the chef has already another order and this is his second order or one of many order then 
						 in this case the order_no must increase as well 
						 here we are not just updating the chefs status but the order too but this is unnessary on the first case
 */
begin TRANSACTION;

			DECLARE @orderNo1 INT = 2015;
			DECLARE @chefID INT = 750; -- Chef starts preparing the food

			

			--but this is if the chef has only one order we can do the  following but what we have to remember is that order_no is a primary key so 
			--we can know the logic and handle for 1 order or many order case but in actual case we cant show them both one has to be commented to show it
			--INSERT INTO ORDER1 (Order_no, Customer_id, No_of_item) VALUES (@orderNo1, NULL, 0);
			--INSERT INTO CHEF (Chef_id, Chef_name, Order_no) VALUES (@chefID, 'Chef A', @orderNo1);
			/*but in case 2*/

			--what id the chef has another order

					
				-- Check if the chef has another order
IF EXISTS (
    SELECT 1 FROM ORDER1 o INNER JOIN CHEF c ON o.Order_no = c.Order_no WHERE c.Chef_id = @chefID AND o.Order_no <> @orderNo1
)
			BEGIN
				-- Increment the order number
				SET @orderNo1 = @orderNo1 + 1;
			END;

-- Insert the order
INSERT INTO ORDER1 (Order_no, Customer_id, No_of_item) VALUES (@orderNo1, NULL, 0);

-- Insert the chef's association with the order
INSERT INTO CHEF (Chef_id, Chef_name, Order_no) VALUES (@chefID, 'Chef A', @orderNo1);

COMMIT TRANSACTION;
/*
	3.Order Completion
			Once the food is prepared, the waiter serves the food to the customer 1. customer 1 enjoys the meal and is ready to pay the bill.
				
				here we cant really made a transaction to this step because there is no transaction been made here because the food has already been made 
				orderd the waiter  has already taken the order and the cheff has finished the meal and the food has been served its all imaginary 
				the transaction after this which we are conserned with only happens when the customer has finished his meal and ready to pay the bill and this
				take us to the 4th step which is 
	
	4.Generating the Bill
		The waiter prepares the bill based on the order details and presents it to customer 1.
		The BILL table is updated with the bill information, including the bill number, price, order details, and customer details.
		The BILL_DTLS table is updated with the price and tax information too.
*/

begin TRANSACTION;

		DECLARE @customerID1 INT = 1; 
		DECLARE @billNo INT = 101; --bill no one o one is to be billed
		DECLARE @priceNo INT = 50;
		DECLARE @orderDtl VARCHAR(20) = 'Order A'; 

		-- Disable foreign key constraints
		ALTER TABLE BILL NOCHECK CONSTRAINT Cs1_pk;
	
		
			-- Calculate the total price including tax
			DECLARE @totalPrice DECIMAL(10, 2); 
			SET @totalPrice = @priceNo * 1.1; -- Assuming 10% tax rate

			-- Insert the bill information
			INSERT INTO BILL (Bill_no, Price_no, Order_dtl, Customer_id) VALUES (@billNo, @priceNo, @orderDtl, @customerID1);

			-- Insert the bill details
			INSERT INTO BILL_DTLS (Price, Vat) VALUES ('$' + CONVERT(VARCHAR(10), @priceNo), '10%');--concinate $with aconverted string of length 10 price no and then in place of vat we add the literal 10% 

			-- Re-enable foreign key constraints
			ALTER TABLE BILL CHECK CONSTRAINT Cs1_pk;

COMMIT TRANSACTION;

SELECT @totalPrice AS TotalPrice;

/*
	after the bill has been put out the user must pay for the transaction to be complited which takes us to the step 
		5.Payment and Transaction Completion
				here what we are considering is that customer 1 is paying the bill and 
				the restaurant updates the necessary financial records, such as crediting 
				the seller (the restaurant) and debiting the buyer (customer 1 in our groups case).and if its applicable 
				the tax amount is credited directly to the taxer not to the resturant .

				as our groups one step 3 this step also is to be taken imaginatively because there is no place to show
				where this tranaction is taken place after the bill has been paid our concerns as a computer science students
				is to get straight to the stock managment which leads us too
		6.Stock Management(meaning all overall process hapening in the resturant)
				after the order is completed, the restaurant reduces the stock quantity 
				of the food items used in the order.and the food table is updated
				with the reduced quantity of the food items.

					which will change the over all present status of the resturant

*/
begin TRANSACTION;

		
		DECLARE @foodNo INT = 1; 
		DECLARE @quantityUsed INT = 2; --our customer 1 has ordered food item of 2 so those will be decreased from the resturant

	
		UPDATE FOOD SET Quantity = Quantity - @quantityUsed WHERE Food_no = @foodNo;

COMMIT TRANSACTION;

/* for the 5th guide line question 
		a)Creating a View for 
				>for this we need to creat the batch first to separate them from the other views and procidures
*/

		--Restaurant Information
GO -- to Create a new batch because Each batch should start with the GO statement

 -- and to Create the view
CREATE VIEW RestaurantView AS SELECT r.Resturant_id, r.Resturant_name, r.Contact_no, ri.Address1 FROM RESTAURANT r
JOIN RESTAURANT_INFO ri ON r.Resturant_name = ri.Resturant_name;
		--customer Information
GO

CREATE VIEW CustomerInformationView AS SELECT c.Customer_id, c.Customer_name, c.Contact_no, r.Resturant_name FROM CUSTOMER c 
JOIN RESTAURANT r ON c.Resturant_id = r.Resturant_id;
		--customer order information view
GO

CREATE VIEW CustomerOrderView AS SELECT c.Customer_id, c.Customer_name, c.Contact_no, r.Resturant_name, o.Order_no, o.No_of_item FROM CUSTOMER c
JOIN RESTAURANT r ON c.Resturant_id = r.Resturant_id
JOIN ORDER1 o ON c.Customer_id = o.Customer_id;
--using the same method by starting the batch and then creating the view we can make a view of all possible outcomes
/*
		b) Create a Parameterized Procedure to 
*/

GO

			-- Get Customer Orders
CREATE PROCEDURE GetCustomerOrders @customerID INT AS
BEGIN
    SELECT c.Customer_id, c.Customer_name, c.Contact_no, r.Resturant_name, o.Order_no, o.No_of_item
    FROM CUSTOMER c
    JOIN RESTAURANT r ON c.Resturant_id = r.Resturant_id
    JOIN ORDER1 o ON c.Customer_id = o.Customer_id
    WHERE c.Customer_id = @customerID;
END;
			--to execute this procedure 
					EXEC GetCustomerOrders @customerID = 1;
			
			--  Update Stock Quantity(by Stock quantity we meant the whole over all data of the resturant)
GO

CREATE PROCEDURE UpdateStockQuantity @foodNo INT, @quantity INT AS
BEGIN
    UPDATE FOOD SET Quantity = Quantity - @quantity WHERE Food_no = @foodNo;
END;
			--to execute this procedure 
					EXEC UpdateStockQuantity @foodNo = 12345, @quantity = 5;
/*
		c) to create a trigger for audit Information a table is needed to show our audit info and that is to be created first 
		so we first need to ensure that the AUDIT_LOG table is created before creating the trigger. 

*/
-- Create a new batch
GO

-- Create the AUDIT_LOG table
CREATE TABLE AUDIT_LOG (
    LogID INT IDENTITY(1,1) PRIMARY KEY,--The IDENTITY(1,1) specifies that the column will be
	--automatically populated with a unique value starting from 1 and incrementing by 1 for each new row
    Event VARCHAR(255),
    Timestamp DATETIME DEFAULT GETDATE()--The "DEFAULT GETDATE()" specifies that if a value is not explicitly provided for this column during an
	--insert operation, the current date and time will be automatically assigned as the default value
);
--then here we can create the trigger information

GO

-- Create the trigger for Audit information
	CREATE TRIGGER AuditTrigger ON CUSTOMER AFTER INSERT AS
	BEGIN
		INSERT INTO AUDIT_LOG (Event) SELECT 'New customer added: ' + Customer_name FROM inserted;
	END;
	/*
		This line inserts a new record into the "AUDIT_LOG" table. It captures the event of a new customer being
		added to the "CUSTOMER" table.
		The inserted record includes the event description, which is a concatenation of the string 'New customer added: '
		and the value from the "Customer_name" column of the inserted row.
	*/

/*

	The last question on the guide line is to specify user roles which means to protect our users interest we need to apply a theory commonly known as autherization
	which basicaly means that some people are authorizaed to see things and others are not this keeps confidentiality and security in check 
	with the front end attached to this it could have been an amazing thing to see but since we are only learning the database managment system here
	and the class is data base we will try our best to show  the backend side of it 

				for this 
					1st) we need to create the roles with a name or variable 
					2nd) we need to grant a permision to that variable specific user we might grant this permission based on
							a)specific table which our group will show in a few lines below 
							b)based on a view just like we tried to show you on the above code
							c)based on procedure 
							d)we can even allow a user to alter the whole databse (but this isnt done on the backend its shown in the user friendly access which
							is the front end but our group is not going to show that here since sql is a backend server database
							)
							...but remember we can always take that role away by using method revoke which we will show after a few lines  
					3nd)we need to assign that specific varible in which we named our role an actual user name 
*/


	-- Create the role
CREATE ROLE Waiter; -- 1st step
CREATE ROLE Chef; 
CREATE ROLE ResturantManager;
CREATE ROLE CustomerUser;
-- Create logins for the users
--this is how you create a login so that yoy can create users with it later
--CREATE LOGIN mahlet WITH PASSWORD = '123';
--CREATE LOGIN helen WITH PASSWORD = '123';
--CREATE LOGIN miheretab WITH PASSWORD = '123';
--CREATE LOGIN abrham WITH PASSWORD = '123';
--CREATE LOGIN dani WITH PASSWORD = '123';
-- Create users
CREATE USER mahlet;
CREATE USER helen;---this guys creates the login and then alter on the below part actually adds them to role
CREATE USER abrham;
CREATE USER dani;
CREATE USER miheretab;

				-- Grant necessary permissions to the table restaurant

				/*but this is granting it on the table only*/


	GRANT SELECT ON RESTAURANT TO Waiter; --2nd step

				-- we could also do this on for table customer specifying who is able to access it

	GRANT SELECT ON CUSTOMER TO CustomerUser;
	GRANT SELECT,INSERT, UPDATE, DELETE ON CUSTOMER TO ResturantManager;--so that the manager have full access to the customer table
		
			-- Grant necessary permissions to the View RestaurantView

			/*but this is granting it on the View only no where else*/
						GRANT SELECT ON RestaurantView TO ResturantManager;
				-- Grant necessary permissions to the View CustomerInformationView
						GRANT SELECT ON CustomerInformationView TO CustomerUser;
				-- Grant necessary permissions to the View CustomerOrderView
						GRANT SELECT ON CustomerOrderView TO Chef;	--so that the chef knows everything about the Customers order
	
			-- Grant necessary permissions to the Procedures

			/*but this is granting it while the Procedures are occuring only no where else*/
				-- Grant necessary permissions to the Procedures GetCustomerOrders
						GRANT EXECUTE ON GetCustomerOrders TO Waiter; --so that the waiter gets the orders while this ordering procedure is happening
				-- Grant necessary permissions to the Procedures UpdateStockQuantity
						GRANT EXECUTE ON UpdateStockQuantity TO ResturantManager; --this way the manager has full access to all query during the procedure
			-- Grant necessary permissions to the Database as whole 

			/*this granting permission or authorization through the whole database meaning everywhere*/
			
			--this authorization is recommended only to the admin which in our groups case the resturant manager or a trusted person only to keep confidentiality 
						GRANT CREATE TABLE, CREATE VIEW, CREATE PROCEDURE TO ResturantManager; --this is declaring there is nothing that the manager couldnt do

/*
    but as a programers its usual to make a mistake so if we make a mistake or a person is not worthy of that authorization anymore based on our 
    users interest we can revoke that user from there permission or position and we can do that using the below
*/

					--	REVOKE INSERT, UPDATE, DELETE ON CUSTOMER FROM ResturantManager;--is the manager doesnt need that permission anymore
				
-----------------------------------------------------------------------------finallly the 3rd step--------------------------------------------------------------				
				-- Assign a user to the role 
-- Assign existing logins to roles
ALTER ROLE Waiter ADD MEMBER mahlet;--3rd step
ALTER ROLE Chef ADD MEMBER helen;
ALTER ROLE RestaurantManager ADD MEMBER miheretab;-- this will cause an error because its permission is revoked its just here as a sample
ALTER ROLE CustomerUser ADD MEMBER abrham;
ALTER ROLE CustomerUser ADD MEMBER dani;
SELECT * FROM sys.tables;--to see all the tables in the database 

/*
its just another way of saying 
GRANT Waiter TO mahlet; --3rd step
GRANT Chef TO helen;---and this guys do permissions not actually add a memeber to the roles
GRANT ResturantManager TO miheretab;
GRANT CustomerUser TO abrham;
GRANT CustomerUser TO dani;
*?
-------------------------------------------------------------Group Members-------------------------------------------------------------------------------------
/*
       ------------------------------------------------------------------------------------------------------
       ------------------------------------------------------------------------------------------------------
	    //							         all rights reserved to            Miheretab samson                       // 
       
		------------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------														
*/


---------------------------------------------------------------------------------------------------------------------------------------------------------------