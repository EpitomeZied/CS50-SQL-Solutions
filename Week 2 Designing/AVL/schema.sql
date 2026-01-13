CREATE TABLE "passengers"
(
    "first_name" TEXT,
    "last_name"  TEXT,
    "age"        INTEGER,
    "id"         INTEGER,
    primary key ("id")
);

CREATE TABLE "checks_in"
(
    "id"           INTEGER,
    "passenger_id" INTEGER,
    "time" DEFAULT current_timestamp,
    "flight_id"    INTEGER,
    primary key ("id"),
    FOREIGN KEY ("passenger_id") references "passengers" ("id"),
    FOREIGN KEY ("flight_id") references "flights" ("id")
);

CREATE TABLE airlines
(
    "id"        int,
    "name"      TEXT,
    "concourse" TEXT NOT NULL CHECK ( "concourse" IN ('A', 'B', 'C', 'D', 'F', 'T')),
    primary key ("id")
);

CREATE TABLE flights
(
    "id"             INTEGER,
    "flight_number"  INTEGER,
    "airline"        TEXT,
    "departing"      TEXT,
    "heading"        TEXT,
    "departure_date" DATE,
    "arrival_date"   DATE,
    primary key ("id"),
    foreign key (airline) references "airlines" ("id")
)