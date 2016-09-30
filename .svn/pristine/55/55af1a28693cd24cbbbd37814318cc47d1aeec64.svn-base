CREATE PROCEDURE `getProductsAt` 
(
	IN v_shelf_id int(4)
)
BEGIN
	SELECT * FROM products 
		WHERE UPC = 
			(SELECT UPC from location where shelf_number = v_shelf_id);
END
