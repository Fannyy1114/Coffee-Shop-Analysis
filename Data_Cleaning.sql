SELECT
    transaction_date,
    CAST(SUBSTR(transaction_time, 1, INSTR(transaction_time, ':') - 1) AS INTEGER) AS hour,
    transaction_qty,
    case
    	when transaction_qty = 1 then 'Single'
        when transaction_qty > 1 then 'Group' end as order_size,
    store_id,
    product_id,
    store_location,
    unit_price,
    (transaction_qty*unit_price) as revenue,
    product_category,
    product_type,
    product_detail
From CoffeeShopSales
    
    
   