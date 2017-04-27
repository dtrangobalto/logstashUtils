
SELECT ss.id, study_country_id, status::TEXT, site_number, institution, study_id,
cros_site_id,
email, c.alpha3 as country_code, c.name as country_name,'123 456' as user_ids
FROM
rep_001.study_sites ss,
mdm_001.geo_countries c
WHERE
ss.country_id = c.id
