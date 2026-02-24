SELECT 
    id,
    neighbourhood,
    minimum_nights,
    price
FROM airbnb_listings
WHERE minimum_nights < 10
ORDER BY minimum_nights DESC;
