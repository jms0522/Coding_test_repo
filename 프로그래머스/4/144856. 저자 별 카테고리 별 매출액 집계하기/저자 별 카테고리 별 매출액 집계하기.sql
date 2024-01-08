-- 코드를 입력하세요
SELECT 
b.AUTHOR_ID, 
a.AUTHOR_NAME, 
b.CATEGORY, 
sum(bs.SALES * b.PRICE) TOTAL_SALES
from BOOK b
join BOOK_SALES bs 
on bs.BOOK_ID = b.BOOK_ID
join AUTHOR a 
on a.AUTHOR_ID = b.AUTHOR_ID
where SALES_DATE like "%2022-01%"
group by 1, 3
order by 1, 3 desc;