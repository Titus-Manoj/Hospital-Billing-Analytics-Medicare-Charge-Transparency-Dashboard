
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select avg_medicare_payment
from HOSPITAL_ANALYTICS.analytics.stg_inpatient__unioned
where avg_medicare_payment is null



  
  
      
    ) dbt_internal_test