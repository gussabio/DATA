{{
    config(
        tags=['dash_sales_bi']
    )
}}

select MONHTLY, TOTALCOMEARNED, TOTALSALE, dim_cm.carmake_id, dim_slpr.sales_id
from {{ ref('int_monthly_sales_make') }} as psgm
left join {{ ref('dim_carmake') }} as dim_cm
on psgm.CARMAKE = dim_cm.CARMAKE
left join {{ref('dim_salesperson') }} as dim_slpr
on psgm.SALESPERSON = dim_slpr.SALESPERSON
