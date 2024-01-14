-- use littlelemondb;

-- PREPARE GetOrderDetail FROM 'SELECT * FROM Orders WHERE OrderID = ?';
-- set @id = 1;
-- EXECUTE GetOrderDetail USING @id;

-- -- PROCEDURE: CancelOrder --- > delete order based on input (orderid)
-- -- GOAL: CALL CancelOrder(5);

-- DROP PROCEDURE IF EXISTS CancelOrder;
-- DELIMITER //

-- CREATE PROCEDURE CancelOrder(IN id INT)
-- BEGIN
-- 	DELETE FROM Orders WHERE OrderID = id;
-- END
-- //
-- DELIMITER ;

-- CALL CancelOrder(5);
