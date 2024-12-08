-- SELECT sales.transactions.*, sales.date.month_name FROM sales.transactions JOIN  sales.date ON sales.transactions.order_date = sales.date.date;
SELECT * FROM sales.transactions JOIN sales.date ON sales.transactions.order_date =  sales.date.date ;

-- Total sales in 2020 
SELECT sum( sales.transactions.sales_amount) FROM sales.transactions JOIN sales.date ON sales.transactions.order_date =  sales.date.date WHERE sales.date.year ="2020";

-- total sales in Chennai in 2020
SELECT sum( sales.transactions.sales_amount) FROM sales.transactions JOIN sales.date ON sales.transactions.order_date =  sales.date.date WHERE date.year ="2020" AND market_code = "Mark001";

-- Finding product types sold to customers in 2020 in Chennai
SELECT customer_code, product_type FROM sales.transactions JOIN sales.products ON sales.transactions.product_code =  sales.products.product_code;

-- Finding number of unique product types sold to customers 
SELECT count( DISTINCT product_type) FROM sales.transactions JOIN sales.products ON sales.transactions.product_code =  sales.products.product_code;

-- Finding unique product types sold to customers 
SELECT customer_code, product_type FROM sales.transactions JOIN sales.products ON sales.transactions.product_code =  sales.products.product_code;

