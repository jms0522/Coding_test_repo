-- 코드를 입력하세요
SELECT 
a.REST_ID, 
a.REST_NAME, 
a.FOOD_TYPE, 
a.FAVORITES, 
a.ADDRESS, 
round(avg(b.REVIEW_SCORE), 2 ) SCORE
from REST_INFO a 
join REST_REVIEW b
on a.REST_ID = b.REST_ID
where a.address like "서울%"
group by b.REST_ID
order by 6 desc, 4 desc;