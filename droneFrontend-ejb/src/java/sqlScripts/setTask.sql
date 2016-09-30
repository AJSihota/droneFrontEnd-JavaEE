CREATE PROCEDURE `setTask` 
(
	IN v_UPC varchar(12),
    IN v_shelf_id varchar(30)
)
BEGIN
	INSERT INTO task (UPC, shelf_id)
		VALUES (v_UPC, v_shelf_id);
END
