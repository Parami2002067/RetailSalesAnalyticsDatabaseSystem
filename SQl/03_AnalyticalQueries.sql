SELECT
    p.Product_ID,
    p.Product_Name,
    ROUND(SUM(od.Sales), 2) AS Total_Sales
FROM order_detail od
JOIN product p
    ON od.Product_ID = p.Product_ID
GROUP BY
    p.Product_ID,
    p.Product_Name
ORDER BY
    Total_Sales DESC
LIMIT 1;

SELECT
    p.Category,
    ROUND(SUM(od.Sales), 2) AS Total_Sales
FROM order_detail od
JOIN product p
    ON od.Product_ID = p.Product_ID
GROUP BY
    p.Category
ORDER BY
    Total_Sales DESC;
    
SELECT
    o.Region,
    ROUND(SUM(od.Sales), 2) AS Total_Sales
FROM order_detail od
JOIN orders o
    ON od.Order_ID = o.Order_ID
GROUP BY
    o.Region
ORDER BY
    Total_Sales DESC;
    
SELECT
    c.Customer_ID,
    c.Customer_Name,
    ROUND(SUM(od.Sales), 2) AS Total_Sales
FROM customer c
JOIN orders o
    ON c.Customer_ID = o.Customer_ID
JOIN order_detail od
    ON o.Order_ID = od.Order_ID
GROUP BY
    c.Customer_ID,
    c.Customer_Name
ORDER BY
    Total_Sales DESC
LIMIT 10;

SELECT
    c.Segment,
    ROUND(SUM(od.Sales), 2) AS Total_Sales
FROM customer c
JOIN orders o
    ON c.Customer_ID = o.Customer_ID
JOIN order_detail od
    ON o.Order_ID = od.Order_ID
GROUP BY
    c.Segment
ORDER BY
    Total_Sales DESC;