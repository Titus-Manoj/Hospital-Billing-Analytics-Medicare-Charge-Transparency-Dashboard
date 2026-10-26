select * from {{ ref('stg_inpatient_2022') }}
union all
select * from {{ ref('stg_inpatient_2023') }}
union all
select * from {{ ref('stg_inpatient_2024') }}