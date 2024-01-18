-- select * from Bookings;

-- DELIMITER //
-- CREATE PROCEDURE AddValidBooking(IN book_date DATE, IN table_no INT)
-- BEGIN
--  DECLARE @check INT;

--   @booking_check = 1;
-- END//

-- drop procedure if exists test;
-- DROP PROCEDURE IF EXISTS AddValidBooking;

DELIMITER //
CREATE PROCEDURE AddValidBooking(IN booking_date DATE, IN table_no INT, IN customer_id INT)
-- CREATE PROCEDURE AddValidBooking()
 BEGIN
  DECLARE booking_count INT;
  SET booking_count  = (SELECT COUNT(BookingID) FROM Bookings WHERE Date = booking_date AND TableNo = table_no);
  
  IF booking_count = 0 THEN
   -- SELECT 'There are no bookings...' AS '';
   INSERT INTO Bookings (Date, TableNo, CustomerID) VALUES (booking_date, table_no, customer_id); -- issue .. customer# not provided...
   SELECT 'Successfully added new entry into bookings' AS "Status";
  ELSE
   SELECT CONCAT('Table ', table_no, ' is already booked - booking cancelled..') AS "Status";
  END IF;
END//
DELIMITER ;


-- call test;