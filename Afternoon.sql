'{Instructions
1.Create a table called person that records a persons id, name, age, height ( in cm ), city, favorite_color.
id should be an auto-incrementing id/primary key - Use type: SERIAL
2.Add 5 different people into the person database.
Remember to not include the person_id because it should auto-increment.
3.List all the people in the person table by height from tallest to shortest.
4.List all the people in the person table by height from shortest to tallest.
5.List all the people in the person table by age from oldest to youngest.
6.List all the people in the person table older than age 20.
7.List all the people in the person table that are exactly 18.
8.List all the people in the person table that are less than 20 and older than 30.
9.List all the people in the person table that are not 27 (Use not equals).
10.List all the people in the person table where their favorite color is not red.
11.List all the people in the person table where their favorite color is not red and is not blue.
12.List all the people in the person table where their favorite color is orange or green.
13.List all the people in the person table where their favorite color is orange, green or blue (use IN).
14.List all the people in the person table where their favorite color is yellow or purple (use IN).'
1. create table person (
person_id SERIAL primary key, name varchar(20), age integer, height integer,
 city varchar(20), favorite_color varchar(20)
);
2. insert into person ( name, age, height, city, favorite_color) 
values(
 ( 'Jerry Smith', 42, 182, 'Poptown', 'Brown' ),
 ( 'Sterling Archer', 44, 182, 'NYC', 'Black' ),
 ( 'Rick Sanchez', 68, 182, 'Springerville', 'Blue' ),
 ( 'Jack Horesman', 54, 152, 'LA', 'Peach' ),
 ( 'Ash Catchem', 11, 121, 'Palet', 'Red' )
);
3. select * from person
order by height desc;
4. select * from person
order by height asc;
5. select * from person
order by age desc;
6. select * from person
where age > 20;
7. select * from person
where age = 18;
8. select * from person
where age < 20 or age > 30;
9. select * from person
where age != 27;
10. select * from person
where favorite_color != 'Red';
11. select * from person
where favorite_color != 'Red'
and favorite_color != 'Blue';
12. select * from person
where favorite_color = 'Orange'
and favorite_color = 'Green';
13. select * from person 
where favorite_color 
IN ( 'Orange', 'Green', 'Blue' );
14. select * from person 
where favorite_color 
IN ( 'Purple', 'Yellow');
___________________________________________________________
'
1.  Create a table called orders that records: person_id, product_name, product_price, quantity.
2.  Add 5 orders to the orders table.
> Make orders for at least two different people.
> person_id should be different for different people.
3.  select all the records from the orders table.
4.  Calculate the total number of products ordered.
5.  Calculate the total order price.
6.  Calculate the total order price by a single person_id.'

1. create table orders ( person_id serial, product_name varchar(20), 
product_price numeric, quantity integer );
2. insert into orders (person_id, product_name, product_price, quantity) 
values
( 1, 'Meatball', 12.50, 66 ),
( 2, 'Sandwhich', 22.50, 3 ),
( 3, 'Noodles', 32.50, 4 ),
( 4, 'Sushi', 42.50, 5 ),
( 5, 'Soup', 1.50, 77 );
3. select * from orders;
4.select sum(quantity) from orders;
5.select sum(product_price * quantity) from orders;
6.select sum(product_price * quantity) from orders where person_id = 2;
______________________________________________________________________________
'
1. Add 3 new artists to the artist table. ( Its already created )
2. select 10 artists in reverse alphabetical order.
3. select 5 artists in alphabetical order.
4. select all artists that start with the word Black.
5. select all artists that contain the word Black.'

1. INSERT INTO artist ( name ) VALUES ( 'Linkin Park', 'Awol Nation', 'Cobra Starship'  );
2.select * from artist ORDER BY name DESC limit 10;
3.select * from artist ORDER BY name ASC limit 5;
4.select * from artist where name like 'Black%';
5.select * from artist where name like '%Black%';
______________________________________________________________________________
'
1.count how many orders were made from the USA.
2.Find the largest order total amount.
3.Find the smallest order total amount.
4.Find all orders bigger than $5.
5.count how many orders were smaller than $5.
6.count how many orders were in CA, TX, or AZ (use IN).
7.Get the average total of the orders.
8.Get the total sum of the orders.'

1.select count(*) from invoice where billing_country = 'USA';
2.select max(total) from invoice;
3.select min(total) from invoice;
4.select * from invoice where total > 5;
5.select count(*) from invoice where total < 5;
6.select count(*) from invoice where billing_state in ('CA', 'TX', 'AZ');
7.select avg(total) from invoice;
8.select sum(total) from invoice;