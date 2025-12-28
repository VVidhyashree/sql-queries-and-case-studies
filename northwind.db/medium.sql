->Show the ProductName, CompanyName, CategoryName from the products, suppliers, and categories table
SELECT p.product_name, s.company_name, c.category_name
FROM products p
JOIN suppliers s ON s.supplier_id = p.Supplier_id
JOIN categories c On c.category_id = p.Category_id;

->Show the category_name and the average product unit price for each category rounded to 2 decimal places.
  SELECT c.category_name, round(avg(p.unit_price),2) as average_unit_price
FROM products p
JOIN categories c On c.category_id = p.Category_id
GROUP BY c.category_name

->Show the city, company_name, contact_name from the customers and suppliers table merged together.
Create a column which contains 'customers' or 'suppliers' depending on the table it came from.

select City, company_name, contact_name, 'customers' as relationship 
from customers
union
select city, company_name, contact_name, 'suppliers'
from suppliers

->Show the total amount of orders for each year/month
select 
  year(order_date) as order_year,
  month(order_date) as order_month,
  count(*) as no_of_orders
from orders
group by order_year, order_month

