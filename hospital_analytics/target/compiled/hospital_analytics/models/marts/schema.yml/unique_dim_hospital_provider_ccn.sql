
    
    

select
    provider_ccn as unique_field,
    count(*) as n_records

from HOSPITAL_ANALYTICS.analytics.dim_hospital
where provider_ccn is not null
group by provider_ccn
having count(*) > 1


