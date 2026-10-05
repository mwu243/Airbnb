SELECT host_name,
       COUNT(*) AS listing_count
FROM listings
WHERE host_name IS NOT NULL
  AND TRIM(host_name) <> ''
  AND LOWER(host_name) NOT LIKE '%llc%'
  AND LOWER(host_name) NOT LIKE '%inc%'
  AND LOWER(host_name) NOT LIKE '%corp%'
  AND LOWER(host_name) NOT LIKE '%company%'
  AND LOWER(host_name) NOT LIKE '%properties%'
  AND LOWER(host_name) NOT LIKE '%property%'
  AND LOWER(host_name) NOT LIKE '%management%'
  AND LOWER(host_name) NOT LIKE '%realty%'
  AND LOWER(host_name) NOT LIKE '%apartments%'
  AND LOWER(host_name) NOT LIKE '%suites%'
  AND LOWER(host_name) NOT LIKE '%stays%'
  AND LOWER(host_name) NOT LIKE '%rentals%'
  AND LOWER(host_name) NOT LIKE '%hotel%'
  AND LOWER(host_name) NOT LIKE '%housing%'
  AND LOWER(host_name) NOT LIKE '%group%'
  AND LOWER(host_name) NOT LIKE '%homes%'
  AND LOWER(host_name) NOT LIKE '%Blueground%'
  AND LOWER(host_name) NOT LIKE '%Zencity%'
GROUP BY host_name
ORDER BY listing_count DESC
LIMIT 10;

-- verdict: not trust. Because I had to manually go in and remove Bluegrounds and Zencity which are not individuals but rather companies. 