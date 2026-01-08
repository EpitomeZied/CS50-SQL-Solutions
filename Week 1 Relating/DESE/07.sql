SELECT "name"
FROM "schools"
WHERE "district_id" IS (
        SELECT "id"
        FROM "districts"
        WHERE "name" IS 'Cambridge'
    );