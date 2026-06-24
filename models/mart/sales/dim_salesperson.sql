{{
    config(
        tags=['dash_sales_bi']
    )
}}

select
    --rank() over (order by salesperson) as sales_id,
    {{generate_id('SALESPERSON')}} as sales_id,
    salesperson
from {{ ref('int_monthly_sales_make') }}
group by salesperson