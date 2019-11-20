SELECT year(PURCHASE_DATE) AS YEARS, 
			SUM(PRICE + FREIGHT_VALUE)/ COUNT(ORDER_ID) AS AVERAGE_VALUE
            FROM joined_sets
group by YEARS;

SELECT round(COUNT(ORDER_ID) / count(distinct(CUSTOMER_ID)) *
            SUM(PRICE + FREIGHT_VALUE)/ COUNT(ORDER_ID),2 ) AS Customer_life_time_Value  , "1st year" as years
FROM JOINED_SETS
where year(purchase_Date) <= "2017-09-01"
GROUP BY years
UNION
SELECT round(COUNT(ORDER_ID) / count(distinct(CUSTOMER_ID)) *
            SUM(PRICE + FREIGHT_VALUE)/ COUNT(ORDER_ID),0 ) AS CV , "2nd year" as years
FROM JOINED_SETS
where year(purchase_Date) > "2017-09-01"
GROUP BY years
;
            