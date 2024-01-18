-- DROP PROCEDURE IF EXISTS AddBooking;

-- DELIMITER //
-- CREATE PROCEDURE AddBooking(IN booking_id INT, IN customer_id INT, IN table_no INT, IN booking_date DATE)
-- -- CREATE PROCEDURE AddValidBooking()
--  BEGIN
--   DECLARE booking_count INT;
--   SET booking_count  = (SELECT COUNT(BookingID) FROM Bookings WHERE Date = booking_date AND TableNo = table_no);
--   
--   IF booking_count = 0 THEN
--    -- SELECT 'There are no bookings...' AS '';
--    -- INSERT INTO Bookings (Date, TableNo, CustomerID) VALUES (booking_date, table_no, customer_id);
--    INSERT INTO Bookings (BookingID, CustomerID, Date, TableNo) VALUES (booking_id, customer_id, booking_date, table_no);
--    SELECT 'New Booking Added' AS "Confirmation";
--   ELSE
--    SELECT CONCAT('Table ', table_no, ' is already booked - booking cancelled..') AS "Status";
--   END IF;
-- END//
-- DELIMITER ;

CALL AddBooking(9,3,4, "2022-12-30");