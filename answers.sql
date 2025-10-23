-- Question 1: INNER JOIN employees with offices
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM 
    employees AS e
INNER JOIN 
    offices AS o
ON 
    e.officeCode = o.officeCode;

-- Question 2: LEFT JOIN products with productlines
SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM 
    products AS p
LEFT JOIN 
    productlines AS pl
ON 
    p.productLine = pl.productLine;

-- Question 3: RIGHT JOIN customers with orders, limited to 10 results
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM 
    customers AS c
RIGHT JOIN 
    orders AS o
ON 
    c.customerNumber = o.customerNumber
LIMIT 10;


