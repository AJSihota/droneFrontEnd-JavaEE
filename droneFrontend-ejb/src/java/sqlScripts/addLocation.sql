CREATE PROCEDURE `addLocation` 
(	IN v_xPos varchar(30), 
	IN v_yPos varchar(30), 
	IN v_shelf_number int(4)
)
BEGIN
	INSERT INTO location
		(x_pos, y_pos, v_shelf_number)
	VALUES
		(v_xPos, v_yPos, v_shelf_number);
END
