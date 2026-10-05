SELECT ROUND(AVG(CAST(REPLACE(REPLACE(price, '$', ''), ',', '') AS REAL)), 2) AS avg_nightly_price
FROM listings
WHERE neighborhood = 'Lincoln Park'
  AND price IS NOT NULL;

  -- verdict: trust. Because it output the corrected average nightly price.