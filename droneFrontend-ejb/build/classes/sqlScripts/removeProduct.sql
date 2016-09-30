CREATE PROCEDURE `removeProduct` 
(
	IN v_UPC varchar(12)
)
BEGIN
	DELETE from product where UPC = v_UPC;
END
