-- Create CUSTOMER Table
CREATE TABLE CUSTOMER (
    Customer_id VARCHAR(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tell Number,
);

-- Create PRODUCT Table
CREATE TABLE PRODUCT (
    Product_id VARCHAR(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK (Price > 0),
);

-- Create ORDERS Table
CREATE TABLE ORDERS (
    Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    FOREIGN KEY (Customer_id) REFERENCES CUSTOMER(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES PRODUCT(Product_id)
);