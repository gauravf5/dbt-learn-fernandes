select 

    stg_order.customer_id as customer_id,
    stg_payments.order_id as order_id,
    SUM(stg_payments.amount) as lifetime_value

from stg_payments

INNER JOIN stg_order

on stg_order.order_id = stg_payments.order_id

where stg_payments.status = 'success'

group by stg_order.customer_id, stg_payments.order_id

