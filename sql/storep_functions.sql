DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `AvgBillAmt`(OUT AvgVal INT UNSIGNED)
BEGIN
	SELECT AVG(bill_amount)
    INTO AvgVal
    FROM bill;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `MaxBillAmt`(OUT MaxVal INT UNSIGNED)
BEGIN
	SELECT MAX(bill_amount)
    INTO MaxVal
    FROM bill;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `MaxRemainingBal`(OUT MaxVal INT UNSIGNED)
BEGIN
	SELECT MAX(remaining_balance)
    INTO MaxVal
    FROM bill;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `MinBillAmt`(OUT MinVal INT UNSIGNED)
BEGIN
	SELECT MIN(bill_amount)
    INTO MinVal
    FROM bill;
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgBillAmt`() RETURNS int
    READS SQL DATA
BEGIN
	DECLARE AvgVal INT UNSIGNED;
    
    SELECT AVG(bill_amount)
    INTO AvgVal
    FROM bill;
    
	RETURN AvgVal;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `MaxBillAmt`() RETURNS int unsigned
    READS SQL DATA
BEGIN
	DECLARE MaxVal INT UNSIGNED;
    
    SELECT MAX(bill_amount)
    INTO MaxVal
    FROM bill;
    
	RETURN MaxVal;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `MaxRemainingBal`() RETURNS int
    READS SQL DATA
BEGIN
	DECLARE MaxVal INT UNSIGNED;
    
    SELECT MAX(remaining_balance)
    INTO MaxVal
    FROM bill;
    
	RETURN MaxVal;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `MinBillAmt`() RETURNS int
    READS SQL DATA
BEGIN
	DECLARE MinVal INT UNSIGNED;
    
    SELECT MIN(bill_amount)
    INTO MinVal
    FROM bill;
    
	RETURN MinVal;
END$$
DELIMITER ;
