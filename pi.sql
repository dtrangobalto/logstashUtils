

SELECT
p.id,
first_name,
last_name,
s.cros_study_id,
s.name as study_name,
s.protocol_number,
s.id as study_id,
sc.id as study_country_id,
ss.id as study_site_id,
c.alpha3 as country_code, c.name as country_name,
p.email,
'123 456' as user_ids
FROM
people p,
rep_001.study_sites ss,
rep_001.studies s,
rep_001.study_countries sc,
mdm_001.geo_countries c
WHERE
p.country_id = c.id AND
ss.study_id = s.id AND
p.study_site_id = ss.id AND
p.study_country_id = sc.id
AND p.title='pi'
