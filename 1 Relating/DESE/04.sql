SELECT "city",
    COUNT("id")
FROM "schools"
WHERE "type" IS 'Public School'
GROUP BY "city"
ORDER BY COUNT("id") DESC,
    "city"
LIMIT 10;