{{
    config(
        tags=['dash_sales_bi']
    )
}}

select
    rank() over (order by CARMAKE) as carmake_id,
    CARMAKE
from {{ ref('int_monthly_sales_make') }}
group by CARMAKE