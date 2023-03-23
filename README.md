# NYPD Arrests Final Project
Repository for NYPD Arrests Dataset Final Project

## Background/Purpose:
In an attempt to better allocate current NYPD resources and future department spending, the city of New York has approached our firm to do an analysis of the crime in the city from both a demographic and geographic perspective.  They have made available to us the NYPD arrest records 2006-end of last year, sourced from the "NYC OpenData" website, to build a relational database, build a machine learning model to find trends and patterns and/or make predictions and visually present statistically relevant data to answer the core project questions.

## Data Source & Exploration:
### "NYPD Arrest Data(Historic)" dataset
- Lists every arrest in NYC going back to 2006 through the end of last year.
- Each arrest record consists of data in 4 areas:
   - Time
   - Criminal Code/Offense
   - Geographic
   - Demographic
- Part of the "NYC OpenData" intiative, a free public data publishing by New York City agencies and partners 

#### NYPD Dataset Field Descriptions:
![image](https://user-images.githubusercontent.com/114360511/227314008-4ebde745-901b-450b-9df3-add55a6519cf.png)

## Project Questions:
1. What types and at what levels are crimes occuring in the city?
2. What are the demographics (age, race, gender) by crime and level of offense of the offenders?
3. Where (boro, neighborhood, street level) are crimes happening in the city?
4. Based upon prior historical data can we make predictions about where specific crimes may happen in the future? 

## List of Technologies:
ETL - Python (Google Collab)<br />
Database - PostgreSQL<br />
Machine Learning - Python (Google Collab), Supervised - Random Forest Model<br />
Visualizations - Tableau<br />

# ETL:
- Null Handling
- Deletion of Unnecessary Columns - Administrative fields
- Value Grouping - AGE_GROUP
- Data Format Conversion - ARREST_DATE
- Data Limiting - Last 10 years

# Database:
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

   For the machine learning part I have run a supervised model. Please see the image below for refrence. So far I have encoded my columns, I have also trained my model and I have also created a ramdon forest clasifier.
   
   ![](https://github.com/djaiello/NYPD_Arrests_Final_Project/blob/7fc13bafb558d77e65db9b414b13d963ba9c5d1f/Machine%20Learning/New%20Ramdon%20Forest.png)
   
   
   As part of the machine learning portion, I predicted the borough "ARREST_BORO" of the crimes in NYC, based upon the feature columns that makes most sense to me. The features that I used were PD_CD, KY_CD, LAW_CAT_CD, AGE_GROUP, PERP_SEX and PERP_RACE.
   
   I had to encode these features as seeing below. 
   ![](https://github.com/djaiello/NYPD_Arrests_Final_Project/blob/ceb6632a6a8983ba05d558e4fca17c3a9fc472c5/Machine%20Learning/Encoding%20.png)
   
   After encoding the features into numbers, and inputing the ramdon forest, I was able to move to the confusion matrix part of the project.
   After inputing my confusion matrix I was able make predictions as seeing below.
   
   ![](https://github.com/djaiello/NYPD_Arrests_Final_Project/blob/ceb6632a6a8983ba05d558e4fca17c3a9fc472c5/Machine%20Learning/Making%20Prediction.png)
   
   To conclude, please see a dataframe of the accuratecy score below. 
   
   ![](https://github.com/djaiello/NYPD_Arrests_Final_Project/blob/ceb6632a6a8983ba05d558e4fca17c3a9fc472c5/Machine%20Learning/Displaying%20results%20for%20Acc_score.png)
   
   It was a little tricky for me to pick an accuracy score since depending on the dataset the results would come out to be either 40% or 100%  As seen in the image below. 
   
   ![](https://github.com/djaiello/NYPD_Arrests_Final_Project/blob/5414bda8699074564094fe8860ada6fabc980fc3/Machine%20Learning/100%25%20acurecy.png)
   

# VISUALIZATION/PRESENTATION:

### Primary Technology used for the Visualizations
•	For the interactive dashboard portion of the project, I will utilize Tableau to present our visualizations to their fullest.

### What type of Visualizations will we present
•	I am going to be showing Charts, Graphs, and Maps to visualize what crimes happen and in what areas Specifically:
o	Graphs showing the demographics of people committing the crimes.
o	Graphs showing the type of crime being committed and how often the crime is committed.
o	There will be a map of NYC showing the intensity of crimes occurring in those areas and will be able to add different filters so we can customize the data for more specific question.

### Reasons for choosing my section
•	I chose the visualization section because in my prior experience interviewing for careers in data, I was told I lacked the practical skills they were looking for applicants to have in regard to presenting data. Specifically, I was told I needed more experience using Power BI, Tableau, Excel, and Salesforce. I figure if I flex my new knowledge I have acquired in this course it can show I am really capable in these software. 

### Describe the Data
•	For our project we found a relative clean data set of New York City crime. 
•	My main purpose is to create visualizations for our data to help any lay person figure out where high crime areas exist in NYC. 
o	This can be useful for anyone even perspective tenants to choose where they would like to move to if they plan to move to NYC.

### Description of Dashboard:

- Our first visualization is a line graph the shows us the the amount of crimes committed in each year time frame. As you can see the graphstarts high in 2012 then gradually falls before hitting aa low point in 2020. this could have occured because of the COVID 19 Pandemic.

![Updated Crime Per Year Graph](https://user-images.githubusercontent.com/114446803/227365251-f243b979-c32b-4667-81fb-b6a3ef67eb0f.png)

- Our second visualization shows the crimes committed split up by precinct. This can help us visualize what police stations are experiencing most of the crime and where to better send city funds.

![Updated Crimes by Precinct](https://user-images.githubusercontent.com/114446803/227365995-996ed71c-12d7-4fe5-bd90-62a603ff4201.png)

- Next is a graph showing crime committed by Boro this is much like the graph prior but tells us a more general location so we know what overarching Boro has the highest crime volume. I have filters on the side so you can see the break down by year for any changes in the spread of crime.

![Updated Crime by Boro ](https://user-images.githubusercontent.com/114446803/227366812-968ff8c5-6626-489a-8a92-26a7020e81ff.png)

- The following three dashboard visuals are all very similar and serve a similar purpose, to get a feel of the average criminal. Based on factors in their arrest records such as age, race, and sec this can help us craft an image of the average criminal in New York City. Notable Conclusions from this data include:

   - By looking at the data collected, you can see that African Americans in New York City commit a large amount of the area's crimes.
   - The data points out that males commit about 82% of overall crime over women.
   - People in the age range of 25-44 years old commit the majority of crime compared to the other age ranges.

![Updated Crime by Age Dash](https://user-images.githubusercontent.com/114446803/227367345-2a8c8b31-e550-4ea7-add5-20d8d632776e.png)

![Updated Crime by Race Dash](https://user-images.githubusercontent.com/114446803/227367472-316c1818-49a0-4439-93b3-67f9063d3b27.png)

![Updated Crime by Sex Dash](https://user-images.githubusercontent.com/114446803/227367557-5fd6f368-5397-4b2c-bac7-a278a1d6d14c.png)


## Link to Tableau Public Data Story:
• https://public.tableau.com/views/FinalProject-RDSBC/CrimeMappinginNewYork?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

# Recommendations for Future Analysis:
- Inclusion of GeoJson Data for both City Borough and NYPD Precincts
- Would be nice to do a different model predicting the type of crimes in NYC. However due to time, it would have been more complicated to enconde the types of crimes. In the current model, I only have 5 different features to encode, the crimes section has hundreds of different crimes. 
 
# Time Constraint Issues:
- Test different machine learning models to look for differences
- Use different targets to make predictions on the data we had
- Figure out how to get the geojson file to integrate into the visualizations

# ANY QUESTIONS??
