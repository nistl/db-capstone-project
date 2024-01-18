-- DROP PROCEDURE IF EXISTS UpdateBooking;

-- DELIMITER //
-- CREATE PROCEDURE UpdateBooking(IN booking_id INT, IN booking_date DATE)
--  BEGIN
--   DECLARE booking_count INT;
--   SET booking_count  = (SELECT COUNT(BookingID) FROM Bookings WHERE BookingID = booking_id);
--   
--   IF booking_count = 0 THEN
--    SELECT 'There are no bookings...' AS ''; 
--    -- INSERT INTO Bookings (Date, TableNo, CustomerID) VALUES (booking_date, table_no, customer_id);
--   ELSE
--    -- INSERT INTO Bookings (BookingID, CustomerID, Date, TableNo) VALUES (booking_id, customer_id, booking_date, table_no);
--    UPDATE Bookings SET Date = booking_date WHERE BookingID = booking_id;
--    SELECT 'Booking UPDATED' AS "Confirmation";
--    -- SELECT CONCAT('Table ', table_no, ' is already booked - booking cancelled..') AS "Status";
--   END IF;
-- END//
-- DELIMITER ;

-- CALL UpdateBooking(9, '2022-12-17');
-- CALL UpdateBooking(1, '2022-12-17')
select * from Bookings;