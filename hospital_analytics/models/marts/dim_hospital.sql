select
    provider_ccn,
    provider_name,
    provider_city,
    provider_state,
    provider_zip,
    ruca_desc
from {{ ref('stg_inpatient__unioned') }}
qualify row_number() over (
    partition by provider_ccn
    order by discharge_year desc
) = 1