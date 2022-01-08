USE COMMERCE;
-- INNER JOIN
SELECT P.*,S.*
FROM PRODUCTS as P, Suppliers as S
WHERE P.SupplierId = S.Id;

use Commerce;

-- Implicit INNER JOIN
SELECT P.*, S.*
FROM Products P, Suppliers S
WHERE P.SupplierId = S.Id;

-- INNER JOIN
SELECT P.*, S.*
FROM Products P
JOIN Suppliers S ON S.Id = P.SupplierId; 
-- WHERE P.SupplierId = S.Id;

-- LEFT OUTER JOIN
SELECT  S.*, P.*
FROM Suppliers S
LEFT JOIN Products P ON S.Id = P.SupplierId; 
-- WHERE P.SupplierId = S.Id;

SELECT * 
FROM Suppliers;
