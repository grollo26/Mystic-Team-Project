-- Project: Data Dynamo
-- Team: Dark Red Data (Simon, Gavin, Egle, Yassim)
-- This script provides SQL code for destination table creation and any alterations made to that table.


-- Before creating the table we have corrected the initial csv file. We have delected extra spacing in the header of such colunms: 
-- Online Sale Offers, GenderF=1665M=1815, Total_amount, Author, Profit Percentage (%).
-- Creating a table, labeling columns and assigning data types
CREATE TABLE student.drd_data_dynamo (
 "ID" INT ,
 "Purchase-date" DATE ,
 "Date" DATE , 
 "Time" TIME , 
 "Quarter" VARCHAR(20) ,
 "Qtr" INT ,
 "Year" INT ,
 "Month" INT ,
 "Date_1" INT , 
 "Special Day" INT , 
 "Online Sale Offers" INT , 
 "Day" INT ,
 "Weekend" INT ,
 "Morning" INT ,
 "Afternoon" INT ,
 "Evening" INT ,
 "Night" INT ,
 "Gender" INT ,
 "Customer ID" VARCHAR(20) ,
 "GenderF=1665M=1815" VARCHAR(50) ,
 "Product-Name" VARCHAR(200) ,
 "Item-Status" VARCHAR(20) ,
 "Quantity" INT ,
 "Currency" VARCHAR(10) ,
 "Item Price" FLOAT ,
 "Shipping-Price" FLOAT ,
 "Ship-City" VARCHAR(100) ,
 "Ship-State" VARCHAR(100) ,
 "Ship-Postal-Code" INT ,
 "Category" VARCHAR(20) ,
 "Total_amount" INT,
 "Author" VARCHAR(50) ,
 "Publication" VARCHAR(100) ,
 "Profit Percentage (%)" INT ,
 "Profit (INR)" FLOAT ,
 "Cost Price" FLOAT
) ;




