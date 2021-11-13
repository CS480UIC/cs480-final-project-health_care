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
