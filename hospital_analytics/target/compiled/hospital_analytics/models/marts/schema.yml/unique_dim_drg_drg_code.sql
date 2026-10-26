
    
    

select
    drg_code as unique_field,
    count(*) as n_records

from HOSPITAL_ANALYTICS.analytics.dim_drg
where drg_code is not null
group by drg_code
having count(*) > 1


