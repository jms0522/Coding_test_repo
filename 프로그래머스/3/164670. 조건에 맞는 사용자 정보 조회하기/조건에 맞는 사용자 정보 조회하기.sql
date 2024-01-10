-- 코드를 입력하세요
SELECT 
  u.USER_ID,
  u.NICKNAME,
  CONCAT(u.city, " ",  u.STREET_ADDRESS1 ," ", u.STREET_ADDRESS2) AS 전체주소,
  CONCAT(LEFT(TLNO, 3), "-", SUBSTRING(tlno, 4, 4), "-", RIGHT(TLNO, 4)) AS 전화번호
FROM USED_GOODS_USER u 
JOIN (
  SELECT COUNT(WRITER_ID) AS users, WRITER_ID
  FROM USED_GOODS_BOARD
  GROUP BY WRITER_ID
  HAVING users >= 3
) AS g ON g.WRITER_ID = u.USER_ID
ORDER BY USER_ID DESC;