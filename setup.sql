-- Setup script: creates table and loads data
CREATE DATABASE IF NOT EXISTS supply_chain;
USE supply_chain;

DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
  Type VARCHAR(50),
  Days_for_shipping_real INT,
  Days_for_shipment_scheduled INT,
  Benefit_per_order DECIMAL(10,2),
  Sales_per_customer DECIMAL(10,2),
  Delivery_Status VARCHAR(50),
  Late_delivery_risk INT,
  Category_Id INT,
  Category_Name VARCHAR(100),
  Customer_City VARCHAR(100),
  Customer_Country VARCHAR(100),
  Customer_Fname VARCHAR(50),
  Customer_Id INT,
  Customer_Lname VARCHAR(50),
  Customer_Segment VARCHAR(50),
  Customer_State VARCHAR(100),
  Customer_Street VARCHAR(200),
  Customer_Zipcode VARCHAR(20),
  Department_Id INT,
  Department_Name VARCHAR(100),
  Latitude DECIMAL(10,6),
  Longitude DECIMAL(10,6),
  Market VARCHAR(50),
  Order_City VARCHAR(100),
  Order_Country VARCHAR(100),
  Order_Customer_Id INT,
  Order_Date DATETIME,
  Order_Id INT,
  Order_Item_Cardprod_Id INT,
  Order_Item_Discount DECIMAL(10,2),
  Order_Item_Discount_Rate DECIMAL(5,4),
  Order_Item_Id INT,
  Order_Item_Product_Price DECIMAL(10,2),
  Order_Item_Profit_Ratio DECIMAL(5,4),
  Order_Item_Quantity INT,
  Sales DECIMAL(10,2),
  Order_Item_Total DECIMAL(10,2),
  Order_Profit_Per_Order DECIMAL(10,2),
  Order_Region VARCHAR(100),
  Order_State VARCHAR(100),
  Order_Status VARCHAR(50),
  Product_Card_Id INT,
  Product_Category_Id INT,
  Product_Name VARCHAR(200),
  Product_Price DECIMAL(10,2),
  Product_Status INT,
  Shipping_Date DATETIME,
  Shipping_Mode VARCHAR(50)
);

LOAD DATA LOCAL INFILE '/workspaces/supply-chain-sql-project/DataCoSupplyChainDataset.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Type, Days_for_shipping_real, Days_for_shipment_scheduled, Benefit_per_order, Sales_per_customer, Delivery_Status, Late_delivery_risk, Category_Id, Category_Name, Customer_City, Customer_Country, @dummy, Customer_Fname, Customer_Id, Customer_Lname, @dummy, Customer_Segment, Customer_State, Customer_Street, Customer_Zipcode, Department_Id, Department_Name, Latitude, Longitude, Market, Order_City, Order_Country, Order_Customer_Id, Order_Date, Order_Id, Order_Item_Cardprod_Id, Order_Item_Discount, Order_Item_Discount_Rate, Order_Item_Id, Order_Item_Product_Price, Order_Item_Profit_Ratio, Order_Item_Quantity, Sales, Order_Item_Total, Order_Profit_Per_Order, Order_Region, Order_State, Order_Status, @dummy, Product_Card_Id, Product_Category_Id, @dummy, @dummy, Product_Name, Product_Price, Product_Status, Shipping_Date, Shipping_Mode);
