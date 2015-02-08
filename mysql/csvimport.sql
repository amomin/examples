CREATE TABLE example
(col1 varchar(100), col2 varchar(100), col3 varchar(100), col4 varchar(100), col5 varchar(100));

load data local infile 'C:\\path\\to\\file.csv' into table example
fields terminated by '|'
optionally enclosed by '"'
lines terminated by '\n'
IGNORE 1 LINES;
