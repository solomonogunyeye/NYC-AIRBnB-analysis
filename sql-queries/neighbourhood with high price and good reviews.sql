SELECT 
    neighbourhood,
    ROUND(AVG(price), 2) AS avg_price,
    ROUND(AVG(reviews_per_month), 2) AS avg_reviews_per_month
FROM airbnb_listings
GROUP BY neighbourhood
HAVING AVG(reviews_per_month) IS NOT NULL
ORDER BY avg_reviews_per_month DESC, avg_price DESC
LIMIT 20;
