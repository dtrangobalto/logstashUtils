

SELECT p.id, first_name, last_name, state, c.alpha3 as country_code, c.name as country_name, email, postal_code
FROM
people p,
mdm_001.geo_countries c
WHERE
p.country_id = c.id
AND p.title='pi'
