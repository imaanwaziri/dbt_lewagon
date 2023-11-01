SELECT s.products_id
    , s.date_date
    , s.orders_id
    , s.revenue
    , s.quantity
    , p.purchase_price
    , ROUND(s.quantity*p.purchase_price,2) as purchase_cost
    , ROUND(s.revenue - (s.quantity*p.purchase_price),2) as margin
FROM {{ref("stg_gz_raw_data__sales")}} as s
JOIN {{ref("stg_gz_raw_data__product")}} as p
USING (products_id)