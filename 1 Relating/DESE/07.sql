select name
from schools
where district_id is (select id
                      from districts
                      where name is 'Cambridge');