-- Este Test pasa si esta consulta devuelve 0 filas
-- Selecciona cualquier registro de la tabla de hechos donde las metricas sean negativas

select
 MONHTLY, TOTALCOMEARNED, TOTALSALE, carmake_id, sales_id
from
    {{ ref('fact_monthly_sales') }}
Where
    TOTALSALE < 0 or TOTALCOMEARNED < 0 


