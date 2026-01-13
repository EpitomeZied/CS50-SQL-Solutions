CREATE TABLE "Users"
(
    "id"         INT,
    "first_name" TEXT,
    "last_name"  TEXT,
    "password"   TEXT,
    PRIMARY KEY ("id")
);


CREATE TABLE "Schools"
(
    "id"              INT,
    "name"            TEXT,
    "type"            TEXT,
    "location"        TEXT,
    "year_of_founded" INT,
    PRIMARY KEY ("id")
);

CREATE TABLE "Companies"
(
    "id"       INT,
    "name"     TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY ("id")
);


CREATE TABLE "user_connections"
(
    "id"       INT,
    "user1_id" INT,
    "user2_id" INT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("user1_id") REFERENCES "Users" ("id"),
    FOREIGN KEY ("user2_id") REFERENCES "Users" ("id"),
    CHECK ("user1_id" != "user2_id"),
    UNIQUE ("user1_id", "user2_id")
);

CREATE TABLE "school_connections"
(
    "id"             INT,
    "user_id"        INT,
    "school_id"      INT,
    "start_date"     DATE,
    "end_date"       DATE,
    "type_of_degree" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("user_id") REFERENCES "Users" ("id"),
    FOREIGN KEY (school_id) REFERENCES "Schools" ("id"),
    UNIQUE (user_id, school_id)
);


CREATE TABLE "company_connections"
(
    "id"         INT,
    "user_id"    INT,
    "company_id" INT,
    "start_date" DATE,
    "end_date"   DATE,
    "title"      TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("user_id") REFERENCES "Users" ("id"),
    FOREIGN KEY (company_id) REFERENCES "Companies" ("id"),
    UNIQUE (user_id, company_id)
);