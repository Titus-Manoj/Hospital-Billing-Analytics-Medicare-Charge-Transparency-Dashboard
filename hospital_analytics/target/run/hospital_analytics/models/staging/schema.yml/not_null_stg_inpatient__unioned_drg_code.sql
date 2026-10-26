
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select drg_code
from HOSPITAL_ANALYTICS.analytics.stg_inpatient__unioned
where drg_code is null



  
  
      
    ) dbt_internal_test