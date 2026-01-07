
-- *** The Lost Letter ***
SELECT *
from "addresses"
WHERE "id" IS (SELECT to_address_id
               FROM "packages"
               WHERE "from_address_id" IS (SELECT "id"
                                           FROM "addresses"
                                           WHERE "address" is '900 Somerville Avenue')
                 AND "contents" LIKE 'congratulatory%');
-- *** The Devious Delivery ***
select *
from addresses
WHERE id is (Select address_id
             FROM scans
             where package_id is (select id
                                  from packages
                                  where from_address_id is null)
               AND action is 'Drop');
-- *** The Forgotten Gift ***

select name from drivers where id is (select driver_id
                                      from scans
                                      where package_id is (select id
                                                           from packages
                                                           where from_address_id is
                                                                 (select id from addresses where address is '109 Tileston Street') )order by timestamp desc);
