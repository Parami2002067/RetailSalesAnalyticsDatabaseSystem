SELECT COUNT(*) AS Missing_Customers
FROM orders o
LEFT JOIN customer c
ON o.Customer_ID = c.Customer_ID
WHERE c.Customer_ID IS NULL;

SELECT COUNT(*) AS Missing_Products
FROM order_detail od
LEFT JOIN product p
ON od.Product_ID = p.Product_ID
WHERE p.Product_ID IS NULL;

SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM order_detail;

SELECT * FROM CUSTOMER LIMIT 5;

SELECT * FROM Orders LIMIT 5;

SELECT Order_ID,
	COUNT(DISTINCT Customer_ID) AS Customers,
    COUNT(DISTINCT Order_Date) AS OrderDates,
    COUNT(DISTINCT Ship_Date) AS ShipDates,
    COUNT(DISTINCT Ship_Mode) AS ShipModes,
    COUNT(DISTINCT Country) AS Countries,
    COUNT(DISTINCT Region) AS Regions,
    COUNT(DISTINCT State) AS States,
    COUNT(DISTINCT City) AS Cities,
    COUNT(DISTINCT Postal_Code) AS PostalCodes
    FROM superstore_staging GROUP BY Order_ID
    HAVING Customers>1
		OR OrderDates>1
        OR ShipDates>1
        OR ShipModes>1
        OR Countries>1
        OR Regions>1
        OR States>1
        OR Cities>1
        OR PostalCodes>1;

SELECT Quantity FROM superstore_staging WHERE CAST(Quantity AS UNSIGNED) IS NULL 
	AND Quantity IS NOT NULL;
    
SELECT Sales FROM superstore_staging WHERE CAST(Sales AS DECIMAL(10,2)) IS NULL
	AND Sales IS NOT NULL;
    
SELECT Discount FROM superstore_staging WHERE CAST(Discount AS DECIMAL(5,2)) IS NULL
	AND Discount IS NOT NULL;
    
SELECT Profit FROM superstore_staging WHERE CAST(Profit AS DECIMAL(10,2)) IS NULL
	AND Profit IS NOT NULL;