SELECT districts.name,
       expenditures.per_pupil_expenditure,
       staff_evaluations.exemplary
FROM districts
         JOIN expenditures ON districts.id = expenditures.district_id
         JOIN staff_evaluations ON districts.id = staff_evaluations.district_id
where districts.type is 'Public School District'
  AND expenditures.per_pupil_expenditure > (select avg(per_pupil_expenditure)
                                            from expenditures)
  AND staff_evaluations.exemplary > (select avg(exemplary)
                                     from staff_evaluations)
ORDER BY staff_evaluations.exemplary desc,
         expenditures.per_pupil_expenditure desc;