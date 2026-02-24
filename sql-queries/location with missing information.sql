SELECT 
    id,
    neighbourhood_group,
    neighbourhood,
    room_type,
    price,
    minimum_nights,
    number_of_reviews,
    reviews_per_month,
    availability_365
FROM airbnb_listings
WHERE 
    price IS NULL
    OR minimum_nights IS NULL
    OR number_of_reviews IS NULL
    OR reviews_per_month IS NULL
    OR availability_365 IS NULL
    OR neighbourhood IS NULL
    OR neighbourhood_group IS NULL;
