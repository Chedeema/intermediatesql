Select * from restaurant_dataset
select * from restaurant_operations_dataset

select  count(restaurant_name) from restaurant_dataset

SELECT * FROM restaurant_dataset 
FULL OUTER JOIN restaurant_operations_dataset
ON restaurant_dataset.restaurant_id=restaurant_operations_dataset.restaurant_id

SELECT * FROM restaurant_dataset 
INNER JOIN restaurant_operations_dataset
ON restaurant_dataset.restaurant_id=restaurant_operations_dataset.restaurant_id

SELECT * FROM restaurant_dataset 
RIGHT OUTER JOIN restaurant_operations_dataset
ON restaurant_dataset.restaurant_id=restaurant_operations_dataset.restaurant_id

SELECT * FROM restaurant_dataset 
LEFT OUTER JOIN restaurant_operations_dataset
ON restaurant_dataset.restaurant_id=restaurant_operations_dataset.restaurant_id

SELECT * FROM restaurant_dataset 
RIGHT  JOIN restaurant_operations_dataset
ON restaurant_dataset.restaurant_id=restaurant_operations_dataset.restaurant_id

SELECT * FROM restaurant_dataset 
LEFT JOIN restaurant_operations_dataset
ON restaurant_dataset.restaurant_id=restaurant_operations_dataset.restaurant_id

SELECT restaurant_dataset.restaurant_id, restaurant_operations_dataset.cuisine_type, restaurant_dataset.menu_item, restaurant_operations_dataset.price 
FROM restaurant_dataset 
INNER JOIN restaurant_operations_dataset
ON restaurant_dataset.restaurant_id=restaurant_operations_dataset.restaurant_id

SELECT restaurant_id, restaurant_name, cuisine_type, price 
FROM restaurant_dataset
UNION
SELECT restaurant_id, restaurant_name, cuisine_type, price 
FROM restaurant_operations_dataset

SELECT restaurant_id, restaurant_name, cuisine_type, price,
CASE
	WHEN price > 30 THEN 'Expensive'
	ELSE 'Cheap'
END
AS PriceStatus
FROM restaurant_dataset

SELECT restaurant_id, restaurant_name, cuisine_type, price,
CASE
	WHEN price > 30 THEN 'Expensive'
	WHEN price BETWEEN 20 AND 30 THEN 'AFFORDABLE'
	ELSE 'Cheap'
END
AS PriceStatus
FROM restaurant_dataset

SELECT * FROM restaurant_dataset

SELECT restaurant_id, restaurant_name, cuisine_type,menu_item, price,
CASE
	WHEN menu_item='Akara' THEN price +(price *.08)
	WHEN menu_item='Moi Moi' THEN price +(price *.05)
	WHEN menu_item='Fried Rice' THEN price +(price *.03)
	ELSE price + (price * 02)
END
AS PriceAdjustment
FROM restaurant_dataset

SELECT restaurant_dataset.menu_item, COUNT (restaurant_dataset.menu_item)
FROM restaurant_dataset 
JOIN restaurant_operations_dataset
ON restaurant_dataset.restaurant_id=restaurant_operations_dataset.restaurant_id
GROUP BY restaurant_dataset.menu_item
HAVING COUNT (restaurant_dataset.menu_item)<= 15

SELECT * FROM SqlTutorial.dbo.restaurant_dataset

UPDATE SqlTutorial.dbo.restaurant_dataset
SET location='kuje'
WHERE menu_item= 'Pounded Yam'

DELETE FROM SqlTutorial.dbo.restaurant_dataset
WHERE restaurant_id=2

ALTER TABLE SqlTutorial.dbo.restaurant_dataset
ADD drink_menu VARCHAR(50);

UPDATE SqlTutorial.dbo.restaurant_dataset
SET drink_menu='coke'
WHERE menu_item IN ('Fried Rice', 'Akara', 'Moi Moi')

SELECT * FROM restaurant_dataset

ALTER TABLE restaurant_dataset
DROP COLUMN website; 