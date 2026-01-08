SELECT COUNT("title")
FROM "episodes"
WHERE "air_date" IS '2018-01-01'
    OR "air_date" IS '2023-01-01';