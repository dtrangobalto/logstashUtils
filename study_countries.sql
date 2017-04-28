
SELECT sc.id as id,
s.cros_study_id,
s.name as study_name,
s.protocol_number,
c.alpha3 as country_code, c.name as country_name,
sc.account_id, study_id, '123 456' as user_ids
FROM 
rep_001.study_countries sc,
rep_001.studies s,
mdm_001.geo_countries c
WHERE 
sc.study_id = s.id AND
sc.country_id = c.id
