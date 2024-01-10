-- 코드를 입력하세요
SELECT
    car_id,
    CASE
        WHEN SUM(CASE
                     WHEN start_date <= '2022-10-16' AND end_date >= '2022-10-16'
                     THEN 1
                     ELSE 0
                 END) > 0 THEN '대여중'
        ELSE '대여 가능'
    END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY car_id
ORDER BY car_id DESC;