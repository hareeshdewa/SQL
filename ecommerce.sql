IF OBJECT_ID('CUSTOMERS') IS NULL
CREATE TABLE CUSTOMERS(
CUSTOMER_ID INT PRIMARY KEY,
CUSTOMER_NAME VARCHAR(100),
EMAIL VARCHAR(100),
ADDRESS VARCHAR(255),
PHONE_NUMBER BIGINT );

IF OBJECT_ID('CATEGORIES') IS NULL
CREATE TABLE CATEGORIES(
CATEGORY_ID INT PRIMARY KEY,
CATEGORY_NAME VARCHAR(100));

IF OBJECT_ID('WEBSITES') IS NULL
CREATE TABLE WEBSITES(
WEBSITE_ID INT PRIMARY KEY,
WEBSITE_NAME VARCHAR(100));

IF OBJECT_ID('PRODUCTS') IS NULL
CREATE TABLE PRODUCTS(
PRODUCT_ID INT PRIMARY KEY,
PRODUCT_NAME VARCHAR(100),
PRICE DECIMAL,
DESCRIPTION VARCHAR(255),
CATEGORY_ID INT,
FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORIES(CATEGORY_ID));

--BILL AMOUNT

IF OBJECT_ID('ORDERS') IS NULL
CREATE TABLE ORDERS(
ORDER_ID INT PRIMARY KEY,
CUSTOMER_ID INT,
ORDER_DATE DATE,
TOTAL_AMOUNT DECIMAL,
FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID));

--BILL ITEM AMOUNT
IF OBJECT_ID('ORDER_DETAILS') IS NULL
CREATE TABLE ORDER_DETAILS(
ORDERDETAIL_ID INT PRIMARY KEY,
ORDER_ID INT,
PRODUCT_ID INT,
CUSTOMER_ID INT,
WEBSITE_ID INT,
QUANTITY INT,
PRICE DECIMAL,
FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),
FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID),
FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID),
FOREIGN KEY (WEBSITE_ID) REFERENCES WEBSITES(WEBSITE_ID));


INSERT INTO CUSTOMERS(customer_id, customer_name, email, address, phone_number) 
VALUES (1, 'Yuvan', 'yuvan@example.com', 'Namakkal', 9983232451),
       (2, 'Jane', 'jane@example.com', 'Chennai', 9876543210),
       (3, 'Mike', 'mike@example.com', 'Coimbatore', 9567890123),
       (4, 'Sarah', 'sarah@example.com', 'Hyderabad', 7890123456),
       (5, 'Davis', 'davis@example.com', 'Mumbai', 8123456789),
       (6, 'Michael', 'michael@example.com', 'Chennai', 6456789012),
       (7, 'Naveen', 'Naveen@example.com', 'Kanyakumari', 6789012345),
       (8, 'Daniel', 'daniel@example.com', 'Kochin', 9012345678),
       (9, 'James', 'james@example.com', 'Thuthukodi', 7345678901),
       (10, 'David', 'david@example.com', 'Pune', 6678901234),
       (11, 'Kumar', 'kumar@example.com', 'Delhi', 8901234567),
       (12, 'Jacob', 'jacob@example.com', 'Punjab', 9234567890),
       (13, 'Sophia', 'sophia@example.com', 'Bangalore', 8567890123),
       (14, 'Matthew', 'matthew@example.com', 'Chennai', 9890123456),
       (15, 'Krishnan', 'krishna@example.com', 'Kochin', 6123456789),
       (16, 'Priya', 'priya@example.com', 'Tiruppur', 7456789012),
       (17, 'Vicky', 'vignesh@example.com', 'Chennai', 7789012345),
       (18, 'Samantha', 'samantha@example.com', 'Bangalore', 901234678),
       (19, 'Christian', 'chris@example.com', 'Punajb', 8345678901),
       (20, 'Mia', 'mia@example.com', 'Chennai', 7678901234);


INSERT INTO Categories (category_id, category_name)
VALUES 
  (1, 'Electronics'),
  (2, 'Clothing'),
  (3, 'Home and Kitchen'),
  (4, 'Books'),
  (5, 'Sports and Fitness'),
  (6, 'Beauty and Personal Care'),
  (7, 'Toys and Games'),
  (8, 'Jewelry'),
  (9, 'Automotive'),
  (10, 'Home Improvement');
  

  INSERT INTO Products (product_id, product_name, price, description, category_id)
VALUES 
  (1, 'Smartphone', 89999.99, 'High-end smartphone with advanced features', 1),
  (2, 'T-shirt', 349.37, 'Cotton t-shirt with a logo', 2),
  (3, 'Cookware Set', 3200.00, 'Complete cookware set for all your cooking needs', 3),
  (4, 'Book', 799.43, 'Bestselling novel by a renowned author', 4),
  (5, 'Yoga Mat', 432.21, 'Durable and comfortable yoga mat for your practice', 5),
  (6, 'Shampoo', 189.00, 'Gentle and nourishing shampoo for healthy hair', 6),
  (7, 'Board Game', 248.57, 'Classic board game for hours of fun with friends and family', 7),
  (8, 'Necklace', 97000.12, 'Elegant necklace with a sparkling pendant', 8),
  (9, 'Car Charger', 6000.71, 'Fast-charging car charger for your devices', 9),
  (10, 'Power Drill', 642.10, 'Powerful drill for various home improvement projects', 10),
  (11, 'Headphones', 999.09, 'Wireless headphones with noise-cancellation feature', 1),
  (12, 'Dress', 649.62, 'Stylish dress for any occasion', 2),
  (13, 'Coffee Maker',779.00, 'Automatic coffee maker for a perfect brew', 3),
  (14, 'Notebook', 87.00, 'High-quality notebook for writing and note-taking', 4),
  (15, 'Dumbbells', 1500.49, 'Set of dumbbells for strength training at home', 5),
  (16, 'Lipstick', 12.99, 'Long-lasting lipstick in a vibrant shade', 6),
  (17, 'Puzzle', 76.86, 'Challenging puzzle to test your problem-solving skills', 7),
  (18, 'Bracelet', 539.00, 'Stylish bracelet with a unique design', 8),
  (19, 'Car Air Freshener', 116.54, 'Fragrant air freshener for your car', 9),
  (20, 'Paint Roller', 213.00, 'Versatile paint roller for smooth and even paint application', 10);

  INSERT INTO WEBSITES VALUES
  (1, 'WWW.AMAZON.COM'),
  (2,'WWW.FLIPKART.COM'),
  (3,'WWW.MYNTRA.COM');

    INSERT INTO ORDERS VALUES
  (1,1,'12-JAN-2023',0),
  (2,2,'26-JAN-2023',0),
  (3,3,'04-FEB-2023',0),
  (4,4,'31-MAR-2023',0),
  (5,5,'14-APR-2023',0),
  (6,6,'12-MAY-2023',0),
  (7,7,'26-JUN-2023',0),
  (8,8,'04-JUL-2023',0),
  (9,9,'31-AUG-2023',0),
  (10,10,'14-SEP-2023',0),
  (11,11,'12-OCT-2023',0),
  (12,12,'26-NOV-2023',0),
  (13,13,'04-DEC-2023',0),
  (14,14,'31-JAN-2024',0),
  (15,15,'14-FEB-2024',0),
  (16,16,'12-MAR-2024',0),
  (17,17,'26-APR-2024',0),
  (18,18,'04-MAY-2024',0),
  (19,19,'30-JUN-2024',0),
  (20,20,'14-JUL-2024',0);

--In term of clear Idea:

  --Order Id =1 (Bill No), Customer Id = 1 Name = Swetha
  INSERT INTO ORDER_DETAILS values(1,1,1,1,1,1,0)
  INSERT INTO ORDER_DETAILS values(2,1,2,1,1,2,0)

    --Order Id =2, Customer Id =2, Name = Hareesh
  INSERT INTO ORDER_DETAILS values(3,2,3,2,2,2,0)
  INSERT INTO ORDER_DETAILS values(4,2,4,2,2,3,0)

      --Order Id =3, Customer Id =3, Name =Chinna
  INSERT INTO ORDER_DETAILS values(5,3,4,3,3,4,0)
  INSERT INTO ORDER_DETAILS values(6,3,5,3,3,5,0)

  --Order Id =4, CustomerId =4 , Name = Pooja
  INSERT INTO ORDER_DETAILS values(7,4,6,4,1,2,0)
  INSERT INTO ORDER_DETAILS values(8,4,7,4,1,3,0)

   --Order Id =5
  INSERT INTO ORDER_DETAILS values(9,5,8,5,2,10,0)
  INSERT INTO ORDER_DETAILS values(10,5,9,5,2,20,0)

    --Order Id =6
  INSERT INTO ORDER_DETAILS values(11,6,3,6,2,2,0)
  INSERT INTO ORDER_DETAILS values(12,6,4,6,2,3,0)

 --Order Id =7
  INSERT INTO ORDER_DETAILS values(13,7,1,7,1,1,0)
  INSERT INTO ORDER_DETAILS values(14,7,2,7,1,2,0)

  --Order Id =8
  INSERT INTO ORDER_DETAILS values(15,8,3,8,2,2,0)
  INSERT INTO ORDER_DETAILS values(16,8,4,8,2,3,0)

  --Order Id = 9
  INSERT INTO ORDER_DETAILS values(17,9,1,9,1,1,0)
  INSERT INTO ORDER_DETAILS values(18,9,2,9,1,2,0)

  --Order Id = 10
  INSERT INTO ORDER_DETAILS values(19,10,3,10,2,2,0)
  INSERT INTO ORDER_DETAILS values(20,10,4,10,2,3,0)

      --Order Id =11
  INSERT INTO ORDER_DETAILS values(21,11,1,11,1,1,0)
  INSERT INTO ORDER_DETAILS values(22,11,2,11,1,2,0)

  --Order Id = 12
  INSERT INTO ORDER_DETAILS values(23,12,3,12,2,2,0)
  INSERT INTO ORDER_DETAILS values(24,12,4,12,2,3,0)

   --Order Id =13
  INSERT INTO ORDER_DETAILS values(25,13,1,13,1,1,0)
  INSERT INTO ORDER_DETAILS values(26,13,2,13,1,2,0)

    --Order Id =14
  INSERT INTO ORDER_DETAILS values(27,14,3,14,2,2,0)
  INSERT INTO ORDER_DETAILS values(28,14,4,14,2,3,0)

 --Order Id =15
  INSERT INTO ORDER_DETAILS values(29,15,1,15,1,1,0)
  INSERT INTO ORDER_DETAILS values(30,15,2,15,1,2,0)

  --Order Id =16
  INSERT INTO ORDER_DETAILS values(31,16,3,16,2,2,0)
  INSERT INTO ORDER_DETAILS values(32,16,4,16,2,3,0)

     --Order Id =17
  INSERT INTO ORDER_DETAILS values(33,17,1,17,1,1,0)
  INSERT INTO ORDER_DETAILS values(34,17,2,17,1,2,0)

    --Order Id =18
  INSERT INTO ORDER_DETAILS values(35,18,3,18,2,2,0)
  INSERT INTO ORDER_DETAILS values(36,18,4,18,2,3,0)

 --Order Id =19
  INSERT INTO ORDER_DETAILS values(37,19,1,19,1,1,0)
  INSERT INTO ORDER_DETAILS values(38,19,2,19,1,2,0)

  --Order Id =20
  INSERT INTO ORDER_DETAILS values(39,20,3,20,2,2,0)
  INSERT INTO ORDER_DETAILS values(40,20,4,20,2,3,0)
  
  UPDATE
  ORDER_DETAILS
  SET 
  Price = ORDER_DETAILS.QUANTITY * Products.PRICE
  FROM 
  ORDER_DETAILS
  join PRODUCTS on ORDER_DETAILS.PRODUCT_ID = PRODUCTS.PRODUCT_ID

  SELECT  
  ORDER_DETAILS.ORDER_ID,
  TotalAmount = SUM(ORDER_DETAILS.PRICE)
  INTO #OrderPriceDetails
  FROM ORDERS
  JOIN ORDER_DETAILS ON Orders.ORDER_ID =  ORDER_DETAILS.ORDER_ID
  GROUP BY 
  ORDER_DETAILS.ORDER_ID

  UPDATE 
  ORDERS
  SET 
  TOTAL_AMOUNT = #OrderPriceDetails.TotalAmount
  FROM
  Orders
  JOIN #OrderPriceDetails ON Orders.ORDER_ID = #OrderPriceDetails.ORDER_ID
  DROP TABLE #OrderPriceDetails
--
SELECT * FROM CUSTOMERS;
SELECT * FROM WEBSITES;
SELECT * FROM CATEGORIES;
SELECT * FROM PRODUCTS;
SELECT * FROM ORDERS;
SELECT * FROM ORDER_DETAILS;

--Order_Id
  SELECT * FROM ORDERS where ORDER_ID=2
  select * from  ORDER_DETAILS where ORDER_ID=2

  --Customer Name = 'Mike'
  SELECT CUSTOMER_Name,ORDER_DETAILS.* FROM ORDER_DETAILS
  JOIN Customers ON ORDER_DETAILS.CUSTOMER_ID = Customers.Customer_Id
  WHERE CUSTOMER_Name='Mike'

  --Product_Id=3
  select * from  ORDER_DETAILS where PRODUCT_ID=3

  --Price > 90000
    select * from  ORDER_DETAILS WHERE Price > 90000

  --Product_Id = 3 and Price > 5000
    select * from  ORDER_DETAILS WHERE Price > 5000 and PRODUCT_ID =3








