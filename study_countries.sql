
SELECT sc.id as id, account_id, c.alpha3 as country_code, c.name as country_name, '123' as user_ids 
FROM 
rep_001.study_countries sc,
mdm_001.geo_countries c
WHERE 
sc.country_id = c.id
