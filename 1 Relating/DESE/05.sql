SELECT "city", COUNT("id")
FROM schools
WHERE type is 'Public School'
Group By city
HAVING COUNT("ID") <= 3
ORDER BY COUNT("id") DESC, city;