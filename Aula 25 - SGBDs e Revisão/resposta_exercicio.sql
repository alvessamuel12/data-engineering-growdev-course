-- 2. Quais são os clientes que compraram em mais de um office


-- WITH order_prices as (
--     SELECT o.orderNumber,
--         SUM(od.quantityOrdered * od.priceEach) AS total_order
--     FROM orders o
--         INNER JOIN orderdetails od ON o.orderNumber = od.orderNumber
--     GROUP BY o.orderNumber
-- ),
-- orders_employee as (
--     SELECT o.orderNumber,
--         c.customerNumber,
--         c.salesRepEmployeeNumber
--     FROM orders as o
--         INNER JOIN customers as c
--     WHERE o.customerNumber = c.customerNumber
-- )

-- SELECT
--   op.total_order,
--   e.officeCode,
--   of.city
-- FROM order_prices op
-- INNER JOIN orders_employee oe ON op.orderNumber = oe.orderNumber
-- INNER JOIN employees e ON oe.salesRepEmployeeNumber = e.employeeNumber
-- INNER JOIN offices of ON e.officeCode = of.officeCode
-- GROUP BY of.officeCode;

