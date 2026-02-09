🛒 Zepto Grocery Data Analysis using SQL
📌 Project Overview

This project focuses on analyzing grocery product data from Zepto, a quick-commerce grocery delivery platform, using SQL.
The goal is to extract meaningful business insights related to pricing, discounts, inventory, and revenue estimation by querying structured data.

The project simulates a real-world data analyst workflow, starting from table creation and data cleaning to advanced analytical queries used for business decision-making.

🎯 Objectives

Analyze product pricing and discount patterns

Identify best-value and highly discounted products

Evaluate inventory availability and stock issues

Estimate revenue contribution by category

Perform weight-based and price-per-unit analysis

Demonstrate strong SQL querying and data-cleaning skills

🧾 Dataset Description

The dataset contains grocery product-level data with the following attributes:

Column Name	Description
sku_id	Unique product identifier
category	Product category
name	Product name
mrp	Maximum Retail Price
discountPercent	Discount percentage
availableQuantity	Quantity available in stock
discountedSellingPrice	Final selling price
weightInGms	Product weight (grams)
outOfStock	Stock status (TRUE/FALSE)
quantity	Units per SKU

📂 Category Covered: Fruits & Vegetables

🛠 Tools & Technologies

Database: PostgreSQL / MySQL

Language: SQL

IDE: VS Code / pgAdmin

Data Format: CSV

Version Control: Git & GitHub

🧹 Data Cleaning Steps

Removed records with invalid pricing (MRP = 0)

Converted price values from paise to rupees

Identified duplicate product names across multiple SKUs

Checked and handled NULL values

Verified data consistency before analysis

🔍 Key SQL Analyses Performed
1️⃣ Data Exploration

Total record count

Sample data preview

Distinct product categories

Stock vs out-of-stock analysis

2️⃣ Discount Analysis

Top 10 products with highest discount percentage

Average discount by category

3️⃣ Pricing Analysis

High MRP products with low discounts

Price-per-gram calculation for value comparison

4️⃣ Inventory Analysis

High-priced products that are out of stock

Weight-based product categorization (Low / Medium / Bulk)

Total inventory weight per category

5️⃣ Revenue Estimation

Estimated revenue per category using:

discountedSellingPrice × availableQuantity

📊 Business Insights

Certain products offer significantly higher discounts, making them ideal for promotions

High-MRP out-of-stock items represent potential revenue loss

Bulk products dominate inventory weight, impacting logistics

Price-per-gram analysis helps identify true best-value products

Discount trends vary significantly across products

📈 Business Recommendations

Improve restocking for high-value out-of-stock items

Optimize discount strategies for high-priced products

Use price-per-unit metrics for competitive pricing

Plan warehouse and logistics based on inventory weight

Apply data-driven pricing strategies to maximize revenue

📂 Project Structure
Zepto-SQL-Analysis/
│
├── zepto_data.csv
├── zepto_sql_queries.sql
├── README.md
└── screenshots/
    ├── table_creation.png
    ├── analysis_queries.png
    └── query_results.png

🚀 Future Enhancements

Power BI / Tableau dashboard integration

Time-series sales trend analysis

Predictive inventory forecasting

Automated SQL reporting

Integration with Python for advanced analytics

👤 Author

Shantanu Roy
Aspiring Data Analyst
Skilled in SQL, Python, Power BI, and Data Analysis
