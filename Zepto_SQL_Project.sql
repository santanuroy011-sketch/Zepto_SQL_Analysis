drop table if exists zepto;

create table zepto(
sku_id SERIAL primary key,
category varchar(120),
name varchar(150) not null,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightinGms INTEGER,
outOfStock BOOLEAN,
quantity INTEGER
);

-- data exploration

--count of rows
select count(*) from zepto;

-- sample data
select * from zepto
limit 10;

-- null values
select * from zepto
WHERE name is NULL
or
category is NULL
or
mrp is NULL
or
discountPercent is NULL
or
discountedSellingPrice is NULL
or
weightInGms is NULL
or
availableQuantity is NULL
or
outOfStock is NULL
or
quantity is NULL;

-- different Product Categories	
select DISTINCT category
from zepto
order by category;

-- products in Sock vs out of stock
select outOfStock, COUNT(sku_id)
from zepto
group by OutOfStock;

-- product names present multiple times
select name, count(sku_id) as "Number of SKUs"
from zepto
group by name
having count(sku_id) > 1
order by count(sku_id) DESC; 

-- data cleaning

-- products with price = 0
select * from zepto
where mrp = 0 or discountedSellingPrice = 0;
-- this missing row not possible in data so delete this
delete from zepto
where mrp = 0;
-- convert paise to rupees
UPDATE zepto
set mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;
-- checking the conversion from paise o rs
select mrp, discountedSellingPrice from Zepto;

--Q1. Find top 10 best value products based on the discount percentage.
select DISTINCT name, mrp, discountPercent
from zepto
order by discountPercent DESC
Limit 10;

--Q2. What are the Products with High MRP but out of stock
select DISTINCT name, mrp
from zepto
WHERE outOfStock = True and mrp>300 --giving threshold 300
order by mrp desc;

--Q3. Calculate estimated revenue for each category
select category,
sum(discountedsellingPrice * availableQuantity) as total_revenue
from zepto
group by category
order by total_revenue DESC;

--Q4. Find all products where MRP is greater than 500 and discount
--is less than 10%
select DISTINCT name, mrp, discountPercent
from zepto
where mrp > 500 and discountPercent < 10
order by mrp DESC, discountPercent DESC;

--Q5. Identify the top 5 categories offering he highest average discount percentage
select category,
ROUND(AVG(discountPercent),2) as avg_discount
from zepto
group by category
order by avg_discount DESC
LIMIT 5;

--Q6. Find the price per gram for products above 100g and sort by best value.
select DISTINCT name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice/weightInGms,2) as price_per_gram
from zepto
Where weightInGms >= 100
order by price_per_gram DESC;

--Q7. Group the products into categories like low, Medium, Bulk.
select DISTINCT name, weightInGms,
case When weightINGms < 1000 THEN 'Low'
When weightInGms < 5000 THEN 'Medium'
ELSE 'Bulk'
END AS weight_category
from Zepto;

--Q8. What is the total inventory weight per category
select category,
sum(weightInGms * availableQuantity) as total_weight
from zepto
group by category
order by total_weight DESC;