1. Creating the superstore_staging table
CREATE TABLE superstore_staging(
	Row_ID VARCHAR(100),
    Order_ID VARCHAR(20),
    Order_Date VARCHAR(100),
    Ship_Date VARCHAR(100),
    Ship_mode VARCHAR(30),
    Customer_ID VARCHAR(20),
    Customer_name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_code VARCHAR(20),
    Region VARCHAR(50),
    Product_ID VARCHAR(20),
    Category VARCHAR(30),
    Sub_Category VARCHAR(30),
    Product_Name VARCHAR(50),
    Sales VARCHAR(100),
    Quantity VARCHAR(100),
    Discount VARCHAR(100),
    Profit VARCHAR(100));

2. Creating the Customer table
CREATE TABLE Customer(
	Customer_ID VARCHAR(50) PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Segment VARCHAR(50) NOT NULL
);

3. Creating the Product table
CREATE TABLE Product(
	Product_ID VARCHAR(50) PRIMARY KEY,
    Product_Name VARCHAR(200) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Sub_Category VARCHAR(100) NOT NULL
    );

4. Creating the Orders table
CREATE TABLE Orders(
	Order_ID VARCHAR(50) PRIMARY KEY,
    Customer_ID VARCHAR(50) NOT NULL,
    Order_Date DATE NOT NULL,
    Ship_Date DATE,
    Ship_Mode VARCHAR(100),
    Country VARCHAR(100) NOT NULL,
    Region VARCHAR(100) NOT NULL,
    State VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Postal_Code VARCHAR(20) NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

5. Creating the Order_Detail table
CREATE TABLE Order_Detail(
	OrderDetail_ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_ID VARCHAR(50) NOT NULL,
    Product_ID VARCHAR(50) NOT NULL,
    Quantity INT NOT NULL,
    Sales DECIMAL(10,2) NOT NULL,
    Discount DECIMAL(5,2) DEFAULT 0,
    Profit DECIMAL(10,2) NOT NULL,
    FOREIGN KEY(Order_ID) REFERENCES Orders(Order_ID),
	FOREIGN KEY(Product_ID) REFERENCES Product(Product_ID)
    );


6. Inserting data to Customer table
INSERT INTO Customer (Customer_ID, Customer_Name, Segment)
	SELECT DISTINCT Customer_ID, Customer_Name, Segment
    FROM superstore_staging;

7. Inserting data to Product table   
INSERT INTO Product (Product_ID, Product_Name, Category, Sub_Category)
	SELECT Product_ID, MIN(Product_Name), MIN(Category), MIN(Sub_Category)
    FROM superstore_staging GROUP BY Product_ID;

8. Inserting data to Orders table
INSERT INTO Orders(
    Order_ID,
    Order_Date,
    Customer_ID,
    Country,
    Region,
    City,
    State,
    Postal_Code,
    Ship_Date,
    Ship_Mode
)
SELECT 
    Order_ID,
    STR_TO_DATE(MIN(Order_Date), '%m/%d/%Y'),
    MIN(Customer_ID),
    MIN(Country),
    MIN(Region),
    MIN(City),
    MIN(State),
    MIN(Postal_Code),
    STR_TO_DATE(MIN(Ship_Date), '%m/%d/%Y'),
    MIN(Ship_Mode)
FROM superstore_staging
GROUP BY Order_ID;

9. Inserting data to order_detail table
INSERT INTO order_detail
(
    Order_ID,
    Product_ID,
    Quantity,
    Sales,
    Discount,
    Profit
)
SELECT
    Order_ID,
    Product_ID,
    CAST(Quantity AS SIGNED),
    CAST(Sales AS DECIMAL(10,2)),
    CAST(Discount AS DECIMAL(5,2)),
    CAST(Profit AS DECIMAL(10,2))
FROM superstore_staging;





