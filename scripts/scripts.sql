-- Example 1. Retrieve data about orders and their products for customers:

SELECT "orderInvoice".Invoice_ID, "orderInvoice".Date, "orderInvoice".Shipping_Information, Product.Product_ID, Product.Product_Name, Product.Description, Product.Price
FROM "orderInvoice"
JOIN Product_Order ON "orderInvoice".Invoice_ID = Product_Order.Invoice_ID
JOIN Product ON Product_Order.Product_ID = Product.Product_ID
JOIN customer ON "orderInvoice".Person_ID = customer.Person_ID;


-- Example 2. Using GROUP BY and aggregate functions

SELECT Person.Person_ID, COUNT(*) AS TotalProducts
FROM Product
JOIN Person ON Product.Person_ID = Person.Person_ID
GROUP BY Person.Person_ID;

-- Example 3. Counting the number of customers for each vendor (in our case CustomerCount = 0)

SELECT vendor.Vendor_name, COUNT(customer.Person_ID) AS CustomerCount
FROM vendor
JOIN Person ON vendor.Person_ID = Person.Person_ID
LEFT JOIN customer ON Person.Person_ID = customer.Person_ID
GROUP BY vendor.Vendor_name;

-- Example 4. Retrieving customers and their orders

SELECT customer.Person_ID, Person.Person_name, COUNT("orderInvoice".Invoice_ID) AS OrderCount
FROM customer
JOIN Person ON customer.Person_ID = Person.Person_ID
LEFT JOIN "orderInvoice" ON Person.Person_ID = "orderInvoice".Person_ID
GROUP BY customer.Person_ID, Person.Person_name;

-- Example 5. Using WHERE clause

SELECT *
FROM Person
WHERE Person_type = 'customer';


-- Example 6. Using ORDER BY (results by the 'Price' column in descending order.)

SELECT *
FROM Product
ORDER BY Price DESC;

-- Example 7. Retrieving Product Information with Corresponding Person ID from Order Invoices

SELECT Product.product_id, Product.product_name, "orderInvoice".person_id
FROM Product
JOIN "orderInvoice" ON Product.Person_ID = "orderInvoice".Person_ID;

-- Example 8. Displays the count of products in each category.

SELECT pc.Category_Name, COUNT(p.Product_ID) AS ProductCount
FROM public."productCategory" pc
LEFT JOIN Product p ON pc.Category_ID = p.Category_ID
GROUP BY pc.Category_Name;

-- Example 9. Find vendors whose average product price exceeds 2:

SELECT vendor.Vendor_name, AVG(Product.Price::numeric) AS AvgProductPrice
FROM vendor
JOIN Person ON vendor.Person_ID = Person.Person_ID
JOIN Product ON Person.Person_ID = Product.Person_ID
GROUP BY vendor.Vendor_name
HAVING AVG(Product.Price::numeric) > 2;

-- Example 10. Find all customers who are also vendors:

SELECT Person.Person_name, vendor.Vendor_name
FROM Person
JOIN vendor ON Person.Person_ID = vendor.Person_ID
WHERE Person.Person_type = 'vendor';

-- Example 11.Obtain information about products and their respective invoice numbers for each individual.

SELECT Product.product_id, Product.product_name, "orderInvoice".Invoice_ID
FROM Product
JOIN "orderInvoice" ON Product.Person_ID = "orderInvoice".Person_ID;