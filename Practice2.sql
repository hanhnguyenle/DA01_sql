--Ex1--
Select distinct city
From station
Where ID %2 =0

--Ex2--
Select count(city) - count(distinct city) as difference
From Station

--Ex3--
Select ceil(avg(salary) - avg(replace(salary,0,"")))
From EMPLOYEES

--Ex4--
SELECT 
ROUND(
SUM(order_occurrences*item_count::DECIMAL)/SUM(order_occurrences),1)
FROM items_per_order;

--Ex5--
SELECT candidate_id
FROM candidates
WHERE SKILL IN ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) = 3
ORDER BY candidate_id

  --Ex6--
SELECT user_id, MAX(post_date::date) - MIN(post_date::date)
FROM posts
WHERE DATE_PART('year', post_date::DATE) = 2021 
GROUP BY user_id
Having COUNT(post_id)>1

--Ex7--
SELECT card_name, MAX(issued_amount)-MIN(issued_amount) as dif
FROM monthly_cards_issued
GROUP BY  card_name
ORDER BY dif DESC;

--Ex8--
SELECT manufacturer, count(drug), SUM(cogs - total_sales) as loss
FROM pharmacy_sales
Where cogs - total_sales > 0
GROUP BY manufacturer
ORDER BY SUM(cogs - total_sales) desc

--Ex9--
Select *
From Cinema
Where ID%2 <>0
and description <> "boring"
Order by rating desc

--Ex10--
Select teacher_id, count( distinct subject_id) as cnt 
From Teacher
Group by teacher_id

--Ex11--
Select user_id, count(follower_id) as followers_count 
From Followers
Group by user_id
Order by user_id 

--Ex12--
Select class
From Courses
group by class
Having count(student)>=5
