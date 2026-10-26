
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select discharge_year
from HOSPITAL_ANALYTICS.analytics.fct_hospital_charges
where discharge_year is null



  
  
      
    ) dbt_internal_test