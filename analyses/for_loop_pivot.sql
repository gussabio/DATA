{% set target_makes = ['Toyota', 'Ford', 'Chevrolet', 'Nissan', 'Honda'] %}

select Monhtly, SALESPERSON,

{% for make in target_makes %}

SUM(CASE WHEN CARMAKE = '{{make}}' then TOTALSALE ELSE 0 END) AS sales_{{make}}{% if not loop.last %},{% endif %}

{% endfor %}

from  {{ ref("int_monthly_sales_make")}}
group by Monhtly, SALESPERSON