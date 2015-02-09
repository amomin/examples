/** Example of creating a stored procedure
 * and how to run a test script in a test 
 * database by creating the procedure,
 * running it, and then dropping it
 *
 */
USE test;
DROP TABLE IF EXISTS tmp;
CREATE TABLE tmp(value int(8));

DELIMITER $$

DROP PROCEDURE IF EXISTS stupidproc $$

CREATE PROCEDURE stupidproc ()

BEGIN

DECLARE count INT;
DECLARE max INT;

SET @count=1;
SET @max=5;
WHILE(@count < @max) DO
    INSERT INTO tmp(value) VALUES (@count);
    SET @count=(@count+1);

END WHILE;

END $$

CALL stupidproc();

DROP PROCEDURE IF EXISTS stupidproc $$
