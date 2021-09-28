CREATE TABLE merchant_category(
    id serial PRIMARY KEY NOT NULL,
    name varchar(20) NOT NULL
);


CREATE TABLE merchant(
    id serial PRIMARY KEY NOT NULL,
    name varchar(50) NOT NULL,
    id_merchant_category int NOT NULL,
  	FOREIGN KEY (id_merchant_category) REFERENCES merchant_category(id) 
);

CREATE TABLE card_holder (
    id serial PRIMARY KEY NOT NULL,
    name varchar(50) NOT NULL
);

CREATE TABLE credit_card(
    card varchar(20) UNIQUE NOT NULL,
    cardholder_id int NOT NULL,
	FOREIGN KEY (cardholder_id) REFERENCES card_holder(id)
);

CREATE TABLE transaction(
    id int NOT NULL,
    date timestamp NOT NULL,
    amount float NOT NULL,
    card varchar(20) NOT NULL,
    id_merchant int NOT NULL,
    FOREIGN KEY (card) REFERENCES credit_card (card),
	FOREIGN KEY (id_merchant) REFERENCES merchant (id)
);
