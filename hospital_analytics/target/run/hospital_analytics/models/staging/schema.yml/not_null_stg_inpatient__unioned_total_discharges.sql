
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_discharges
from HOSPITAL_ANALYTICS.analytics.stg_inpatient__unioned
where total_discharges is null



  
  
      
    ) dbt_internal_test