--Creating The table
CREATE TABLE customer(
--Define columns and databse
	customer_ticket SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
	
);

--Ticket orders
CREATE TABLE ticket_orders(
	ticket_id SERIAL PRIMARY KEY,
	customer_id VARCHAR(25),
	order_date DATE DEFAULT CURRENT_DATE,
	ticket_sold NUMERIC(10,2),
	total_sold NUMERIC (7,2)
);

SELECT *
FROM ticket_orders;
--Movies

CREATE TABLE Movies(
	movie_id SERIAL PRIMARY KEY,
	movie_cost INTEGER,
	movie_director VARCHAR(25),
	movie_cast VARCHAR(100),
	--Add foreign key
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY(ticket_id) REFERENCES ticket_orders(ticket_id)

);

--concessions
CREATE TABLE concessions(
	food_drinks_id SERIAL PRIMARY KEY,
	drinks VARCHAR(60),
	food VARCHAR(60),
	--create foreign key
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY (ticket_id) REFERENCES ticket_orders(ticket_id)
	
);
--Data manipulation
INSERT INTO customer(
	customer_ticket,
	first_name,
	last_name)
VALUES(
	 2,
	'Diamond',
	'Toliver'
);

INSERT INTO customer(
	customer_ticket,
	first_name,
	last_name)
VALUES(
	 8,
	'James',
	'Oliver'
);
INSERT INTO customer(
	customer_ticket,
	first_name,
	last_name)
VALUES(
	 4,
	'Dave',
	'Tucker'
);




INSERT INTO ticket_orders(
	ticket_id,
	customer_id,
	ticket_sold,
	total_sold)
VALUES(
	8,
	'James',
	14,
	10
	
);

INSERT INTO concessions(
	food_drinks_id,
	drinks,
	food,
	ticket_id

)

VALUES(
	1,
	'water',
	'hotdog',
	4

);



SELECT *
FROM customer;