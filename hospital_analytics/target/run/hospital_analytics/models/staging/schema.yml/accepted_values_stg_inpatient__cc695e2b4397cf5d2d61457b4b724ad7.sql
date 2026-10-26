
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        discharge_year as value_field,
        count(*) as n_records

    from HOSPITAL_ANALYTICS.analytics.stg_inpatient__unioned
    group by discharge_year

)

select *
from all_values
where value_field not in (
    '2022','2023','2024'
)



  
  
      
    ) dbt_internal_test