SELECT 
    products_id
    , date_date
    , orders_id
    , revenue
    , quantity
    , purchase_price
    , ROUND (s.quantity*p.purchase_price,2)AS purchase_cost, 
    s.revenue - ROUND(s.quantity*p.purchase_price,2) AS margin  
FROM {{ref("stg_gz_raw_data_sales")}} s
LEFT JOIN {{ref("stg_raw_data_product")}} p 
USING (products_id)