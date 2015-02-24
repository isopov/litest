CREATE TABLE "salaries"
  (
    "id"          INTEGER,
    "salary_date" DATE,
    "salary"      INTEGER,
    PRIMARY KEY ("id")
  );

CREATE TABLE "workers"
  (
    "id"          INTEGER,
    "first_name"  VARCHAR(100),
    "last_name"   VARCHAR(100),
    PRIMARY KEY ("id")
  );
