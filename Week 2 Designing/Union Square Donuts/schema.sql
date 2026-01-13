CREATE TABLE "Ingredients"
(
    "id"              INT,
    "name"            TEXT,
    "price_per_units" DOUBLE,
    "unit"            INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE "Donuts"
(
    "id"             INT,
    "name"           TEXT,
    "ingredients_id" INT,
    "gluten-free"    BLOB,
    "price"          INT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("ingredients_id") REFERENCES "Ingredients" ("id")
);

CREATE TABLE "Orders"
(
    "id"          integer,
    "customer_id" integer not null,
    "order_time"  numeric not null,
    primary key ("id"),
    foreign key ("customer_id") references customers ("id")
);

CREATE TABLE "Customers"
(
    "id"         int,
    "first_name" text not null,
    "last_name"  text not null,
    primary key ("id")

);

CREATE TABLE "donut_ingredients"
(
    "id"            int,
    "donut_id"      int not null,
    "ingredient_id" int not null,
    primary key ("id"),
    foreign key ("donut_id") references "donuts" ("id"),
    foreign key ("ingredient_id") references "ingredients" ("id")
);

CREATE TABLE order_items
(
    "id"       int,
    "order_id" int not null,
    "donut_id" int not null,
    "quantity" int not null,
    primary key ("id"),
    foreign key ("order_id") references orders ("id"),
    foreign key ("donut_id") references donuts ("id")
);