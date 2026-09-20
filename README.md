# SQL Data Analyst Capstone Project

This project analyzes the Sakila sample database using SQL to answer eight business-focused questions related to customer spending, revenue trends, product performance, customer segmentation, and purchasing behavior.

## Dataset

This project uses the **Sakila sample database**, a sample database commonly used for practicing SQL and relational database analysis.

The analysis primarily uses customer, payment, rental, inventory, film, film_category, and category data.

## Questions

### Q1. Top Customers

Who are the top 10 customers by total amount spent?

### Q2. Revenue Trends

What is the monthly revenue trend across the dataset?

### Q3. Month-over-Month Revenue Change

What is the month-over-month change in revenue?

### Q4. Category Revenue

Which product categories generate the most revenue?

### Q5. Top Products by Category

What are the top 3 products within each category by revenue?

### Q6. Customer Spend Tiers

How can customers be segmented into Low, Medium, and High spend tiers?

### Q7. Customer Purchasing Behavior

How many customers are repeat vs one-time buyers?

### Q8. Top Category Revenue Share

What percentage of total revenue comes from the top category?

## Key Findings

* The highest-spending customer was **KARL SEAL**, with total spending of **$221.55**.
* Monthly revenue peaked in **July 2005 at $28,368.91**.
* Revenue increased by **$18,739.02** from June to July 2005.
* Revenue decreased by **$4,298.77** from July to August 2005.
* **Sports** generated the highest category revenue at **$5,314.21**.
* Sports represented **7.88% of total revenue**.
* The top 3 products by revenue were identified within each product category.
* Customers were segmented into Low, Medium, and High spending tiers based on total spending.
* There were **599 repeat buyers and 0 one-time buyers** among customers with payment records.

## SQL Skills Demonstrated

* SELECT statements
* JOINs
* GROUP BY
* Aggregate functions
* CASE statements
* Common Table Expressions (CTEs)
* Window functions
* LAG()
* ROW_NUMBER()
* Revenue analysis
* Customer segmentation
* Ranking

## Project Files

| File                                | Description                           |
| ----------------------------------- | ------------------------------------- |
| `q1_top_customers.sql`              | Top 10 customers by spending          |
| `q2_monthly_revenue.sql`            | Monthly revenue trend                 |
| `q3_mom_revenue_change.sql`         | Month-over-month revenue change       |
| `q4_category_revenue.sql`           | Revenue by product category           |
| `q5_top_products_by_category.sql`   | Top 3 products within each category   |
| `q6_customer_spend_tiers.sql`       | Customer spending segmentation        |
| `q7_repeat_vs_one_time.sql`         | Repeat vs one-time buyers             |
| `q8_top_category_revenue_share.sql` | Top category's share of total revenue |

## Tools

* MySQL
* MySQL Workbench
* SQL
* Sakila Sample Database
