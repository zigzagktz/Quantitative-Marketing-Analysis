USE CUSTOMER SEGMENTATION;

drop table if exists joined_sets ;
drop table if exists unique_order;

create table unique_order
SELECT ORDER_ID, ORDER_ITEM_ID, PRODUCT_ID, SELLER_ID, PRICE, FREIGHT_VALUE
			FROM order_item 
			group by order_id, order_item_id, product_id, seller_id, price, freight_value    ;

create table joined_sets select c.customer_id, c.customer_unique_id,
		od.order_id, 
		cast(replace(OD.order_purchase_timestamp, "-" , ",") as datetime ) AS PURCHASE_DATE  , 
        un.price, un.freight_value, un.product_id, 
        s.seller_id,s.seller_city, s.seller_state, s.seller_zip,  
        PE.product_photos_qty, PE.product_weight_g, PE.PRODUCT_CATEGORY_NAME_ENGLISH,
        OP.payment_type, OP.payment_value,
        #gl.lat, gl.long,
        C.customer_state, c.customer_city from customer c
	JOIN order_dataset od
		on od.customer_id = c.customer_id
	JOIN unique_order un
		ON od.order_id = un.order_id
    JOIN SELLER s
		ON S.SELLER_ID= UN.SELLER_ID
	JOIN prod_category_eng PE
		ON PE.product_id = UN.product_id
	JOIN order_payment OP
		ON OP.order_id = UN.order_id
;
select * from joined_sets;







	