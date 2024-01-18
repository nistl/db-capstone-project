-- select * from customers;
-- select * from bookings;

-- DROP PROCEDURE IF EXISTS CheckBooking;
-- DELIMITER //
-- CREATE PROCEDURE CheckBooking(IN book_date DATE, IN table_no INT)
-- BEGIN
-- 	SELECT * FROM Bookings WHERE Date = book_date AND TableNo = table_no;
-- END
-- //
-- DELIMITER ;


call checkbooking("2020-01-01", 1);