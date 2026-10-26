
  
    

create or replace transient table HOSPITAL_ANALYTICS.analytics.fct_hospital_charges
    
    
    
    
    

    as (select
    provider_ccn,
    drg_code,
    discharge_year,
    total_discharges,
    avg_submitted_charge,
    avg_total_payment,
    avg_medicare_payment,
    round(avg_submitted_charge / nullif(avg_medicare_payment, 0), 2) as markup_ratio
from HOSPITAL_ANALYTICS.analytics.stg_inpatient__unioned
    )
;


  