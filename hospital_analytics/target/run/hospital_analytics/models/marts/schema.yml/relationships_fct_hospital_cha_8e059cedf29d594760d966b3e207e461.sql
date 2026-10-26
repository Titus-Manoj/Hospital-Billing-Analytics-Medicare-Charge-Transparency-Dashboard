
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select provider_ccn as from_field
    from HOSPITAL_ANALYTICS.analytics.fct_hospital_charges
    where provider_ccn is not null
),

parent as (
    select provider_ccn as to_field
    from HOSPITAL_ANALYTICS.analytics.dim_hospital
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test