use computer_store
select * from products
select * from manufacturers
--zad 1
select name from products
--zad 2
select name, price from products
-- zad 3
select name from products where price <= 200
--zad 4
select name from products where price BETWEEN 60 and 200
-- zad 5
select name, price*100 as cena_grosz from products
--zad 6
select avg(price) as srednia_cena from products
--zad 7
select avg(price) as srednia_cena from products where manufacturer_id = 2
--zad 8
select count(*) as ilosc_prod180 from products where price >= 180
--zad 9
select name, price from products where price >= 180 order by price desc
select * from products order by name
select * from products where name like 'a%' 