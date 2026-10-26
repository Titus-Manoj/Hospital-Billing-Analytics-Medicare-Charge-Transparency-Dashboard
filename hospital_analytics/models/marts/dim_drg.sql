select
    drg_code,
    drg_description
from {{ ref('stg_inpatient__unioned') }}
qualify row_number() over (
    partition by drg_code
    order by discharge_year desc
) = 1