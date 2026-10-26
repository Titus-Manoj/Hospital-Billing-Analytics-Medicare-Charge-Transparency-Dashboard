
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select markup_ratio
from HOSPITAL_ANALYTICS.analytics.fct_hospital_charges
where markup_ratio is null



  
  
      
    ) dbt_internal_test