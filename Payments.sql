CREATE TABLE Payments (ID INT PRIMARY KEY,TO_NAME VARCHAR(40),FROM_NAME VARCHAR(40),
			  AMOUNT INT ,CURRENCY VARCHAR(40),BANK_NAME VARCHAR(40),PAYMENT_STATUS VARCHAR(40));
			  
			  INSERT INTO Payments (ID ,TO_NAME,FROM_NAME,
			  AMOUNT  ,CURRENCY ,BANK_NAME ,PAYMENT_STATUS)
			  VALUES(1,'Kamal','Qorxmaz',1000,'AZN','Kapital','Pending'),
			 (2,'Hikmet','Arzu',1200,'AZN','PasaBank','Pending'),
			(3,'Namiq','Meryem',500,'AZN','BankRespublika','Pending'),
			(4,'Resul','Ayten',350,'TL','Kapital','Pending'),
			(5,'Nahid','Leyla',132,'USD','BankRespublika','Pending'),
			(6,'Rauf','Lale',444,'TL','PasaBank','Pending'),
			(7,'Mursel','Elsen',1000,'USD','BankRespublika','Pending'),
			(8,'Serdar','Sebine',405,'AZN','Kapital','Pending'),
			(9,'Eziz','Vahid',220,'TL','BankRespublika','Pending'),
			(10,'Vaqif','Sebnem',150,'AZN','Kapital','Pending'),
			(11,'Raul','Leman',190,'USD','Unibank','Pending'),
			(12,'Eldar','Qafur',212,'AZN','BankRespublika','Pending'),
			(13,'Nezrin','Elmar',350,'TL','Kapital','Pending'),
			(14,'Malik','Ramiz',770,'AZN','PasaBank','Pending'),
			(15,'Elnur','Xedice',221,'USD','PasaBank','Pending'),
			(16,'Aynur','Arife',343,'TL','Kapital','Pending'),
			(17,'Elvira','Kamal',600,'USD','Unibank','Pending');
			
			
			UPDATE Payments
			SET PAYMENT_STATUS = 'Done'
			WHERE ID = 1 OR ID = 2 OR ID=3 OR ID=11 OR ID = 12 OR ID = 15 OR ID = 17 OR ID = 4 OR ID = 9 OR ID=8;
			
			UPDATE Payments 
			SET PAYMENT_STATUS = 'Rejected'
			WHERE ID = 4 OR ID= 2 OR ID =14 OR ID=13;
		
			
			 SELECT * FROM PAYMENTS WHERE PAYMENT_STATUS = 'Done'
			 SELECT * FROM PAYMENTS ORDER BY AMOUNT ASC
			 SELECT * FROM PAYMENTS WHERE CURRENCY = 'AZN'
			 DELETE * FROM PAYMENTS WHERE PAYMENT_STATUS = 'Rejected'
			 
			 CREATE TABLE store1(ID INT PRIMARY KEY,PRODUCT_NAME VARCHAR(40))
			 CREATE TABLE store2(ID INT PRIMARY KEY,PRODUCT_NAME VARCHAR(40))
			 
			 INSERT INTO store1(ID, PRODUCT_NAME)
			 VALUES(1,'Fish'),
			 (2,'Beef'),
			 (3,'Egg'),
			 (4,'Milk');
			  INSERT INTO store2(ID, PRODUCT_NAME)
			 VALUES(1,'Potato'),
			 (2,'Cucumber'),
			 (3,'Egg'),
			 (4,'Milk');
			 
			 SELECT store1.ID ID_FirstStore,store1.PRODUCT_NAME ProductOfFirstStore,
			 store2.ID ID_SecondStore,store2.PRODUCT_NAME ProductOfSecondStore FROM 
			 store1 INNER JOIN store2 ON store1.PRODUCT_NAME = store2.PRODUCT_NAME;
			 
			 
			 
			CREATE TABLE Employees_1 (Employee_id INT PRIMARY KEY ,Employee_name VARCHAR(40) , Employee_surname VARCHAR(40),
									  Employee_age INT, Employee_number INT)
			 CREATE TABLE Employees_2 (Employee_id INT PRIMARY KEY ,Employee_name VARCHAR(40) , Employee_surname VARCHAR(40),
									  Employee_age INT, Employee_number INT)
			 
			 INSERT INTO Employees_1 (Employee_id,Employee_name,Employee_surname,Employee_age,Employee_number)
			 VALUES(1,'Kamal','Aliyev',19,5655),
			 (2,'Hesen','Memmedov',19,5655),
			 (3,'Cavad','Hesenli',22,5654),
			 (4,'Turkan','Memmedzade',27,5612);
			 
			  INSERT INTO Employees_2 (Employee_id,Employee_name,Employee_surname,Employee_age,Employee_number)
			 VALUES(1,'Qorxmaz','Metedov',40,5664),
			 (2,'Aytac','Aliyeva',22,5667),
			 (3,'Meryem','Aliyeva',24,5687),
			 (4,'Veli','Veliyev',27,5612);
			 
			 SELECT Employees_1.Employee_name as emp_namefrom1,
			 Employees_1.Employee_age as emp_agefrom1,
			 Employees_2.Employee_name as emp_namefrom2,
			 Employees_2.Employee_age as emp_agefrom2
			 FROM 
			 Employees_1 INNER JOIN Employees_2 ON Employees_1.Employee_age = Employees_2.Employee_age
			 
			 			  INSERT INTO Employees_2 (Employee_id,Employee_name,Employee_surname,Employee_age,Employee_number)
			 VALUES(5,'Orxan','Oruczade',22,5666);
			 
			  SELECT Employees_1.Employee_name as emp_namefrom1,
			 Employees_1.Employee_age as emp_agefrom1,
			 Employees_2.Employee_name as emp_namefrom2,
			 Employees_2.Employee_age as emp_agefrom2
			 FROM 
			 Employees_1 LEFT JOIN Employees_2 ON Employees_1.Employee_age = Employees_2.Employee_age
			 
			  SELECT Employees_1.Employee_name as emp_namefrom1,
			 Employees_1.Employee_age as emp_agefrom1,
			 Employees_2.Employee_name as emp_namefrom2,
			 Employees_2.Employee_age as emp_agefrom2
			 FROM 
			 Employees_1 RIGHT JOIN Employees_2 ON Employees_1.Employee_age = Employees_2.Employee_age
			 
			  SELECT Employees_1.Employee_name as emp_namefrom1,
			 Employees_1.Employee_age as emp_agefrom1,
			 Employees_2.Employee_name as emp_namefrom2,
			 Employees_2.Employee_age as emp_agefrom2
			 FROM 
			 Employees_1 FULL JOIN Employees_2 ON Employees_1.Employee_age = Employees_2.Employee_age