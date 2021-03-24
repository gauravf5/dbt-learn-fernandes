select 
        id as payment_id,
        orderid as order_id,
        status,
        amount

    from  RAW.STRIPE.PAYMENT