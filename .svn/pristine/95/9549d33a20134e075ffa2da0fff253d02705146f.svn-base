CREATE PROCEDURE `addProduct` 
	(	IN v_UPC varchar(12), 
		IN v_supplierID varchar(9), 
        IN v_name varchar(60),
        IN v_profile varchar(256)
	)
BEGIN
	INSERT INTO product
		(UPC, supplier_id, name, profile)
	VALUES
		(v_UPC, v_supplierID, v_name, v_profile);
END
