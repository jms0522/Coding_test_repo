-- 코드를 입력하세요
SELECT 
a.CART_ID
FROM CART_PRODUCTS a
join 
(select CART_ID from 
CART_PRODUCTS
where name = "Yogurt") b
on a.CART_ID = b.CART_ID  
where name = "Milk"
group by 1
order by 1;
