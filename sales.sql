DROP TABLE sales;

CREATE TABLE sales (
    ID      int,
    month   varchar(10),
    type    varchar(1),
    sales   int
);

INSERT INTO sales VALUES (1, 'Jan', 'a',10);
INSERT INTO sales VALUES (1, 'Jan', 'b',15);
INSERT INTO sales VALUES (2, 'Feb', 'a', 20);
INSERT INTO sales VALUES (2, 'Feb', 'b', 12);
INSERT INTO sales VALUES (3, 'Mar', 'a', 15);
INSERT INTO sales VALUES (3, 'Mar', 'b', 35);
INSERT INTO sales VALUES (4, 'Apr', 'a', 30);
INSERT INTO sales VALUES (4, 'Apr', 'b', 5);
