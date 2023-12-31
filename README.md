# sql-challenge
Bootcamp SQL-Challenge
The files contained in the EmployeeSQL folder were created as a homework assignment to analyze what remains of fictional employee data from the 1980s and 1990s. The only information remaining from the fictional company during that time are six CSV files which can be found in the Starter_Code > data folder. 

This project performs data modeling, data engineering, and data analysis components.

Data Modeling:
The QuickDBD-export.png file provides an Entity Relationship Diagram (ERD) of the information contained in the CSV files. The qdbd_text file can be used to recreate the ERD using the free website: 

https://app.quickdatabasediagrams.com/#/

Data Engineering:
The employeetables.sql file uses the script exported from the website above to create a table schema of the csv files. It depicts data types, primary keys, foreign keys, and additional constraints for the data.

Data Analysis:
The employeequeries.sql file contains script for eight different queries that review and sort the data to analyze specific aspects of the employee information. 

References:
The data was generated by Mockaroo, LLC using a realistic data generator.

I used the https://app.quickdatabasediagrams.com/#/ to build the ERD and export the png and script to create the tables.

I used the webpage: https://www.commandprompt.com/education/what-does-drop-table-cascade-do-in-postgresql/ to write and understand the use of CASCADE in the DROP TABLE function in the employeetables.sql script.

I used the webpage: https://navicat.com/en/company/aboutus/blog/1708-using-group-by-and-order-by-in-the-same-query to review how to use the GROUP BY and ORDER BY functions in the same query. 
