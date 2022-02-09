SELECT properties.id, properties.title, reservations.start_date, properties.cost_per_night, AVG(property_reviews.rating) as avg_rating
FROM properties
JOIN reservations on reservations.property_id = properties.id
JOIN property_reviews on property_reviews.property_id = reservations.property_id
JOIN users on property_reviews.reservation_id = reservations.id
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.start_date
ORDER BY reservations.start_date
LIMIT 10;