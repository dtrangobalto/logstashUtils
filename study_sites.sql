
SELECT ss.id, study_country_id, status, site_number, comments, irb_ec_type, institution, study_id,
cros_site_id, street_1, street_2, city, state_or_region, postal_code, 
phone_number, email, c.alpha3 as country_code, c.name as country_name, '123' as user_ids
FROM
rep_001.study_sites ss,
mdm_001.geo_countries c
WHERE
ss.country_id = c.id