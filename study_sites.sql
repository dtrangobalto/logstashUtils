
SELECT id, study_country_id, status, site_number, comments, irb_ec_type, institution, study_id,
cros_site_id, street_1, street_2, city, state_or_region, postal_code, 
country_abbr, phone_number, email, country_id, grp.roleIds  from rep_001.study_sites
left join
(SELECT study_site_id, array_to_string(array_agg(role_id), ',') as roleIds from rep_001.study_site_assignments
group by study_site_id ) grp
on study_site_id = id
