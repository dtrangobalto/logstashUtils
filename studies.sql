SELECT id, account_id, name, full_name, grp.roleIds  from rep_001.studies
left join
(SELECT study_id, array_to_string(array_agg(role_id), ',') as roleIds from rep_001.study_assignments
group by study_id ) grp
on study_id = id
