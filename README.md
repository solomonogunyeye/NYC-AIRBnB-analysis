<p align="center">
  <img src="images/NYC banner.png">
</p>

# NYC-AIRBnB-analysis
This project involves an in-depth analysis of a New York City dataset. The dataset contains rent data, housing categories, and time periods. The goal is to uncover insights into rent trends, revenue performance, housing information which can be used in pricing adjustments,booking behavior, host listing density, supply-demand imbalance.

# Objectives
1. Identify listings with revenue potential.
2. Analyze availabilty and revenue per neighbourhood.
3. Identify missing values.

# Data cleaning and reprocessing
1. Removed 1000+ duplicates.
2. Confirmed all dates standard to DD/MM/YYYY with the Time stamp.
3. Formatted uneven segments across multiple rows.

##  Dataset
| Detail | Info |
|---|---|
| **Source** | Kaggle |
| **Scope** | Air-BnB listings across NewYork |
| **Size** | 48,894 rows · 18 columns |
| **Period** | January 2015 – December 2019 |
| **Key columns** | Name, Host id, Neighbourhood, Availability 365. |

## SQL Approach
Key techniques used:
- Window functions for potential revenue ranking across neighbourhood groups.
```sql
SELECT 
    room_type,
    AVG(price * availability_365) AS avg_annual_revenue_potential
FROM airbnb_listings
GROUP BY room_type
ORDER BY avg_annual_revenue_potential DESC;

SELECT 
    neighbourhood_group,
    ROUND(AVG(availability_365), 2) AS avg_availability
FROM airbnb_listings
GROUP BY neighbourhood_group
ORDER BY avg_availability ASC;

SELECT 
    neighbourhood,
    ROUND(AVG(price), 2) AS avg_price,
    ROUND(AVG(reviews_per_month), 2) AS avg_reviews_per_month
FROM airbnb_listings
GROUP BY neighbourhood
HAVING AVG(reviews_per_month) IS NOT NULL
ORDER BY avg_reviews_per_month DESC, avg_price DESC
LIMIT 20;
```

  
# Insights
1. 99.8% of listings above $1000 a night are available through the year. They receive no bookings.
2. Listings with minimum stays under 20 nights show higher booking frequency drives lower availability.
3. 56.8% of listings are Entire home/apartments. They also possess the highest revenue potential due to high prices but are the most available year round, 45% are available more than 200 days a year though this metric is likely inflated  due to listings with high prices.
4. Private/shared rooms possess less revenue potential but are in use 85% of the year. 
5. Brooklyn and Manhattan have the lowest average availability with The Bronx and Staten Island having the highest. Queens stays in the middle with 144.45 days availability average a year.

# Key Findings
1. Highly priced listings are mostly empty as a result of both over-pricing and high booking frequencies.
2. Listings in Brooklyn and Manhattan are the most sought after locations likely due to proximity to the economic hub of the City.
3. As proximity reduces, availability averages increase.

# Key Notes
1. Total revenue per neighbourhood groups are unidentifiable due to lack of revenue data.
2. Due to the presence of null values, the IS NOT NULL function is consistently used.
3. Due to prior experience with filling Null values with text elements influencing data analysis negatively, the null values were kept null and the IS NOT NULL function is used. To identify null values for possible future input, a query to identify all Null values was used.
4. Revenue potential refers to potential profit per listing, not to be confused with confirmed revenue.
