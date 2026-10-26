
    
    

with child as (
    select drg_code as from_field
    from HOSPITAL_ANALYTICS.analytics.fct_hospital_charges
    where drg_code is not null
),

parent as (
    select drg_code as to_field
    from HOSPITAL_ANALYTICS.analytics.dim_drg
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


