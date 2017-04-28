
SELECT ss.id,
ss.status::TEXT,
s.cros_study_id,
s.name as study_name,
s.protocol_number,
site_number,
institution,
ss.study_id,
study_country_id,
email,
c.alpha3 as country_code,
c.name as country_name,
'123 456' as user_ids
FROM
rep_001.study_sites ss,
rep_001.studies s,
rep_001.study_countries sc,
mdm_001.geo_countries c
WHERE
ss.study_country_id = sc.id AND
ss.study_id = s.id AND
ss.country_id = c.id
