-- Select Schema  
USE gola_db ;

-- Create a Table with name blinkit_sales
DROP TABLE IF EXISTS blinkit_sales ;
CREATE TABLE blinkit_sales (
id SERIAL,
item_identifier VARCHAR(100),
item_fat_content VARCHAR (100),
item_type VARCHAR(100), 
outlet_establishment_year INT,
outlet_identifier VARCHAR(100),
outlet_location_type VARCHAR(100),
outlet_size VARCHAR(100),
outlet_type VARCHAR(100),
item_visibility FLOAT,
item_weight FLOAT,
total_sales FLOAT,
rating FLOAT
);

-- Inserting sample data into the table
INSERT INTO blinkit_sales (
    item_identifier,
    item_fat_content,
    item_type,
    outlet_establishment_year,
    outlet_identifier,
    outlet_location_type,
    outlet_size,
    outlet_type,
    item_visibility,
    item_weight,
    total_sales,
    rating
) VALUES
('FDR13', 'Regular', 'Snack Foods', 2007, 'OUT018', 'Tier 3', 'Medium', 'Supermarket Type2', 0.05459385, 12.5, 94695.33, 4.2),
('NCQ06', 'Low Fat', 'Household', 1987, 'OUT027', 'Tier 3', 'Medium', 'Supermarket Type3', 0.12302455, 15.1, 31288.95, NULL),
('FDD28', 'Low Fat', 'Dairy', 2011, 'OUT013', 'Tier 3', 'High', 'Supermarket Type1', 0.03889104, NULL, 67552.45, 4.1),
('FDS09', 'Regular', 'Fruits and Vegetables', 1999, 'OUT045', 'Tier 3', 'Small', 'Supermarket Type1', 0.00000000, 14.65, 21599.70, 3.8),
('FDI02', 'Low Fat', 'Baking Goods', 2010, 'OUT046', 'Tier 1', 'Small', 'Supermarket Type1', 0.06173499, 13.0, 59903.11, NULL),
('FDX07', 'Low Fat', 'Fruits and Vegetables', 1985, 'OUT010', 'Tier 3', 'Small', 'Grocery Store', 0.08185012, 16.05, 52003.86, 4.3),
('FDP10', 'Regular', 'Snack Foods', 2007, 'OUT018', 'Tier 3', 'Medium', 'Supermarket Type2', 0.01570773, 19.35, 60960.50, NULL),
('DRI11', 'Low Fat', 'Soft Drinks', 1999, 'OUT045', 'Tier 3', 'Small', 'Supermarket Type1', 0.01423126, 8.555, 30305.62, 4.0),
('FDF46', 'Low Fat', 'Dairy', 2012, 'OUT049', 'Tier 1', 'Medium', 'Supermarket Type1', 0.09117652, 11.5, 48662.29, 4.6),
('FDC58', 'Regular', 'Breakfast', 2009, 'OUT017', 'Tier 2', 'High', 'Supermarket Type1', 0.07921908, 14.5, 19187.42, 3.9),
('FDN33', 'Low Fat', 'Snack Foods', 2007, 'OUT018', 'Tier 3', 'Medium', 'Supermarket Type2', 0.04873177, 10.695, 23135.46, NULL),
('FDE19', 'Low Fat', 'Meat', 1985, 'OUT010', 'Tier 3', 'Small', 'Grocery Store', 0.10255555, 12.0, 55154.88, 3.5),
('FDI48', 'Regular', 'Baking Goods', 1998, 'OUT019', 'Tier 1', 'Small', 'Grocery Store', 0.05206132, 10.895, 10009.96, NULL),
('FDR47', 'Low Fat', 'Canned', 2011, 'OUT013', 'Tier 3', 'High', 'Supermarket Type1', 0.08884393, 14.3, 76564.21, 4.1),
('FDS03', 'Low Fat', 'Dairy', 2012, 'OUT049', 'Tier 1', 'Medium', 'Supermarket Type1', 0.06646536, NULL, 50111.18, 4.4),
('FDR28', 'Regular', 'Frozen Foods', 2010, 'OUT046', 'Tier 1', 'Small', 'Supermarket Type1', 0.05716187, 17.5, 30032.94, 4.2),
('FDC39', 'Low Fat', 'Dairy', 2009, 'OUT017', 'Tier 2', 'High', 'Supermarket Type1', 0.13454489, 13.0, 83611.08, 3.7),
('NCX05', 'Low Fat', 'Household', 1998, 'OUT019', 'Tier 1', 'Small', 'Grocery Store', 0.00767073, 12.0, 10295.84, NULL),
('FDE47', 'Regular', 'Snack Foods', 1999, 'OUT045', 'Tier 3', 'Small', 'Supermarket Type1', 0.03577541, 14.5, 60498.19, 4.5),
('FDD49', 'Low Fat', 'Snack Foods', 2011, 'OUT013', 'Tier 3', 'High', 'Supermarket Type1', 0.07683935, 12.0, 27627.67, 4.8),
('FDU02', 'Regular', 'Dairy', 2007, 'OUT018', 'Tier 3', 'Medium', 'Supermarket Type2', 0.04253168, 17.85, 42350.55, 3.9),
('NCM29', 'Low Fat', 'Health and Hygiene', 2012, 'OUT049', 'Tier 1', 'Medium', 'Supermarket Type1', 0.08906376, NULL, 55695.22, NULL),
('FDX25', 'Regular', 'Canned', 1998, 'OUT019', 'Tier 1', 'Small', 'Grocery Store', 0.05267493, 13.85, 11215.54, 3.3),
('FDP26', 'Low Fat', 'Canned', 2010, 'OUT046', 'Tier 1', 'Small', 'Supermarket Type1', 0.00000000, 16.5, 71225.39, 4.0),
('DRK24', 'Low Fat', 'Soft Drinks', 2009, 'OUT017', 'Tier 2', 'Medium', 'Supermarket Type1', 0.04169736, 17.0, 89582.17, 4.7);

-- Show full data form table blinkit_sales
SELECT * FROM blinkit_sales;

-- 1. Total Sales : The overall revenue generated from all items sold.
 SELECT CAST(SUM(total_sales)/1000000 AS DECIMAL(10,2))AS Total_Sales_Million FROM blinkit_sales;
 
 -- 2. Average Sales : The average revenue per sale.
 SELECT CAST(AVG(total_sales) AS DECIMAL(10,0)) AS Average_Sales FROM blinkit_sales;
 
 -- 3. Number of Items : The total count of different items sold.
 SELECT COUNT(*) AS No_of_Items FROM blinkit_sales;
 
 -- 4. Average Rating : The average customer rating for items sold.
 SELECT CAST(AVG(rating) AS DECIMAL(10,1)) AS Avg_Rating FROM blinkit_sales;
 
 -- 5. Total Sales by Fat Content : Objective: Analyze the impact of fat content on total sales. Additional KPI Metrics: Assess how other KPIs (Average Sales, Number of Items,Average Rating) vary with fat content.
 SELECT item_fat_content AS Item_Fat_Content,
 CAST(SUM(total_sales) AS DECIMAL(10,2)) AS Total_Sales,
 CAST(AVG(total_sales) AS DECIMAL(10,0)) AS Average_Sales,
 CAST(AVG(rating) AS DECIMAL(10,1)) AS Average_Rating,
 COUNT(*) AS No_Of_Item
 FROM blinkit_sales
 GROUP BY item_fat_content
 ORDER BY total_sales DESC;

-- 5. Total Sales by Item Type : Objective: Identify the performance of different item types in terms of total sales. Additional KPI Metrics: Assess how other KPIs (Average Sales, Number of Items, Average Rating) vary with fat content.
SELECT item_type AS Item_Type,
CAST(SUM(total_sales) AS DECIMAL(10,2)) AS Total_Sales_By_Item,
CAST(AVG(total_sales) AS DECIMAL(10,0)) AS Average_Sale,
CAST(AVG(rating) AS DECIMAL(10,1)) AS Average_rating,
COUNT(*) AS No_Of_Item
FROM blinkit_sales
GROUP BY item_type
ORDER BY Total_Sales_By_Item
LIMIT 5;

-- 6.  Fat Content by Outlet for Total Sales : Objective: Compare total sales across different outlets segmented by fat content. Additional KPI Metrics: Assess how other KPIs (Average Sales, Number of Items, Average Rating) vary with fat content.
SELECT outlet_location_type AS Outlet_Location_Type, item_fat_content AS Item_Fat_Content,
CAST(SUM(total_sales) AS DECIMAL(10,2)) AS Total_Sales_By_Item,
CAST(AVG(total_sales) AS DECIMAL(10,0)) AS Average_Sale,
CAST(AVG(rating) AS DECIMAL(10,1)) AS Average_Rating,
COUNT(*) AS No_Of_Item
FROM blinkit_sales
GROUP BY outlet_location_type, item_fat_content
ORDER BY Total_Sales_By_Item DESC
LIMIT 5;

-- 7. Total Sales by Outlet Establishment : Objective: Evaluate how the age or type of outlet establishment influences total sales.
SELECT outlet_establishment_year AS Outlet_Establishment_Year,
CAST(SUM(total_sales) AS DECIMAL (10,2)) AS Total_Sales_By_Establishment,
CAST(AVG(total_sales) AS DECIMAL (10,0)) AS Average_Sales,
CAST(AVG(rating) AS DECIMAL (10,1)) AS Averag_Rating,
COUNT(*) AS No_Of_Item
FROM blinkit_sales
GROUP BY outlet_establishment_year
ORDER BY outlet_establishment_year; 	

-- 8.  Percentage of Sales by Outlet Size : Objective: Analyze the correlation between outlet size and total sales.
SELECT outlet_size AS Outlet_Size,
CAST(SUM(total_sales) AS DECIMAL (10,2)) AS Total_Sales_By_Outlet,
CAST(SUM(total_sales)*100/SUM(SUM(total_sales)) OVER() AS DECIMAL(10,2)) AS percentage_Of_Sales
FROM blinkit_sales
GROUP BY outlet_size
ORDER BY Total_Sales_By_Outlet DESC;

-- 9. Sales by Outlet Location : Objective: Assess the geographic distribution of sales across different locations.
SELECT outlet_location_type AS Outlet_Location_Type,
CAST(SUM(total_sales) AS DECIMAL (10,2)) AS Total_Sales,
CAST(AVG(total_sales) AS DECIMAL (10,0)) AS Average_Sale,
CAST(AVG(rating) AS DECIMAL (10,1)) AS Average_Rating,
COUNT(*) AS No_Of_Item
FROM blinkit_sales
GROUP BY outlet_location_type
Order BY outlet_location_type;

-- 10.  7. All Metrics by Outlet Type : Objective: Provide a comprehensive view of all key metrics (Total Sales, Average Sales, Number of Items, Average Rating) broken down by different outlet types.
SELECT outlet_type AS Outlet_Type,
CAST(SUM(total_sales) AS DECIMAL (10,2)) AS Total_Sales,
CAST(AVG(total_sales) AS DECIMAL (10,0)) AS Average_Sale,
CAST(AVG(rating) AS DECIMAL (10,1)) AS Average_Rating,
COUNT(*) AS No_Of_Item
FROM blinkit_sales
GROUP BY outlet_type
Order BY Total_Sales DESC;

-- ADVANTAGES : 

-- Helps Blinkit identify best-selling and low-selling items.
-- Supports inventory planning and supply chain optimization.
-- Guides business expansion by highlighting profitable outlets and regions.
-- Improves customer experience by linking ratings with sales data.
-- Builds a data-driven foundation for dashboards and future analytics.