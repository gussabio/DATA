select *
from {{ref('stg_sales_data')}}
{# {% if target.name == 'gad_prod' %} #}
{% if target.name == 'dev' %}
limit 10
{% endif %}  