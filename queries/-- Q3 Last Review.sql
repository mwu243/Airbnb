SELECT r.id,
       r.listing_id,
       l.name AS listing_name,
       r.reviewer_name,
       r.date_reviewed
FROM reviews r
LEFT JOIN listings l ON l.id = r.listing_id
WHERE r.date_reviewed IS NOT NULL
ORDER BY r.date_reviewed DESC, r.id DESC
LIMIT 1;

-- verdict: trust. Because John was the last one to review