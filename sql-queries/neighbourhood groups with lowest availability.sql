SELECT 
    neighbourhood_group,
    ROUND(AVG(availability_365), 2) AS avg_availability
FROM airbnb_listings
GROUP BY neighbourhood_group
ORDER BY avg_availability ASC;
