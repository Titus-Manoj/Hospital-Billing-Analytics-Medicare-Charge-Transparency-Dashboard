
  
    

create or replace transient table HOSPITAL_ANALYTICS.analytics.dim_drg
    
    
    
    
    

    as (select
    drg_code,
    drg_description
from HOSPITAL_ANALYTICS.analytics.stg_inpatient__unioned
qualify row_number() over (
    partition by drg_code
    order by discharge_year desc
) = 1
    )
;


  