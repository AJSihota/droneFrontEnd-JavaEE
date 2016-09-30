CREATE PROCEDURE `removeProductsAt` 
(
	IN v_shelf_id int(4),
    IN v_xPos varchar(30),
    IN v_yPos varchar(30)
)
BEGIN
	SET v_UPC = '1';
    SELECT UPC INTO v_UPC FROM locations
		where shelf_number = v_shelf_id
			AND x_pos = v_xPos
            AND y_pos = v_yPos;
            
	UPDATE locations set UPC = NULL 
		where shelf_number = v_shelf_id
			AND x_pos = v_xPos
            AND y_pos = v_yPos;
	DELETE productLocations WHERE UPC = v_UPC;
END
