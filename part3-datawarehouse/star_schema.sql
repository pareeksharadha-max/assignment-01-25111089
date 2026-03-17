CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month VARCHAR(20),
    year INT
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT,
    revenue DECIMAL(10,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

INSERT INTO dim_date VALUES
(1, '2024-01-10', 'January', 2024),
(2, '2024-01-15', 'January', 2024),
(3, '2024-02-05', 'February', 2024);

INSERT INTO dim_store VALUES
(1, 'Central Store', 'Mumbai'),
(2, 'City Mall Store', 'Delhi'),
(3, 'Market Store', 'Bangalore');

INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Milk', 'Groceries'),
(3, 'T-Shirt', 'Clothing');

INSERT INTO fact_sales VALUES
(1,1,1,1,2,110000),
(2,1,2,2,10,600),
(3,1,3,3,5,4000),
(4,2,1,2,8,480),
(5,2,2,1,1,55000),
(6,2,3,3,6,4800),
(7,3,1,1,1,55000),
(8,3,2,2,15,900),
(9,3,3,3,4,3200),
(10,3,1,2,12,720);
