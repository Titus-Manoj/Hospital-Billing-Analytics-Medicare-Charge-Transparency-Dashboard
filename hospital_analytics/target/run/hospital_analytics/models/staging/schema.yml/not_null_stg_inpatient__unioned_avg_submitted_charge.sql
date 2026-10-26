
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select avg_submitted_charge
from HOSPITAL_ANALYTICS.analytics.stg_inpatient__unioned
where avg_submitted_charge is null



  
  
      
    ) dbt_internal_test