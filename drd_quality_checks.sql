-- Project: Data Dynamo
-- Team: Dark Red Data (Simon, Gavin, Egle, Yassim)
-- This scrip provides SQL code for the quality checks, every check has its unique ID.

SELECT -- ID-01 Counting the number of rows
	COUNT("ID") 
FROM 
	student.drd_data_dynamo ;

SELECT --ID-02 Counting the number of distinct rows
	DISTINCT(COUNT("ID")) 
FROM
	student.drd_data_dynamo ;


SELECT 
	COUNT(*) as no_of_Column --ID-03 Counting the number of columns
FROM 
	information_schema.columns 
WHERE 
	table_name ='drd_data_dynamo';

SELECT --ID-04 Calculating the sum of row sums, changing the data type into float to match all of the data and rounding the result up to 3 decimal points, as required.
	ROUND(SUM(
	"ID"::float + "Qtr"::float + "Year"::float + "Month"::float + "Date_1"::float + "Special Day"::float + 
	"Online Sale Offers "::float + "Day"::float + "Weekend"::float + "Morning"::float + "Afternoon"::float + "Evening" + 	 "Night"::float + "Gender"::float + "Quantity"::float + "Item Price" + "Shipping-Price" + "Ship-Postal-Code"::float +
	"Total_amount"::float + "Profit Percentage (%)"::float + "Profit (INR)" + "Cost Price")::decimal,3) AS total_row_sum
FROM
   	student.drd_data_dynamo drd ;

SELECT --ID-05 Calculating the sum of column sums, changing the data type into float to match all of the data and rounding the result up to 3 decimal points, as required.
 	ROUND(sum("ID")::float + sum("Qtr")::float + sum("Year")::float + sum("Month")::float + sum("Date_1")::float + sum("Special Day")::float + 
 	sum("Online Sale Offers ")::float + sum("Day")::float + sum("Weekend")::float + sum("Morning")::float + sum("Afternoon")::float + sum("Evening") + 
 	sum("Night")::float + sum("Gender")::float + sum("Quantity")::float + sum("Item Price") + sum("Shipping-Price") + sum("Ship-Postal-Code")::float +
 	sum("Total_amount")::float + sum("Profit Percentage (%)")::float + sum("Profit (INR)") + sum("Cost Price")::decimal, 3) AS total_col_sum
FROM
	student.drd_data_dynamo drd ;
	
SELECT --ID-06 Calculating the number of NULL values accross all columns.
	* 
FROM
	student.drd_data_dynamo 
WHERE 
	"ID" IS NULL OR
 	"Purchase-date" IS NULL OR
 	"Date" IS NULL OR 
 	"Time" IS NULL OR  
	 "Qtr" IS NULL OR
 	"Year" IS NULL OR 
 	"Quarter" IS NULL OR
 	"Month" IS NULL OR
 	"Date_1" IS NULL OR 
 	"Special Day" IS NULL OR
 	"Online Sale Offers " IS NULL OR
 	"Day" IS NULL OR
 	"Weekend" IS NULL OR
	 "Morning" IS NULL OR
	 "Afternoon" IS NULL OR
	 "Evening" IS NULL OR
	 "Night" IS NULL OR
	 "Gender" IS NULL OR
	 "Customer ID" IS NULL OR
	 "GenderF=1665M=1815" IS NULL OR
	 "Product-Name" IS NULL OR
	 "Item-Status" IS NULL OR
	 "Quantity" IS NULL OR
	 "Currency" IS NULL OR
	 "Item Price" IS NULL OR
	 "Shipping-Price" IS NULL OR
	 "Ship-City" IS NULL OR
	 "Ship-State" IS NULL OR
	 "Ship-Postal-Code" IS NULL OR
	 "Category" IS NULL OR
	 "Total_amount" IS NULL OR
	 "Author " IS NULL OR
	 "Publication" = NULL OR
	 "Profit Percentage (%)" IS NULL OR
	 "Profit (INR)" IS NULL OR
	 "Cost Price" IS NULL ;
	
SELECT --ID-07 Calculating the SUM (where applicable), MIN and MAX for each numeric column.

	(sum("ID"),min("ID"),max("ID")) ID,
	(min("Purchase-date"),max("Purchase-date")) Purchase_date_values,
	(min("Date"),max("Date")) Date_values,
	(min("Time"),max("Time")) Time_values,
	(sum("Qtr"),min("Qtr"),max("Qtr")) Qtr,
	(sum("Year"),min("Year"),max("Year")) Year_values,
	(sum("Month"),min("Month"),max("Month")) Month_values,
	(sum("Date_1"),min("Date_1"),max("Date_1")) Date_1,
	(sum("Special Day"),min("Special Day"),max("Special Day")) Special_Day,
	(sum("Online Sale Offers"),min("Online Sale Offers"),max("Online Sale Offers")) Online_Sale_Offers,
	(sum("Day"),min("Day"),max("Day")) Day_values,
	(sum("Weekend"),min("Weekend"),max("Weekend")) Weekend,
	(sum("Morning"),min("Morning"),max("Morning")) Morning,
	(sum("Afternoon"),min("Afternoon"),max("Afternoon")) Afternoon,
	(sum("Evening"),min("Evening"),max("Evening")) Evening,
	(sum("Night"),min("Night"),max("Night")) Night,
	(sum("Gender"),min("Gender"),max("Gender")) Gender,
	(sum("Quantity"),min("Quantity"),max("Quantity")) Quantity,
	(round(sum("Item Price")::decimal,3),round(min("Item Price")::decimal,3),round(max("Item Price")::decimal,3)) Item_Price,
	(round(sum("Shipping-Price")::decimal,3),round(min("Shipping-Price")::decimal,3),round(max("Shipping-Price")::decimal,3)) Shipping_Price,
	(sum("Ship-Postal-Code"),min("Ship-Postal-Code"),max("Ship-Postal-Code")),
	(sum("Total_amount"),min("Total_amount"),max("Total_amount")) Total_amount,
	(sum("Profit Percentage (%)"),min("Profit Percentage (%)"),max("Profit Percentage (%)")) Profit_Percentage,
	(round(sum("Profit (INR)")::decimal,3),round(min("Profit (INR)")::decimal,3),round(max("Profit (INR)")::decimal,3)) Profit_INR,
	(round(sum("Cost Price")::decimal,3),round(min("Cost Price")::decimal,3),round(max("Cost Price")::decimal,3)) Cost_Price
FROM
	student.drd_data_dynamo ;
