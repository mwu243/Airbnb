SELECT id,
       name,
       neighborhood,
       property_type,
       bathrooms,
       accommodates,
       price,
       url
FROM listings
WHERE bedrooms >= 3
  AND LOWER(property_type) LIKE '%house%'
  AND available = 't'
ORDER BY bedrooms DESC, accommodates DESC;

-- verdict: trust. Because it output houses that had 3+ bedrooms available 