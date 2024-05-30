/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 
 SELECT products.NAME AS ProductName, categories.NAME AS CategoryName
 FROM products
 INNER JOIN categories 
 ON products.CategoryID = categories.CategoryID
 WHERE categories.Name like  '%COMPUTER%';

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT products.NAME, products.price, reviews.rating
FROM products
INNER JOIN reviews
ON products.ProductID = reviews.ProductID
WHERE reviews.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT employees.FirstName, sum(sales.Quantity) AS TotalQuantity
FROM employees
INNER JOIN SALES
ON employees.EmployeeID = sales.EmployeeID
group by employees.FirstName
order by TotalQuantity desc;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT departments.NAME AS DepartmentNames, categories.NAME AS CategoryNames
FROM departments
INNER JOIN categories
ON departments.DepartmentID = categories.DepartmentID
WHERE categories.Name ='Appliances' or categories.Name ='Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 
 SELECT products.Name AS ProductName, sum(SALES.QUANTITY) AS TotalNumSold, sum(SALES.PRICEPERUNIT * SALES.QUANTITY) AS TotalPriceSold
 FROM PRODUCTS
 INNER JOIN SALES 
ON PRODUCTS.PRODUCTID = SALES.PRODUCTID
WHERE products.NAME = 'Eagles: Hotel California';

 
 

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT PRODUCTS.NAME, reviews.Reviewer, REVIEWs.RATING, REVIEWS.COMMENT
FROM PRODUCTS
INNER JOIN REVIEWS
ON products.ProductID = REVIEWS.PRODUCTID
WHERE products.Name = 'Visio TV' and reviews.Rating = 1;


-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

SELECT employees.EmployeeID, employees.FirstName, employees.LastName, products.Name as ProductName, SALES.QUANTITY
FROM employees
INNER JOIN SALES
ON EMPLOYEES.EMPLOYEEID = SALES.EMPLOYEEID
INNER JOIN products
ON sales.ProductID = products.ProductID;

