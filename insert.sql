insert into "customers"(first_name, last_name, email, phone)
values
('Lebron', 'James', 'lebronj@codingtemple.com', '1234567890'),
('Michael', 'Jordan', 'michaelj@codingtemple.com', '9876543210'),
('Nikola', 'Jokic', 'nikolaj@codingtemple.com', '867530900'),
('Joel', 'Embiid', 'joele@codingtemple.com', '112233445');

select * from customers

insert into "mechanics"(first_name, last_name)
values
('Derek', 'Jeter'),
('Aaron', 'Judge'),
('Babe', 'Ruth'),
('Barry', 'Bonds');

select * from mechanics

insert into "salesperson"(first_name, last_name)
values
('Tom', 'Brady'),
('Joe', 'Montana'),
('John', 'Elway'),
('Patrick', 'Mahomes');

select * from salesperson

CREATE or REPLACE FUNCTION insert_data(_make varchar, _model varchar, _year int, _color varchar, _price int)
  RETURNS void AS
  $BODY$
      BEGIN
        INSERT INTO cars_for_sale(make, model, year, color, price)
        VALUES(_make, _model, _year, _color, _price);
      END;
  $BODY$
  LANGUAGE 'abcdefg' volatile;
 
 
 select * from cars_for_sale
 
 CREATE or REPLACE FUNCTION insert_data(_customer_id int, _mechanic_id int)
  RETURNS void AS
  $BODY$
      BEGIN
        INSERT INTO cars_for_service(customer_id, mechanic_id)
        VALUES(_customer_id, _mechanic_id);
      END;
  $BODY$
  LANGUAGE 'abcdefg' volatile;

 
select * from cars_for_service

CREATE or REPLACE FUNCTION insert_data(_customer_id int, _car_id int, _amount int, _salesperson_id int)
  RETURNS void AS
  $BODY$
      BEGIN
        INSERT INTO sale_invoice(customer_id, car_id, amount, salesperson_id)
        VALUES(_customer_id, _car_id, _amount, _salesperson_id);
      END;
  $BODY$
  LANGUAGE 'abcdefg' volatile;

 
select * from sale_invoice


CREATE or REPLACE FUNCTION insert_data(_car_id int, _mechanic_id int, _services varchar, _amount int)
  RETURNS void AS
  $BODY$
      BEGIN
        INSERT INTO service_invoice(car_id, mechanic_id, services, amount)
        VALUES(_car_id, _mechanic_id, _services, _amount);
      END;
  $BODY$
  LANGUAGE 'abcdefg' volatile;
 

select * from service_invoice

CREATE or REPLACE FUNCTION insert_data(_service_ticket_id int)
  RETURNS void AS
  $BODY$
      BEGIN
        INSERT INTO service_history(service_ticket_id)
        VALUES(_service_ticket_id);
      END;
  $BODY$
  LANGUAGE 'abcdefg' volatile;


select * from service_history



select * from customers_sale_invoice