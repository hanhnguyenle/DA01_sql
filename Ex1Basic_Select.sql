 --Ex1:Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.--

Select Name
From City
Where Population > 120000
and Countrycode = "USA"
  
--Ex2--
Select * 
From CITY
Where Countrycode = "JPN"
  
--Ex3--  
Select City, State
From Station
  
--Ex4--
Select distinct City
From Station
Where City like 'a%'
or City like 'e%'
or City like 'i%'
or City like 'o%' 
or City like 'u%' 

--Ex5--
Select distinct City
From Station
Where City like '%a'
or City like '%e'
or City like '%i'
or City like '%o' 
or City like '%u' 

--Ex6--
Select distinct City
From Station
Where City not like 'a%'
AND  City not like 'e%'
AND  City not like 'i%'
AND  City not like 'o%' 
AND  City not like 'u%' 

--Ex7--
Select distinct City
From Station
Where City not like 'a%'
AND  City not like 'e%'
AND  City not like 'i%'
AND  City not like 'o%' 
AND  City not like 'u%' 

--Ex8--
Select name
From Employee
Where salary > 2000
and months < 10
Order by employee_id asc

--Ex9--
Select product_id
From Products
Where low_fats = "Y"
and recyclable = "Y"

--Ex10--
Select name
from Customer
where referee_id <> 2 or referee_id is null

--Ex11--
Select name, population,area
From World
Where area >= 3000000
or population >= 25000000

--Ex12--
Select distinct author_id as id
From Views
Where viewer_id=author_id
order by id asc

--Ex13--
SELECT part,assembly_step FROM parts_assembly
WHERE finish_date is NULL

--Ex14--
select * from lyft_drivers
Where yearly_salary <=30000
or yearly_salary>=70000

--Ex15--
select distinct advertising_channel from uber_advertising
where money_spent > 100000
