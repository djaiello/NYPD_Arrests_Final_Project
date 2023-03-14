# NYPD_Arrests_Final_Project
Repository for NYPD Arrests Dataset Final Project

## Project Roles:
- Overall Project Management/GitHub/Dataset ETL - Doug Aiello
- Database Design and Production - Angelic Arias
- Machine Learning Design and Production - Israel Mejia
- Visualization Design and Production - Andrew Nappi
- Presentation and Delivery - All

## Dataset Links:
- SAMPLE DATASET (1000 records only) NYPD Arrests Data (Historic)
https://data.cityofnewyork.us/resource/8h9b-rp9u.csv

- FULL DATASET (~5.3 million records) NYPD Arrests Data (Historic), 2006-end of last year 
https://data.cityofnewyork.us/api/views/8h9b-rp9u/rows.csv?accessType=DOWNLOAD

## Background/Purpose:
In an attempt to better allocate current NYPD resources and future department spending, the city of New York has approached our firm to do an analysis of the crime in the city from both a demographic and geographic perspective.  They have made available to us the NYPD arrest records 2006-end of last year, sourced from the "NYC OpenData" website, to build a relational database, build a machine learning model to find trends and patterns and/or make predictions and visually present statistically relevant data to answer the core project questions.


## Project Questions:
1. What types and at what levels are crimes occuring in the city?
2. What are the demographics (age, race, gender) by crime and level of offense of the offenders?
3. Where (boro, neighborhood, street level) are crimes happening in the city?
4. Based upon prior historical data can we make predictions about where specific crimes may happen in the future? 


## List of Technologies:
ETL - Python
Database - PostgreSQL
Visualizations - Tableau
Machine Learning - Supervised, Random Forest model

# DATABASE:

![image](https://user-images.githubusercontent.com/114360511/224211440-e245aca6-5ba6-4371-b481-05977e278860.png)



# MACHINE LEARNING MODEL:

   For the machine learning part I will run a supervised model (possibly Random Forest) where I will to predict the borough ("ARREST_BORO") of the crime, based upon the feature columns that make most sense. The features might be "ARREST_DATE"(Grouped into smaller buckets to avoid encoding), or "KY_CD" which will need to be encoded, "LAW_CAT_CD", "AGE_GROUP", "PERP_SEX", "PERP_RACE". 
   I might also do a different model predicting the type of crime , based on the other columns or even predict the gender, age or race  based on the other columns, However due to lack of time this might be a great idea for a different project. So far I have encoded my columns, 




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
