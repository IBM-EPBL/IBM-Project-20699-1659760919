-- create a table
CREATE TABLE warehouse_database (
  id INTEGER PRIMARY KEY,
  warehouse_storage_company varchar(100),
  location varchar(100),
  state varchar(50)
);
-- insert some values
INSERT INTO warehouse_database VALUES (1,'TEAM TRANS LOGISTICS PRIVATE LIMITED','Chennai','Tamil_Nadu');
INSERT INTO warehouse_database VALUES (2,'AQUA STAR DISTRIBUTION LOGISTICS PRIVATE LIMITED','Chennai','Tamil_Nadu');
INSERT INTO warehouse_database VALUES (3,'ENNORE CARGO CONTAINER TERMINAL PRIVATE LIMITED','Chennai','Tamil_Nadu');
INSERT INTO warehouse_database VALUES (4,'CONNECT CARGO PRIVATE LIMITED','Chennai','Tamil_Nadu');
INSERT INTO warehouse_database VALUES (5,'BHARATH SWIFT LOGISTICS PRIVATE LIMITED','Chennai','Tamil_Nadu');
INSERT INTO warehouse_database VALUES (6,'MAC-NELS CONTAINER LINES PRIVATE LIMITED','Chennai','Tamil_Nadu');
INSERT INTO warehouse_database VALUES (7,'ASIA CRYSTAL COMMODITY LLP','Chennai','Tamil_Nadu');
INSERT INTO warehouse_database VALUES (8,'CARGO PLAN INTERNATIONAL (INDIA) PRIVATE LIMITED','Chennai','Tamil_Nadu');
INSERT INTO warehouse_database VALUES (9,'SKY EXPRESS','Chennai','Tamil_Nadu');
INSERT INTO warehouse_database VALUES (10,'TAMILNADU TEXTILE CORPORATION LIMITED','Chennai','Tamil_Nadu');
INSERT INTO warehouse_database VALUES (11,'GIRI ASSOCIATES','Chennai','Tamil_Nadu');
INSERT INTO warehouse_database VALUES (12,'MANNADY METALS','Chennai','Tamil_Nadu');
INSERT INTO warehouse_database VALUES (13,'MARIANA EXPRESS LOGISTICS','Chennai','Tamil_Nadu');
SELECT * FROM warehouse_database;