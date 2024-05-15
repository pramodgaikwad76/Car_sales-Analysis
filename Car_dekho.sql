SELECT * FROM cars.car_dekho;

use cars;

-- READ DATA --

SELECT *FROM car_dekho;

-- TOTAL Car: To get a count of total records --

select count(*) from car_dekho;

-- The manager ask the employee how many cars will be avilable in the  2023? --

select count(*) from car_dekho where year = 2023;

-- the manager ask the employee how many cars avilable in the 2020, 2021, 2022 --

select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7

-- GROUP BY --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- client ask me to print total of all cars by year, i dont see the all the details

select year, count(*) from car_dekho group by year;

-- client asked to car dealer agent how many diesel cars will there be in 2020 --

select count(*) from car_dekho where year = 2020 and fuel = "Diesel";

-- Client requestedn a car dealer agent how many petrol cars will be in 2020 --

 select count(*) from car_dekho where year = 2020 and fuel = "Petrol";
 
 -- The manager told the employee to give the print all fuel cars (petrol,diesel,CNG come by all year --
 select year, count(*) from car_dekho where fuel = "Petrol" group by year;
 select year, count(*) from car_dekho where fuel = "Diesel" group by year;
 select year, count(*) from car_dekho where fuel = "CNG" group by year;
 select year, count(*) from car_dekho where fuel = "" group by year;
 
 -- the manager said were more than 100 cars in given year which year more than 100 cars --
 
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)<50;

-- the manager said to the employee all cars count details between 2015 and 2023 --
select count(*) from car_dekho where year between 2015 and 2023;

-- the manager said  to the employee all cars details between 2015 and 2023 we need complte list --
select*from car_dekho where year between 2015 and 2023;
