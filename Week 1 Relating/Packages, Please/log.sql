-- *** The Lost Letter ***
SELECT *
FROM "addresses"
WHERE "id" IS (
            SELECT "to_address_id"
            FROM "packages"
            WHERE "from_address_id" IS (
                        SELECT "id"
                        FROM "addresses"
                        WHERE "address" IS '900 Somerville Avenue'
                  )
                  AND "contents" LIKE 'congratulatory%'
      );
-- *** The Devious Delivery ***
SELECT *
FROM "addresses"
WHERE "id" IS (
            SELECT "address_id"
            FROM "scans"
            WHERE "package_id" IS (
                        SELECT "id"
                        FROM "packages"
                        WHERE "from_address_id" IS NULL
                  )
                  AND "action" IS 'Drop'
      );
-- *** The Forgotten Gift ***
SELECT "name"
FROM "drivers"
WHERE "id" IS (
            SELECT "driver_id"
            FROM "scans"
            WHERE "package_id" IS (
                        SELECT "id"
                        FROM "packages"
                        WHERE "from_address_id" IS (
                                    SELECT "id"
                                    FROM "addresses"
                                    WHERE "address" IS '109 Tileston Street'
                              )
                  )
            ORDER BY "timestamp" DESC
      );