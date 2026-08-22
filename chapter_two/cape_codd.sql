SELECT SKU, SKU_Description FROM INVENTORY;

SELECT SKU_Description, SKU FROM INVENTORY;

SELECT WarehouseID FROM INVENTORY;

SELECT DISTINCT WarehouseID FROM INVENTORY;

SELECT WarehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder FROM INVENTORY;

SELECT QuantityOnHand FROM INVENTORY;

SELECT SKU, SKU_Description FROM INVENTORY WHERE QuantityOnHand > 0;

SELECT SKU, SKU_Description FROM INVENTORY WHERE QuantityOnHand = 0;

SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0
ORDER BY WarehouseID ASC;

SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand > 0
ORDER BY WarehouseID DESC, SKU ASC;

SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0
  AND QuantityOnOrder > 0
ORDER BY WarehouseID DESC, SKU ASC;

SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand > 1
  AND QuantityOnHand < 10;

SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand BETWEEN 2 AND 9;

SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE 'Half-Dome %';

SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE '%Climb%';

SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE '__d%';

SELECT COUNT(QuantityOnHand) AS TotalCount,
       SUM(QuantityOnHand) AS TotalItems,
       AVG(QuantityOnHand) AS AverageItems,
       MIN(QuantityOnHand) AS MinimumItems,
       MAX(QuantityOnHand) AS MaximumItems
FROM INVENTORY;

SELECT WarehouseID,
       SUM(QuantityOnHand) AS TotalItemsOnHand
FROM INVENTORY
GROUP BY WarehouseID
ORDER BY TotalItemsOnHand DESC;

SELECT WarehouseID,
       SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM INVENTORY
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
ORDER BY TotalItemsOnHandLT3 DESC;

SELECT WarehouseID,
       SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM INVENTORY
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
HAVING COUNT(SKU) < 2
ORDER BY TotalItemsOnHandLT3 DESC;