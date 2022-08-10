

  create  table "metricflow"."dbt_meta"."daily_transactions__dbt_tmp"
  as (
    
select 
extract(day from ds) as day, sum(transaction_amount_usd) as total_transaction_amount_usd
from "metricflow"."dbt_meta"."demo_transactions_base"
group by day
order by day
  );