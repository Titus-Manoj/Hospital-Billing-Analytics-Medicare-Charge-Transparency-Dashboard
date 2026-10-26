
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select provider_ccn
from HOSPITAL_ANALYTICS.analytics.stg_inpatient__unioned
where provider_ccn is null



  
  
      
    ) dbt_internal_test