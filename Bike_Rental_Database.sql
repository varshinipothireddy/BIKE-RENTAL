create database Bike_Rental


create table Customer
(
	Customer_ID			varchar(10)		primary key,
	Customer_Name		varchar(30)		not null,
	Email				varchar(30)		Unique,
	Phone_Number		varchar(10)		not null,
	Address				Varchar(10)		NULL,
)


insert into Customer values('C001','Vikram','v@gmail.com','9098872310','Tirupathi')
insert into Customer values('C002','Jhonny','J@gmail.com','8876543210','Nellore')
insert into Customer values('C003','Badri','ba@gmail.com','7012348765','Chittor')
insert into Customer values('C004','Rosy','rsr@gmail.com','8991234560','Kalahasthi')
insert into Customer values('C005','Vennala','vv@gmail.com','6765472310','Nellore')
insert into Customer values('C006','Suri','s@gmail.com','9098872310','Tirupathi')
insert into Customer values('C007','Padmavathi','p@gmail.com','9321908640','Tirupathi')
insert into Customer values('C008','Shyam','ssr@gmail.com','7012348765','Chittor')
insert into Customer values('C009','Bhaubali','bb@gmail.com','8088872310','Kalahasthi')
insert into Customer values('C010','Bharth','bh@gmail.com','9012342310','Nellore')
insert into Customer values('C011','Srujana','su@gmail.com','9174472310','Chittor')
insert into Customer values('C012','Sai','sai@gmail.com','6571232310','Nellore')
insert into Customer values('C013','Pushpa','p2@gmail.com','9875634122','Chittor')
insert into Customer values('C014','Sreevalli','sv@gmail.com','9123472310','Tirupathi')
insert into Customer values('C015','Rocky','rr@gmail.com','7896872310','Tirupathi')



create table Bike
(
	Bike_Id			varchar(10)		primary key,
	Bike_Brand		varchar(20)		not null,
	Bike_Model		varchar(20)		null,
	Bike_Number		varchar(10)		unique,
	Bike_Type		varchar(6)		check (Bike_Type='Scooty'or Bike_Type='Bike'),
	Rent_Cost		money			not null,
)

insert into Bike values('B001','Honda','Activa','Ap24','Scooty',400)
insert into Bike values('B002','Hero Honda','Splendor','Ap01','Bike',300)
insert into Bike values('B003','Honda','Slpender','Ts24','Bike',300)
insert into Bike values('B004','Yamaha','Rx100','Tn24','Bike',500)
insert into Bike values('B005','Royal Enfield','G7650','Ap03','Bike',800)
insert into Bike values('B006','Honda','Unicorn','Ap23','Bike',500)
insert into Bike values('B007','Yamaha','Fascino','Ks24','Scooty',400)
insert into Bike values('B008','TVS','Jupiter','Ap11','Scooty',400)
insert into Bike values('B009','Piaggio','Vespa','Ts14','Scooty',500)
insert into Bike values('B010','TVS','XL100','Tn09','Bike',200)
insert into Bike values('B011','Hero','Passion','Ap04','Bike',400)
insert into Bike values('B012','Bajaj','Pulsar','Tn23','Bike',500)
insert into Bike values('B013','Honda','Activa','Ts06','Scooty',400)
insert into Bike values('B014','Hero Honda','Splendor','Ts01','Bike',400)
insert into Bike values('B015','Piaggio','Vespa','Ap12','Scooty',500)
insert into Bike values('B016','Yamaha','R15 V3','Ap19','Bike',800)



create table Employee
(
	Employee_Id		varchar(10)		Primary key,
	Employee_Name	varchar(40)		Not Null,
	Employee_Shift	char(4)			check (Employee_Shift='mrng'or Employee_Shift='evng'),
	Salary			money			not null,
)


insert into Employee values('E001','Kittappa','mrng',10000)
insert into Employee values('E002','Bhaskar','evng',15000)
insert into Employee values('E003','Krishna','mrng',20000)
insert into Employee values('E004','Sunitha','mrng',10000)
insert into Employee values('E005','Prasad','evng',25000)
insert into Employee values('E006','Rakesh','mrng',10000)
insert into Employee values('E007','Rajesh','mrng',15000)
insert into Employee values('E008','Janifa','evng',20000)
insert into Employee values('E009','Uma','evng',10000)
insert into Employee values('E010','Lohith','mrng',15000)
insert into Employee values('E011','Sai Chandu','evng',20000)
insert into Employee values('E012','Priyanka','evng',25000)
insert into Employee values('E013','Nideesh','mrng',10000)
insert into Employee values('E014','Sri Latha','evng',15000)


create table Locations
(
	Location_Id		varchar(10)		Primary key,
	Location_Name	varchar(20)		NULL,
	Distance		int				Null,
)

insert into Locations values('L001','Tirumala',25)
insert into Locations values('L002','Vellore',null)
insert into Locations values('L003','Pondicherry',null)
insert into Locations values('L004','Chennai',null)
insert into Locations values('L005','Chittor',null)
insert into Locations values('L006','Kadapa',null)
insert into Locations values('L007','Ananthapur',null)
insert into Locations values('L008','Nellore',null)
insert into Locations values('L009','Vijayawada',null)
insert into Locations values('L010','Vishakaptanam',null)
insert into Locations values('L011','Hyderabad',null)
insert into Locations values('L012','Bangolre',null)
insert into Locations values('L013','Kerala',null)
insert into Locations values('L014','Chittor',null) 


create table Authentication
(
	Verfication_Number		varchar(10)			PRIMARY KEY,
	Verfication_Name		varchar(20)			not null,
	Customer_ID				varchar(10)			FOREIGN KEY references Customer(Customer_ID),
)

insert into Authentication values('V001','Driving License','C001')
insert into Authentication values('V002','Aadhaar Card','C002')
insert into Authentication values('V003','Voter ID','C003')
insert into Authentication values('V004','Pan Card','C004')
insert into Authentication values('V005','Driving License','C005')
insert into Authentication values('V006','Driving License','C006')
insert into Authentication values('V007','Driving License','C007')
insert into Authentication values('V008','Driving License','C008')
insert into Authentication values('V009','Aadhaar Card','C009')
insert into Authentication values('V010','Driving License','C010')
insert into Authentication values('V011','Driving License','C011')
insert into Authentication values('V012','Pan Card','C012')
insert into Authentication values('V013','Driving License','C013')
insert into Authentication values('V014','Driving License','C014')
insert into Authentication values('V015','Voter ID','C015')


create table Rental
(
	Rental_ID		varchar(10)			primary key,
	Customer_ID		varchar(10)			foreign key references Customer(Customer_ID),
	Bike_ID			varchar(10)			foreign key references Bike(Bike_ID),
	Employee_ID		varchar(10)			foreign key references Employee(Employee_ID),
	Rental_Date		date				not null,
	Return_Date		date				not null,
	Location_ID		varchar(10)			foreign key references Locations(Location_ID),
)



insert into Rental values('R001','C001','B001','E001','2023-01-01','2023-01-02','L001')
insert into Rental values('R002','C002','B002','E002','2023-01-06','2023-01-08','L002')
insert into Rental values('R003','C003','B003','E003','2023-01-10','2023-01-17','L003')
insert into Rental values('R004','C004','B004','E004','2023-02-01','2023-02-02','L004')
insert into Rental values('R005','C005','B005','E005','2023-02-05','2023-02-10','L005')
insert into Rental values('R006','C006','B006','E006','2023-01-09','2023-01-16','L006')
insert into Rental values('R007','C007','B007','E007','2023-01-16','2023-01-26','L007')
insert into Rental values('R008','C008','B008','E008','2023-01-13','2023-01-20','L008')
insert into Rental values('R009','C009','B009','E009','2023-03-05','2023-03-10','L009')
insert into Rental values('R010','C010','B010','E010','2023-03-10','2023-03-11','L010')
insert into Rental values('R011','C011','B011','E011','2023-03-15','2023-03-25','L011')
insert into Rental values('R012','C012','B012','E012','2023-02-10','2023-02-20','L012')
insert into Rental values('R013','C013','B013','E013','2023-04-01','2023-04-05','L013')
insert into Rental values('R014','C014','B014','E014','2023-04-03','2023-04-10','L014')
insert into Rental values('R015','C015','B001','E001','2023-04-10','2023-04-15','L001')
insert into Rental values('R016','C001','B016','E002','2023-04-20','2023-04-30','L002')
insert into Rental values('R017','C002','B001','E003','2023-03-26','2023-03-27','L003')
insert into Rental values('R018','C003','B002','E004','2023-05-05','2023-05-10','L001')
insert into Rental values('R019','C004','B003','E005','2023-05-01','2023-05-10','L003')
insert into Rental values('R020','C005','B004','E006','2023-05-20','2023-05-30','L003')


insert into Rental values('R022','C001','B001','E001','2023-04-10','2023-04-15','L001')
insert into Rental values('R023','C001','B003','E002','2023-04-20','2023-04-30','L002')
insert into Rental values('R024','C001','B001','E003','2023-03-26','2023-03-27','L003')
insert into Rental values('R025','C001','B013','E004','2023-05-05','2023-05-10','L001')
insert into Rental values('R026','C002','B011','E005','2023-05-01','2023-05-10','L003')
insert into Rental values('R027','C005','B010','E006','2023-05-20','2023-05-30','L003')


create table Bike_Accessories
(
	Item_ID		varchar(10)		primary key,
	Item_Name	varchar(30)		not null,
	Rent_ID	varchar(10)			not null,
	Rent_Cost	money			not null,
)
select * from Bike_Accessories
insert into Bike_Accessories values('I001','Helmet','R101',100)
insert into Bike_Accessories values('I002','Gloves','R101',50)
insert into Bike_Accessories values('I003','Racing Suit','R101',500)
insert into Bike_Accessories values('I004','Helmet','R101',100)
insert into Bike_Accessories values('I005','Helmet','R101',100)
insert into Bike_Accessories values('I006','Helmet','R101',100)
insert into Bike_Accessories values('I007','Gloves','R101',50)
insert into Bike_Accessories values('I008','Helmet','R101',100)
insert into Bike_Accessories values('I009','Gloves','R101',50)
insert into Bike_Accessories values('I010','Helmet','R101',100)

insert into Bike_Accessories values('I011','Helmet','R102',100)
insert into Bike_Accessories values('I012','Gloves','R103',50)
insert into Bike_Accessories values('I013','Racing Suit','R104',500)
insert into Bike_Accessories values('I014','Helmet','R105',100)
insert into Bike_Accessories values('I015','Helmet','R106',100)



create table Accessories_Rental
(
	Item_ID		varchar(10)		foreign key references Bike_Accessories(Item_ID),
	Customer_ID	varchar(10)		foreign key references Customer(Customer_ID),
	Rent_Status	varchar(6)		not null check(Rent_Status='Paid' or Rent_Status='Unpaid')
)


insert into Accessories_Rental values('I001','C001','Paid')
insert into Accessories_Rental values('I002','C002','Unpaid')
insert into Accessories_Rental values('I003','C003','Paid')
insert into Accessories_Rental values('I004','C004','Paid')
insert into Accessories_Rental values('I006','C005','Unpaid')
insert into Accessories_Rental values('I005','C006','Paid')
insert into Accessories_Rental values('I007','C007','Paid')
insert into Accessories_Rental values('I008','C008','Paid')
insert into Accessories_Rental values('I009','C009','Paid')
insert into Accessories_Rental values('I010','C010','Unpaid')

insert into Accessories_Rental values('I011','C001','Paid')
insert into Accessories_Rental values('I012','C002','Unpaid')
insert into Accessories_Rental values('I013','C003','Paid')
insert into Accessories_Rental values('I014','C004','Paid')

insert into Accessories_Rental values('I015','C001','Paid')


create table Payment
(
	Payment_Id		varchar(10)		Primary Key,
	Rental_Id		varchar(10)		Foreign Key  references Rental(Rental_ID),
	Total_Price		Money			Not Null,
	Payment_Date	Date			Not Null,
	Payment_Status	varchar(6)		not null check (Payment_Status='Paid' or Payment_Status='Unpaid'),
)


insert into Payment values('P001','R001',400,'2023-01-01','Unpaid')
insert into Payment values('P002','R002',600,'2023-01-06','Unpaid')
insert into Payment values('P003','R003',2100,'2023-01-10','Paid')
insert into Payment values('P004','R004',500,'2023-02-01','Unpaid')
insert into Payment values('P005','R005',4000,'2023-02-05','Paid')
insert into Payment values('P006','R006',3500,'2023-01-09','Paid')
insert into Payment values('P007','R007',4000,'2023-01-16','Paid')
insert into Payment values('P008','R008',2800,'2023-01-13','Paid')
insert into Payment values('P009','R009',2500,'2023-03-05','Paid')
insert into Payment values('P010','R010',200,'2023-03-10','Unpaid')
insert into Payment values('P011','R011',4000,'2023-03-15','Paid')
insert into Payment values('P012','R012',5000,'2023-02-10','Paid')
insert into Payment values('P013','R013',1600,'2023-04-01','Paid')
insert into Payment values('P014','R014',2800,'2023-04-03','Paid')
insert into Payment values('P015','R015',2500,'2023-04-10','Paid')
insert into Payment values('P016','R016',8000,'2023-04-20','Paid')
insert into Payment values('P017','R017',400,'2023-03-26','Unpaid')
insert into Payment values('P018','R018',1500,'2023-05-05','Paid')
insert into Payment values('P019','R019',2700,'2023-05-01','Paid')
insert into Payment values('P020','R020',5000,'2023-05-20','Paid')

create table Maintenance
(
	Maintenance_ID		varchar(10)		primary key,
	Bike_ID				varchar(10)		FOREIGN KEY references Bike(Bike_ID),
	Employee_ID			varchar(10)		foreign key references Employee(Employee_ID),
	Maintenance_Date	date			null,
)

insert into Maintenance values('M001','B001','E001','2023-01-05')
insert into Maintenance values('M002','B002','E002','2023-02-15')
insert into Maintenance values('M003','B003','E003','2023-03-08')
insert into Maintenance values('M004','B004','E004','2023-02-26')
insert into Maintenance values('M005','B005','E005','2023-03-13')
insert into Maintenance values('M006','B006','E006','2023-05-05')
insert into Maintenance values('M007','B007','E007','2023-06-18')
insert into Maintenance values('M008','B008','E008','2023-03-14')
insert into Maintenance values('M009','B009','E009','2023-06-05')
insert into Maintenance values('M010','B010','E010','2023-07-11')
insert into Maintenance values('M011','B011','E011','2023-07-22')
insert into Maintenance values('M012','B012','E012','2023-07-24')
insert into Maintenance values('M013','B013','E013','2023-01-30')
insert into Maintenance values('M014','B014','E014','2023-01-31')
insert into Maintenance values('M015','B015','E001','2023-08-16')
insert into Maintenance values('M016','B016','E002','2023-08-29')


create  table Review
(
	Review_ID		varchar(10)		primary key,
	Customer_ID		varchar(10)		foreign key references Customer(Customer_ID),
	Bike_ID			varchar(10)		foreign key references Bike(Bike_ID),
	Rating			integer		not null check(Rating='1' or Rating='2' or Rating='3' or Rating='4' or Rating='5'),
)


insert into Review values('RE001','C001','B016',5)
insert into Review values('RE002','C002','B002',1)
insert into Review values('RE003','C003','B003',2)
insert into Review values('RE004','C004','B004',3)
insert into Review values('RE005','C005','B005',4)
insert into Review values('RE006','C006','B006',5)
insert into Review values('RE007','C007','B007',1)
insert into Review values('RE008','C008','B008',2)
insert into Review values('RE009','C009','B009',3)
insert into Review values('RE010','C010','B010',4)
insert into Review values('RE011','C011','B011',5)
insert into Review values('RE012','C012','B012',1)
insert into Review values('RE013','C013','B013',3)
insert into Review values('RE014','C014','B014',4)
insert into Review values('RE015','C015','B015',5)



--Query1
--Find the customers who took bike B001 for rent

select * from Customer
where Customer_ID in 
(
select Customer_ID
From Rental
where Bike_ID ='B001')



--Query2
--Find the rental history of a specific customer, including the bike details

SELECT Rental.rental_id, Rental.Rental_Date, Rental.Return_Date, Bike.Bike_ID, Bike.Bike_Brand, Bike.Bike_Model
FROM Rental
JOIN Bike ON Rental.Bike_ID = Bike.Bike_ID
WHERE Rental.Customer_ID = 'C001';


--Query3
--Calculate the average rating per bike model


SELECT Bike.Bike_Brand,Bike.Bike_Model, AVG(Rating) AS average_rating
FROM Review
JOIN Bike ON Review.Bike_ID = Bike.Bike_ID
GROUP BY Bike.Bike_Brand,Bike.Bike_Model;


--Query4
--Find the bikes with their rental count


SELECT Bike.Bike_Brand,Bike.Bike_Model, COUNT(*) AS rental_count
FROM Rental
JOIN Bike ON Rental.Bike_ID = Bike.Bike_ID
GROUP BY Bike.Bike_Brand,Bike.Bike_Model
ORDER BY rental_count DESC


--Query5
--Find the average rental duration for each bike

SELECT Bike.Bike_Brand,Bike.Bike_Model, AVG(DATEDIFF(day,Rental_Date, Return_Date)) AS average_duration
FROM Rental
JOIN Bike ON Rental.Bike_ID = Bike.Bike_ID
GROUP BY Bike.Bike_Brand,Bike.Bike_Model;

--Query6
--Count the number of rentals per location:

SELECT Location_id, COUNT(*) AS rental_count
FROM Rental
GROUP BY Location_id;

--Query7
--Find the average rating for each bike 

SELECT Bike_ID, AVG(Rating) AS average_rating 
FROM Review 
GROUP BY Bike_ID 
ORDER BY average_rating DESC 

--Query8
--find all rentals along with the payment and maintenance information



SELECT Rental.Rental_ID,Rental_Date,Location_ID, Payment_ID,Total_Price,Payment_Status, Maintenance_ID,Maintenance_Date
FROM Rental
JOIN Payment ON Rental.Rental_ID = Payment.Rental_ID
JOIN Maintenance ON Rental.Bike_ID = Maintenance.Bike_ID;


--Query9
--Find the rentals made by a specific employee with the associated bike information


SELECT Rental_ID,Rental.Bike_ID,Location_ID, Bike_Model,Rent_Cost
FROM Rental
JOIN Bike ON Rental.Bike_ID = Bike.Bike_ID
WHERE Rental.Employee_ID = 'E001';


--Query10
--Find the rentals that have bike accessories rented along with the associated accessory information

SELECT r.Rental_ID,r.Customer_ID,r.Bike_ID,ba.Item_Name,ba.Rent_Cost
FROM Rental r
JOIN Accessories_Rental ar ON r.Customer_ID = ar.Customer_ID
JOIN Bike_Accessories ba ON ar.Item_ID = ba.Item_ID;



--Query11
--Find all rentals along with the payment and review information


SELECT r.Rental_ID,r.Customer_ID,r.Bike_ID,p.Payment_Id,p.Payment_Status,re.Rating
FROM Rental r
JOIN Payment p ON r.Rental_ID = p.Rental_ID
JOIN Review re ON r.Customer_ID = re.Customer_ID;


--Query12
--Retrieve the rental details along with the customer, bike information



SELECT r.Rental_ID,r.Bike_ID,r.Customer_ID,C.Customer_Name, b.Bike_Model,b.Rent_Cost
FROM Rental r
JOIN Customer c ON r.customer_id = c.customer_id
JOIN Bike b ON r.bike_id = b.bike_id



--Query13
--Find the Customer details who took bike whose rent cost is greater than 400
select * from Customer 
where CUstomer_ID in
(
select Customer_ID from Rental
where Bike_ID in ( 
select Bike_ID from Bike 
where Rent_Cost >400))



--Query14
--Find the maintenance details along with the bike and employee information



SELECT m.Maintenance_ID,m.Maintenance_Date, b.Bike_ID,b.Bike_Model, e.Employee_Id,e.Employee_Name,e.Salary
FROM Maintenance m
JOIN Bike b ON m.Bike_ID = b.Bike_ID
JOIN Employee e ON m.Employee_ID = e.Employee_ID;


--Query15
--Find the customers who paid their rent

select * from Customer 
where Customer_ID in (
select Customer_ID from Rental
where Rental_ID in (
select Rental_ID from Payment
where Payment_Status ='Paid'))


--Query16
--Determine the total number of bike accessories rented by each customer



SELECT ar.Customer_ID, COUNT(*) AS total_accessories_rented
FROM Accessories_Rental AS ar
GROUP BY ar.Customer_ID;


--Query17
--Calculate the average rental duration for each bike type


SELECT b.Bike_Model, AVG(DATEDIFF(day,r.Rental_Date, r.Return_Date)) AS average_duration_days
FROM Bike AS b
INNER JOIN Rental AS r ON b.Bike_Id = r.Bike_Id
GROUP BY b.Bike_Model;

--Query18
--Find the employee details on descending of their salary 

SELECT Employee_ID,Employee_Name, SUM(Salary) AS total_revenue
FROM Employee
GROUP BY Employee_ID,Employee_Name
ORDER BY total_revenue DESC



--Query19
--find the Total rental assigned for each employee


SELECT Employee_ID, COUNT(*) AS total_rentals_assigned
FROM Rental
GROUP BY Employee_ID
ORDER BY total_rentals_assigned DESC



--Query20
--Find the customers who have rented the most number of accessories


SELECT Customer_ID, COUNT(*) AS total_accessories 
FROM Accessories_Rental GROUP BY Customer_ID 
HAVING COUNT(*) = (SELECT MAX(total_accessories) 
					FROM (SELECT Customer_ID, COUNT(*) AS total_accessories 
					FROM Accessories_Rental GROUP BY Customer_ID)
					AS accessories_rental
					);



--Query21
--Find the bikes that require maintenance

SELECT * FROM Bike 
WHERE Bike_ID IN 
				(
				SELECT Bike_ID 
				FROM Maintenance
				);


--Query22
--Find the customers who have rented bikes for a duration longer than the average rental duration



SELECT * FROM Customer 
WHERE Customer_ID IN (
					SELECT Customer_ID FROM Rental 
					GROUP BY Customer_ID 
					HAVING AVG(DATEDIFF(day,rental_date, return_date)) 
					> (SELECT AVG(DATEDIFF(day,rental_date, return_date)) FROM Rental));


--Query23
--Find the bikes that have not been rented by a customer C001



SELECT * FROM Bike 
WHERE Bike_ID NOT IN (
						SELECT Bike_ID FROM Rental 
						WHERE Customer_ID = 'C001');



--Query24
--Find the customers who have rented the most expensive bikes



select* from Customer 
where Customer_ID in (
SELECT Customer_ID FROM Rental 
WHERE Bike_ID IN (
						SELECT Bike_ID FROM Bike 
						WHERE Rent_Cost = 
										(SELECT MAX(Rent_Cost) 
										FROM Bike
										)
					));



--Query25
--Find the average rating of each bike model based on customer reviews



SELECT Review.Customer_ID,Bike_Model, AVG(rating) AS average_rating 
FROM Bike 
INNER JOIN Review ON Bike.bike_id = Review.bike_id 
GROUP BY Bike_Model,Review.Customer_ID;



--Query26
--Find the customers who have rented bikes in multiple locations



SELECT * FROM Customer 
WHERE customer_id IN (
						SELECT customer_id FROM Rental 
						GROUP BY customer_id 
						HAVING COUNT(DISTINCT location_id) > 1
					);



--Query27
--Find the total revenue generated from bike rentals in the pondicherry


select sum(Rent_Cost) as Total_Revenue
from Bike where Bike_ID in(
SELECT distinct(Bike_ID) FROM Rental 
WHERE location_id IN (
						SELECT location_id FROM Locations 
						WHERE location_name = 'Pondicherry'
					)
			);


--Query28
--Find the customers who have rented Activa


SELECT * FROM Customer 
WHERE customer_id IN (
						SELECT customer_id FROM Rental 
						WHERE bike_id IN (
											SELECT bike_id FROM Bike
											WHERE bike_model = 'Activa'));


--Query29
--Find the customers who have rented bikes but didn't pay their rent



SELECT * FROM Customer 
WHERE customer_id IN (SELECT customer_id FROM Rental 
						where rental_id in( SELECT rental_id FROM Payment 
						where Payment_Status='Unpaid'));


--Query30
--Find the employees who have rented bikes in multiple locations


SELECT * FROM Employee 
WHERE employee_id IN (SELECT employee_id FROM Rental 
						GROUP BY employee_id 
						HAVING COUNT(DISTINCT location_id) > 1);



--Query31
--Find the customer details who submitted their Driving license

select * from customer 
where customer_id in (
select customer_id from Authentication 
where Verfication_Name ='Driving License')


--Query32
--Find the customers who have rented the same bike multiple times


SELECT * FROM Customer
WHERE customer_id IN (SELECT customer_id 
						FROM Rental 
						GROUP BY customer_id, bike_id 
						HAVING COUNT(*) > 1);

--Query33
--Create a view to display the total revenue per customer:

CREATE VIEW RevenuePerCustomer AS
SELECT c.customer_id, c.Customer_Name, SUM(p.Total_Price) AS total_revenue
FROM Customer c
left join rental r on c.Customer_ID=r.Customer_ID
LEFT JOIN Payment p ON r.Rental_ID = p.Rental_Id
GROUP BY c.customer_id, c.Customer_Name;

select * from RevenuePerCustomer


--Query34
--Find the bikes that have been rented by customers who have rented bike accessories


SELECT * FROM Bike WHERE bike_id IN
(SELECT bike_id FROM Rental 
WHERE customer_id IN 
(SELECT customer_id FROM Accessories_rental));


--Query35
--Find the customers who have rented the same bike multiple times


SELECT * FROM Customer WHERE customer_id IN 
(SELECT customer_id FROM Rental 
GROUP BY customer_id, bike_id 
HAVING COUNT(*) > 1);


--Query36
--Find the bikes that have been rented the most number of time


SELECT * FROM Bike WHERE bike_id IN 
(SELECT bike_id FROM Rental 
GROUP BY bike_id 
HAVING COUNT(*) = (SELECT MAX(cnt) 
					FROM (SELECT bike_id, COUNT(*) AS cnt 
					FROM Rental GROUP BY bike_id) AS subquery)
					);



--Query37
--Find the locations with the highest number of bike rentals



SELECT * FROM Locations WHERE location_id IN 
(SELECT location_id FROM Rental 
GROUP BY location_id 
HAVING COUNT(*) = (SELECT MAX(cnt) 
					FROM (SELECT location_id, COUNT(*) AS cnt 
					FROM Rental GROUP BY location_id) AS subquery));


--Query38
--Find the Customers who submitted their authentication other than Driving license



select * from customer 
where customer_id not in (
select customer_id from Authentication 
where Verfication_Name ='Driving License')



--Query39
--Create a view to show the number of rentals per bike type



CREATE VIEW RentalsPerBikeType AS
SELECT Bike.bike_type, COUNT(Rental.rental_id) AS num_rentals
FROM Bike
LEFT JOIN Rental ON Bike.bike_id = Rental.bike_id
GROUP BY Bike.bike_type;


select * from RentalsPerBikeType


--Query40
--Find the bikes that have been rented by customers who have made payments for the same rental



SELECT * FROM Bike WHERE bike_id IN 
(SELECT bike_id FROM Rental 
WHERE rental_id IN (SELECT rental_id FROM Payment 
					WHERE customer_id = Rental.customer_id
					));




--Query41
--Find the maintenance records for bikes along with the rental details:



SELECT Maintenance_ID,m.Bike_ID,m.Maintenance_Date,b.Bike_Model,b.Rent_Cost,r.Rental_ID,r.Rental_Date FROM Maintenance m
JOIN bike b ON m.Bike_ID = b.Bike_Id
join rental r on r.Bike_ID=b.Bike_Id;



--Query42
-- create a view to display the rentals assigned to the each employee


CREATE VIEW RentalsPerEmployee AS
SELECT Employee.employee_id, Employee.Employee_Name, COUNT(Rental.rental_id) AS num_rentals
FROM Employee
LEFT JOIN Rental ON Employee.employee_id = Rental.employee_id
GROUP BY Employee.employee_id, Employee.Employee_Name;


select * from RentalsPerEmployee
order by num_rentals desc


--Query43
--Create a view to display the top-rated bikes based on customer reviews


CREATE VIEW TopRatedBikes AS
SELECT Bike.bike_id, Bike.Bike_Model, AVG(Review.rating) AS average_rating
FROM Bike
JOIN Review ON Bike.bike_id = Review.bike_id
GROUP BY Bike.bike_id, Bike.Bike_Model;


select * from TopRatedBikes 
order by average_rating desc



--Query44
--Find the total number of rentals per month


SELECT YEAR(Rental_Date) AS Year, MONTH(Rental_Date) AS Month, COUNT(*) AS TotalRentals
FROM Rental
GROUP BY YEAR(Rental_Date),  MONTH(Rental_Date);


--Query45
--Calculate the total revenue generated by customer


SELECT c.Customer_ID,Customer_Name, SUM(Total_Price) AS TotalRevenue
FROM Payment
JOIN Rental ON Payment.Rental_ID = Rental.Rental_ID
JOIN Customer c ON Rental.Customer_ID = c.Customer_ID
GROUP BY c.Customer_ID,Customer_Name;


--Query46
--Determine the total number of rentals by customer on the descending order


SELECT Customer_Name, COUNT(*) AS TotalRentals
FROM Rental
JOIN Customer ON Rental.Customer_ID = Customer.Customer_ID
GROUP BY Customer_Name
order by TotalRentals desc;


--Query47
--Find the total revenue generated by location in descending order



SELECT Location_Name, SUM(Total_Price) AS TotalRevenue
FROM Payment
JOIN Rental ON Payment.Rental_ID = Rental.Rental_ID
JOIN Locations ON Rental.Location_ID = Locations.Location_ID
GROUP BY Location_Name
order by TotalRevenue desc;


--Query48
--Calculate the total number of rentals by location

SELECT l.Location_ID, Location_Name, COUNT(*) AS TotalRentals
FROM Rental
JOIN Locations l ON Rental.Location_ID = l.Location_Id
GROUP BY l.Location_ID,Location_Name
order by TotalRentals desc;

--Query49
--Calculate the average payment amount per customer


SELECT c.Customer_ID,Customer_name, AVG(Total_Price) AS avg_payment_amount
FROM Payment
join rental on Payment.Rental_Id =Rental.Rental_ID
JOIN Customer c ON Rental.Customer_ID=c.Customer_ID
GROUP BY c.Customer_ID,Customer_name
order by avg_payment_amount desc;




--Query50
--Find the rental details who submitted their driving license


select * from rental 
where customer_id in (
select customer_id from Authentication 
where Verfication_Name ='Driving License')

