
  create or replace   view HOSPITAL_ANALYTICS.analytics.stg_inpatient__unioned
  
  
  
  
  as (
    select * from HOSPITAL_ANALYTICS.analytics.stg_inpatient_2022
union all
select * from HOSPITAL_ANALYTICS.analytics.stg_inpatient_2023
union all
select * from HOSPITAL_ANALYTICS.analytics.stg_inpatient_2024
  );

