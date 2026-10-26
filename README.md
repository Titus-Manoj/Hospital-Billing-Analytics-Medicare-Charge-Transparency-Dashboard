# Hospital-Billing-Analytics-Medicare-Charge-Transparency-Dashboard
nalyzing $0-cost, publicly available CMS data to reveal how much hospitals bill  versus what Medicare actually pays — built end-to-end with Snowflake, dbt, and Power BI

## Problem Statement:
Hospital billing data is public but unusable in raw form; this project turns it into a self-service tool answering “how does billing markup vary by state, procedure, and time?”


## Architecture

CMS Public CSVs (2022-2024)
        ↓
Snowflake (raw layer) — loaded via Snowsight UI
        ↓
dbt Core — staging models (cleaning, typing, unioning years)
        ↓
dbt Core — mart models (star schema: dim_hospital, dim_drg, fct_hospital_charges)
        ↓
Power BI Desktop — dashboard (native Snowflake connector, read-only role)

## Tech Stack
- **Data Source:** CMS Medicare Inpatient Hospitals by Provider and Service (2022-2024)
- **Warehouse:** Snowflake (X-Small warehouse, 60s auto-suspend)
- **Transformation:** dbt Core 1.12 (Snowflake adapter)
- **Visualization:** Power BI Desktop
- **Testing:** dbt tests (not_null, unique, relationships) — all passing

## Key Findings
- Nevada hospitals show a billing markup ratio (~11x) far above the national norm, 
  while most states cluster between 3-6x
- [Add: which DRG had highest volume, which had highest average charge]
- [Add: overall charge vs. payment trend 2022→2024]

## Data Engineering Notes
- Provider names/addresses drifted slightly across years in CMS source files — 
  resolved via a "most recent year wins" dedup strategy in dim_hospital/dim_drg
- CMS suppresses hospital-DRG combinations with ≤10 discharges for privacy — 
  reflected in the data, not a pipeline defect
- Read-only Snowflake role (bi_reader) used for the BI connection — 
  least-privilege access, no write/raw-schema access from Power BI



## Skills Demonstrated
- End-to-end analytics engineering: raw data → warehouse → transformation → BI
- Star schema design and dimensional modeling
- Data quality testing and validation (dbt)
- Handling real-world data messiness (schema drift, deduplication, suppression rules)
- Least-privilege access control design
- Business-oriented metric design (not just "charts," but a specific analytical question)
