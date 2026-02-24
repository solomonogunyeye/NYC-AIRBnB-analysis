SELECT 
    id,
    neighbourhood_group,
    neighbourhood,
    room_type,
    price,
    availability_365,
    (price * availability_365) AS annual_revenue_potential
FROM airbnb_listings
ORDER BY annual_revenue_potential DESC
LIMIT 20;
