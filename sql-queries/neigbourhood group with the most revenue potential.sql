SELECT 
    neighbourhood_group,
    SUM(price * availability_365) AS annual_revenue_potential
FROM airbnb_listings
GROUP BY neighbourhood_group
ORDER BY annual_revenue_potential DESC;
