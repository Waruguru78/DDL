-- Add Category column to PRODUCT table
ALTER TABLE PRODUCT
ADD Category VARCHAR2(20);

-- Add OrderDate column to ORDERS table with default value as SYSDATE
ALTER TABLE ORDERS
ADD OrderDate DATE DEFAULT SYSDATE;
