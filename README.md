# NYC-AIRBnB-analysis
This project involves an in-depth analysis of a New York City dataset. The dataset contains rent data, housing categories, and time periods. The goal is to uncover insights into rent trends, revenue performance, housing information which can be used in pricing adjustments,booking behavior, host listing density, supply-demand imbalance.

# Dataset-Description
| Column name      | Data-Type | Data-Type Saved in PostgreSQL  | Description |
|----------------|---------------|----------------|-------------|
| id   | integer   | integer |  unique identifier for each building.     |
| name     | string  | text         | name of each building.       |
| host id |integer | integer         | unique identifier of each building owner.        |
| host name      | text |text          | name of each building owner.       |
| neighbourhood group | text | text | NYC segment where building is located.|
| neighbourhood| text | text | neighbourhood where building is located.|
|latitude| numeric| numeric|specific coordinates north or south of the equator.|
| longitude| numeric| numeric| specific coordinates east and west of the prime meridian.|
| room type| text | text | subset of the room rented.| 
|minimum nights| integer |integer| minimum nights host enforces.|
| number of reviews| integer | integer |number of reviews left by customers.|
|last review|timestamp with time zone|timestamp with time zone| recent date and time a consumer left a review.|
|reviews per month| integer| integer| average reviews submitted a month|
|calculated host listing count| integer| integer| number of listings per host|
|availability 365|integer| integer| number of available days in a year|

DATASET SIZE: 48,894 rows, 15 columns.
TIME PERIOD COVERED: January 2015 - December 2019.

# Objectives
1. Identify listings with revenue potential.
2. Analyze availabilty and revenue per neighbourhood.
3. Identify missing values.

# Data cleaning and reprocessing
1. Removed 1000+ duplicates.
2. Confirmed all dates standard to DD/MM/YYYY with Time stamp.
3. Formatted uneven segments.
   
  
# Insights
1. 99.8% of listings above $1000 a night are available through the year.
2. Listings with minimum stays under 20 nights show significantly lower availability, suggesting higher booking frequency.
3. 56.8% of listings are Entire home/apartments. They also possess the highest revenue potential due to high prices but are the most available year round, 45% are available more than 200 days a year though this metric is likely inflated  due to listings with high prices.
4. Private/shared rooms possess less revenue potential but are in use 85% of the year. 
5. Brooklyn and Manhattan have the lowest average availability with The Bronx and Staten Island having the highest. Queens stays in the middle with 144.45 days availability average a year.

# Key Findings
1. Highly priced listings are mostly empty.
2. Listings in Brooklyn and Manhattan are the most sought after locations likely due to proximity to the economic hub of the City.
3. As proximity reduces, availability averages increase.

# Key Notes
1. Total revenue per neighbourhood groups are unidentifiable due to lack of revenue data.
2. Due to the presence of null values, the IS NOT NULL function is consistently used.
3. Due to prior experience with filling Null values with text elements influencing data analysis negatively, the null values were kept null and the IS NOT NULL function is used. To identify null values for possible future input, a query to identify all Null values was used.
4. Revenue potential refers to potential profit per listing, not to be confused with confirmed revenue.
