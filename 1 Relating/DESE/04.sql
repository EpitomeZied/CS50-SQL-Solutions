SELECT "city", COUNT("id")
FROM schools
WHERE type is 'Public School'
Group By city
ORDER BY COUNT("id") desc, city
LIMIT 10;