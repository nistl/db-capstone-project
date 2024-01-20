-- select * from customers;
-- select * from bookings;

-- PREPARE GetOrderDetails FROM "SELECT OrderID, Quantity, TotalCost FROM Orders WHERE OrderID = ?";

set @id = 1;
EXECUTE GetOrderDetails USING @id;
