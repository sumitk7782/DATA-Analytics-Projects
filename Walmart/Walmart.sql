
SELECT * FROM "Walmart";

1.What is the total number of records in the Walmart table?


SELECT COUNT(*) AS total_records
FROM "Walmart";

2.What is the average weekly sales across all stores?
SELECT AVG("Weekly_Sales") AS avg_weekly_sales
FROM "Walmart";


3.Which store has the highest total sales?

SELECT "Store",
       SUM("Weekly_Sales") AS total_sales
FROM "Walmart"
GROUP BY "Store"
ORDER BY total_sales DESC
LIMIT 1;

4.What are the top 5 weeks with the highest weekly sales?

SELECT "Store",
       "Date",
       "Weekly_Sales"
FROM "Walmart"
ORDER BY "Weekly_Sales" DESC
LIMIT 5;

5.How many holiday weeks are present in the dataset?

SELECT COUNT(*) AS holiday_weeks
FROM "Walmart"
WHERE "Holiday_Flag" = 1;

6.What is the average weekly sales during holiday weeks compared to non-holiday weeks?

SELECT "Holiday_Flag",
       AVG("Weekly_Sales") AS avg_weekly_sales
FROM "Walmart"
GROUP BY "Holiday_Flag";

7.Which store has the highest average weekly sales?

SELECT "Store",
       AVG("Weekly_Sales") AS avg_weekly_sales
FROM "Walmart"
GROUP BY "Store"
ORDER BY avg_weekly_sales DESC
LIMIT 5;

8.What is the maximum and minimum temperature recorded in the dataset?

SELECT 
    MAX("Temperature") AS max_temperature,
    MIN("Temperature") AS min_temperature
FROM "Walmart";

9.Find the total sales for each store and sort them in descending order.

SELECT "Store",
       SUM("Weekly_Sales") AS total_sales
FROM "Walmart"
GROUP BY "Store"
ORDER BY total_sales DESC;

10.Which stores have an average unemployment rate greater than 7%?

SELECT "Store",
       AVG("Unemployment") AS avg_unemployment
FROM "Walmart"
GROUP BY "Store"
HAVING AVG("Unemployment") > 7
ORDER BY avg_unemployment DESC;

11.Find the month with the highest total sales.

SELECT EXTRACT(MONTH FROM CAST("Date" AS DATE)) AS month,
       SUM("Weekly_Sales") AS total_sales
FROM "Walmart"
GROUP BY month
ORDER BY total_sales DESC
LIMIT 1;

12.Calculate the average fuel price for each store.

SELECT "Store",
       AVG("Fuel_Price") AS avg_fuel_price
FROM "Walmart"
GROUP BY "Store"
ORDER BY "Store";

13.Find stores where weekly sales exceeded $2,000,000.

SELECT "Store",
       "Date",
       "Weekly_Sales"
FROM "Walmart"
WHERE "Weekly_Sales" > 2000000
ORDER BY "Weekly_Sales" DESC;