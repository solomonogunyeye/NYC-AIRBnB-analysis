SELECT 
    id,
    neighbourhood,
    price,
    availability_365,
    reviews_per_month,
    (price * availability_365) AS annual_revenue_potential
FROM airbnb_listings
WHERE (price * availability_365) > (
    SELECT AVG(price * availability_365) FROM airbnb_listings
)
AND (reviews_per_month IS NULL OR reviews_per_month < 0.5)
ORDER BY annual_revenue_potential DESC;
