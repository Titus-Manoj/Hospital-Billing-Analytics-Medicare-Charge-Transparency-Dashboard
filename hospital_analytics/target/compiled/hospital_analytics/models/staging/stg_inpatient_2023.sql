select
    rndrng_prvdr_ccn::varchar        as provider_ccn,
    rndrng_prvdr_org_name::varchar   as provider_name,
    rndrng_prvdr_city::varchar       as provider_city,
    rndrng_prvdr_state_abrvtn::varchar as provider_state,
    rndrng_prvdr_zip5::varchar       as provider_zip,
    rndrng_prvdr_ruca_desc::varchar  as ruca_desc,
    drg_cd::varchar                  as drg_code,
    drg_desc::varchar                as drg_description,
    tot_dschrgs::number              as total_discharges,
    avg_submtd_cvrd_chrg::float      as avg_submitted_charge,
    avg_tot_pymt_amt::float          as avg_total_payment,
    avg_mdcr_pymt_amt::float         as avg_medicare_payment,
    2023                             as discharge_year
from hospital_analytics.raw.inpatient_2023