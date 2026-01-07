SELECT "name", "per_pupil_expenditure"
FROM "districts"
         JOIN "expenditures" ON
    "districts"."id" = "expenditures"."district_id"
WHERE type is 'Public School District'
ORDER BY "expenditures"."per_pupil_expenditure" desc
LIMIT 10;