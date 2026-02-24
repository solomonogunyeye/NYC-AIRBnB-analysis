SELECT 
    room_type,
    AVG(price * availability_365) AS avg_annual_revenue_potential
FROM airbnb_listings
GROUP BY room_type
ORDER BY avg_annual_revenue_potential DESC;
