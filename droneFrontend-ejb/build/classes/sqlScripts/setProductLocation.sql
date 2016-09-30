CREATE PROCEDURE `setProductLocation` 
	(IN v_UPC varchar(12), 
    IN v_xPos varchar(30),
    IN v_yPos varchar(30))

BEGIN
    DECLARE v_location_id int(9);

	SELECT location_id INTO v_location_id FROM location 
			WHERE x_pos = v_xPos AND y_pos = v_yPos;
            
	UPDATE location SET UPC = v_UPC;
    INSERT INTO productlocations (location_id, UPC)
		VALUES (v_location_id, v_UPC)
		ON DUPLICATE KEY UPDATE UPC = v_UPC;
END
