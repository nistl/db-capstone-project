-- use littlelemondb;

-- select * from bookings
-- select * from OrdersView;

-- select * from Menu;
-- ALTER TABLE Menu ADD COLUMN MenuName VARCHAR(255) AFTER MenuID;
-- select * from Menu;

-- select * from ordersview;

-- SELECT c.CustomerID, c.Name, o.OrderID, o.TotalCost, m.MenuName , i.CourseName
-- FROM Customers as c
--  JOIN Orders as o ON (c.CustomerID=o.CustomerID)
--  JOIN Menus as m ON (o.MenuID=m.MenuID)
--  JOIN MenuItems as i ON (m.MenuItemsID=i.MenuItemsID);

-- SELECT MenuName FROM Menus WHERE MenuID = ANY (SELECT o.MenuID FROM Orders as o WHERE Quantity > 2);

-- DROP PROCEDURE GetMaxQuantity;
-- CREATE PROCEDURE GetMaxQuantity()
-- SELECT MAX(Quantity) AS "Max Quantity In Order" FROM Orders;

-- CALL GetMaxQuantity;
-- select * from Orders//

-- DELIMITER ;//