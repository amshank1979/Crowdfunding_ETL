# Crowdfunding_ETL
Project 2

## Names
* A. Shank
* S. Halliday

## About
This group project is to practice Extract, Transform, and Load (ETL) of data using Python, Panda, Python dictionary, Postgres, and pgAdmin. Pandas and Python were used to extract and transform raw data inputs from the contacts and crowdfunding excel files. PostgreSQL and pgAdmin were used to load the cleaned data from four csv files (campaign, contacts, category, and subcategory) into tables and conduct analysis via select statements.    

## Getting Started
_Deliverable 1: Create the Category and Subcategory DataFrames._

Using the crowdfunding.xlsx excel raw dataset, a category DataFrame was generated with columns "category_id" and "category" identified. The category_id" column reflects in sequential order (going sequentially from "cat1" to "cat9"). The category DataFrame was then exported to GitHub as the "category.csv" file. A similar process was used to create the subcategory DataFrame with columns "subcategory_id" and "subcategory". The "subcategory_id" column reflects in sequential order (going sequentially from "subcat1" to "subcat24"). The subcategory DataFrame was then exported to GitHub as the "subcategory.csv" file.
The code may be found via the Jupyter notebook: ETL_Mini_Project_Starter_Code_a.shank_s.halliday.ipynb accessible via the Starter_Files folder. The category.csv and subcategory.csv files are housed in the Resources folder. 

![image](https://github.com/amshank1979/Crowdfunding_ETL/assets/133922704/9c7ba932-cd7c-4698-a0e7-2acff13d433b)

![image](https://github.com/amshank1979/Crowdfunding_ETL/assets/133922704/84d77fff-9851-40a7-8970-87a217cf0a3f)

_Deliverable 2: Create the Campaign DataFrame._

Using the crowdfunding.xlsx excel raw dataset, a campaign DataFrame was generated with columns identified below. The code may be found via the Jupyter notebook: ETL_Mini_Project_Starter_Code_a.shank_s.halliday.ipynb accessible via the Starter_Files folder. The campaign.csv file is housed in the Resources folder.

* "cf_id" 
* "contact_id" 
* "company_name" 
* "blurb" column, renamed to "description"
* "goal" column, converted to the float data type
* "pledged" column, converted to the float data type
* "outcome"
* "backers_count"
* "country"
* "currency"
* "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
* "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
* "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
* "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

![image](https://github.com/amshank1979/Crowdfunding_ETL/assets/133922704/d0409a90-a719-4188-b4ed-09a5fd6ec9db)

The data type for each column was then adjusted for data analysis purposes. 

![image](https://github.com/Mepseha/Mars_News/assets/133922704/a8efb8cc-a95b-4bd0-91c4-e84144f9fa1b)
![image](https://github.com/Mepseha/Mars_News/assets/133922704/54fa84b2-6a5d-41e3-a2a6-fcfa31e184d3)

_Deliverable 3: Create the Contacts DataFrame._

Using the contacts.xlsx excel raw dataset coupled with the Python dictionary method (Option 1), a contacts DataFrame was generated. The DataFrame was then converted to a dictionary and a new DataFrame established. The contact name was then split into a first and last name, and placed new columns first_name and last_name. The code may be found via the Jupyter notebook: ETL_Mini_Project_Starter_Code_a.shank_s.halliday.ipynb and contacts dataframe.ipynb accessible via the Starter_Files folder. The contacts.csv file is housed in the Resources folder.

![image](https://github.com/amshank1979/Crowdfunding_ETL/assets/133922704/cdf68a92-910d-4dc3-a36c-99b7788b1aeb)

_Deliverable 4: Create the Crowdfunding Database._

Using Quick DBD, an ERD was sketched of the tables to identify the data types, primary keys, foreign keys, and other constraints. From this, a database schema Postgres file named crowdfunding_db_schema.sql was generated. Both files are accessible via the Starter_Files folder. 

![image](https://github.com/amshank1979/Crowdfunding_ETL/assets/133922704/880b0b4b-d761-4326-b1f3-c320f69218a0)

From this data, a new Postgres database was created and named crowdfunding_db. Using the established schema, database schema, the contacts, category, subcategory, and campaign tables were created in order to handle the identified foreign keys.

![image](https://github.com/amshank1979/Crowdfunding_ETL/assets/133922704/d9a5ac8b-88fc-4dd1-aff5-d999dde97563)

Several select statements were run to ensure each table reflected the correct data and relationship. The csv query outcome files may be found via the SQL Query Results folder. The select queries may be found via the SQL Source File: queries accessible via the Starter_Files folder.

Via the query analysis, we were able to determine the following:
* Overall there were 565 successful campaigns with 364 failed, 57 cancelled, and 14 ongoing.
  
 ![image](https://github.com/amshank1979/Crowdfunding_ETL/assets/133922704/49f1619c-c6f8-4265-9d35-182013585079)

* Theater obtained the highest pledge amount at 15,763,227 with the lowest pledge amount being in the journalism category at 36,176.
  
 ![image](https://github.com/amshank1979/Crowdfunding_ETL/assets/133922704/3d792539-0585-49a4-bc96-6b79a6d91904)

* Theater campaigns also had the highest rate of overall success coupled with the most campaigns (187 successful, 132 failed, 23 cancelled, and 2 ongoing). A total of 344 overall campaigns conducted compared to just 4 four journalism.
  
 ![image](https://github.com/amshank1979/Crowdfunding_ETL/assets/133922704/2eb4a5f7-3936-44de-b3d6-3d5cb6708f3e)

 ![image](https://github.com/amshank1979/Crowdfunding_ETL/assets/133922704/ed8289b8-8113-44b1-ac70-654b3f255fe3)

* The highest contributor was Casey Flores pledging 199,110 USD.
  
 ![image](https://github.com/amshank1979/Crowdfunding_ETL/assets/133922704/5a51937e-90e8-457b-bdda-8529c872c363)

* Casey Flores pledged that value to film & video, documentaries.
  
 ![image](https://github.com/amshank1979/Crowdfunding_ETL/assets/133922704/c92eeed1-8224-4d84-ab23-b0a052ea8b4b)
