# NYPD Arrests Final Project
Repository for NYPD Arrests Dataset Final Project

## Background/Purpose:
In an attempt to better allocate current NYPD resources and future department spending, the city of New York has approached our firm to do an analysis of the crime in the city from both a demographic and geographic perspective.  They have made available to us the NYPD arrest records 2006-end of last year, sourced from the "NYC OpenData" website, to build a relational database, build a machine learning model to find trends and patterns and/or make predictions and visually present statistically relevant data to answer the core project questions.

## Data Source:
NYPD arrest records 2006-end of last year, sourced from the "NYC OpenData" website )see below...

### NYPD Dataset Field Descriptions:
![image](https://user-images.githubusercontent.com/114360511/225769255-2879d434-a577-4b68-83f9-e221479f708b.png)

### Dataset Links
- SAMPLE DATASET (1000 records only) NYPD Arrests Data (Historic)
https://data.cityofnewyork.us/resource/8h9b-rp9u.csv

- FULL DATASET (~5.3 million records) NYPD Arrests Data (Historic), 2006-end of last year 
https://data.cityofnewyork.us/api/views/8h9b-rp9u/rows.csv?accessType=DOWNLOAD


## Project Questions:
1. What types and at what levels are crimes occuring in the city?
2. What are the demographics (age, race, gender) by crime and level of offense of the offenders?
3. Where (boro, neighborhood, street level) are crimes happening in the city?
4. Based upon prior historical data can we make predictions about where specific crimes may happen in the future? 

## Project Roles:
- Overall Project Management/GitHub/Dataset ETL - Doug Aiello
- Database Design and Production - Angelic Arias
- Machine Learning Design and Production - Israel Mejia
- Visualization Design and Production - Andrew Nappi
- Presentation and Delivery - All

## List of Technologies:
ETL - Python (Google Collab)<br />
Database - PostgreSQL<br />
Machine Learning - Python (Google Collab), Supervised - Random Forest Model<br />
Visualizations - Tableau<br />

# DATASET ETL:


# DATABASE:
## NYPD Arrest DB: Entity Relationship Diagram (ERD)
![image](https://user-images.githubusercontent.com/114360511/225763154-e220a451-3b24-490e-a0f7-16c650b1caf3.png)

## NYPD Arrest DB: Schema
https://github.com/djaiello/NYPD_Arrests_Final_Project/blob/main/Database/NYPD_Arrests_schema.sql

## NYPD Arrest DB: Build Structure
### PD_CD Table:
![image](https://user-images.githubusercontent.com/114360511/225764230-3d9e0629-8c6c-4763-a60d-80776c851552.png)

### KY_CD Table:
![image](https://user-images.githubusercontent.com/114360511/225764273-6bc14344-c081-4281-b508-66ea764c7e88.png)

### ARRESTS Table
https://github.com/djaiello/NYPD_Arrests_Final_Project/blob/main/Database/arrests_table.PNG?raw=true


# MACHINE LEARNING MODEL:

   For the machine learning part I have run a supervised model, to be espesific, Random Forest. Please see the image below for refrence.
   
   ![](https://github.com/djaiello/NYPD_Arrests_Final_Project/blob/7fc13bafb558d77e65db9b414b13d963ba9c5d1f/Machine%20Learning/New%20Ramdon%20Forest.png)
   
   
   As part of the machine learning portion, I predicted the borough "ARREST_BORO" of the crimes in NYC, based upon the feature columns that makes most sense to me. The features that I used were PD_CD, KY_CD, LAW_CAT_CD, AGE_GROUP, PERP_SEX and PERP_RACE.
   
   I had to encode these features as seeing below. 
   ![](https://github.com/djaiello/NYPD_Arrests_Final_Project/blob/ceb6632a6a8983ba05d558e4fca17c3a9fc472c5/Machine%20Learning/Encoding%20.png)
   
   After encoding the features into numbers, and inputing the ramdon forest, I was able to move to the confusion matrix part of the project.
   After inputing my confusion matrix I was able make predictions as seeing below.
   
   ![](https://github.com/djaiello/NYPD_Arrests_Final_Project/blob/ceb6632a6a8983ba05d558e4fca17c3a9fc472c5/Machine%20Learning/Making%20Prediction.png)
   
   To conclude, please see a dataframe of the accuratecy score below. 
   
   ![](https://github.com/djaiello/NYPD_Arrests_Final_Project/blob/ceb6632a6a8983ba05d558e4fca17c3a9fc472c5/Machine%20Learning/Displaying%20results%20for%20Acc_score.png)
   
   For a future projoect it would also be nice to do a different model predicting the type of crime , based on the other columns or even predict the gender, age or race  based on the other columns, However due to lack of time this might be a great idea for a different project. So far I have encoded my columns, I have also trained my model and I have also created a ramdon forest clasifier. 



# VISUALIZATION/PRESENTATION:

Primary Technology used for the Visualizations
•	For the interactive dashboard portion of the project, I will utilize Tableau to present our visualizations to their fullest.

What type of Visualizations will we present
•	I am going to be showing Charts, Graphs, and Maps to visualize what crimes happen and in what areas Specifically:
o	Graphs showing the demographics of people committing the crimes.
o	Graphs showing the type of crime being committed and how often the crime is committed.
o	There will be a map of NYC showing the intensity of crimes occurring in those areas and will be able to add different filters so we can customize the data for more specific question.

Reasons for choosing my section
•	I chose the visualization section because in my prior experience interviewing for careers in data, I was told I lacked the practical skills they were looking for applicants to have in regard to presenting data. Specifically, I was told I needed more experience using Power BI, Tableau, Excel, and Salesforce. I figure if I flex my new knowledge I have acquired in this course it can show I am really capable in these software. 

Describe the Data
•	For our project we found a relative clean data set of New York City crime. 
•	My main purpose is to create visualizations for our data to help any lay person figure out where high crime areas exist in NYC. 
o	This can be useful for anyone even perspective tenants to choose where they would like to move to if they plan to move to NYC.

Link to Tableau Public Data Story:
• https://public.tableau.com/views/FinalProject-RDSBC/CrimeMappinginNewYork?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link
