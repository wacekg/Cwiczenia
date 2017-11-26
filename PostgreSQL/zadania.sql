use computer_store
select * from products;
select * from manufacturers;
--zad 1
select name from products;
--zad 2
select name, price from products;
-- zad 3
select name from products where price <= 200;
--zad 4
select name from products where price BETWEEN 60 and 200;
-- zad 5
select name, price*100 as cena_grosz from products;
--zad 6
select avg(price) as srednia_cena from products;
--zad 7
select avg(price) as srednia_cena from products where manufacturer_id = 2;
--zad 8
select count(*) as ilosc_prod180 from products where price >= 180;
--zad 9
select name, price from products where price >= 180 order by name, price desc;
--zad 10
select products.*, manufacturers.name as Producent from products join manufacturers ON manufacturers.id = products.manufacturer_id;
--zad 11
select products.name as produkt, products.price as cena, manufacturers.* from products join manufacturers ON manufacturers.id = products.manufacturer_id;
--zad 12
select manufacturers.id, avg(price) as srednia_cena from products join manufacturers ON manufacturers.id = products.manufacturer_id group by manufacturers.id;
--zad 13
select manufacturers.name, avg(price) as srednia_cena from products join manufacturers ON manufacturers.id = products.manufacturer_id group by manufacturers.name;
--zad 14
select manufacturers.name, avg(price) from products join manufacturers ON products.manufacturer_id = manufacturers.id group by manufacturers.name having avg(products.price) >=150;
--zad 15
select name, price from products order by price limit 1;
--zad 16
select manufacturers.name, max(price) from products join manufacturers ON products.manufacturer_id = manufacturers.id group by manufacturers.name;
--zad 17
select name from manufacturers where id not in (select manufacturer_id from products);
--zad 18
insert into products (name, price, manufacturer_id) values ('Loudspeakers', 70, 2);
--zad 19
update products set name = 'Laser Printer' where id = 8;
--zad 20
update products set price = price-price*0.1;
--zad 21
update products set price = price-price*0.1 where price > 120;
