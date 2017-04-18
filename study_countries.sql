SELECT id, country_code, study_id, country_id, account_id, sites_planned, grp.roleIds  from rep_001.study_countries
left join
(SELECT study_country_id, array_to_string(array_agg(role_id), ',') as roleIds from rep_001.study_country_assignments
group by study_country_id ) grp
on study_country_id = id
