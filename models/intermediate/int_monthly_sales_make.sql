{{ 
    config(
        materialized='view',
        tags=['intermediate', 'sales', 'carmake']
    )
}}

select 
    date_trunc('month',"DATES") AS Monhtly,
    SALESPERSON,
    CARMAKE,
    SUM(SALEPRICE - COMEARNED) AS TOTALSALE,
    SUM(COMEARNED) AS TOTALCOMEARNED
from {{ ref('stg_sales_data') }}
group by date_trunc('month',DATES), SALESPERSON, CARMAKE