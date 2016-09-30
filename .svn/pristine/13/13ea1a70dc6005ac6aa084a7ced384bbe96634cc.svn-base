CREATE PROCEDURE `addUser` (IN v_username varchar(45), IN v_password varchar(45), OUT errMSG varchar(200))
BEGIN
	DECLARE v_checkUsername varchar(45);
    SELECT username INTO v_checkUsername FROM user WHERE username = v_username;
	IF (v_checkUsername != null) THEN
		SET errMSG = 'Username already exists';
    ELSE
		INSERT into user (username, password, admin)
		VALUES (v_username, v_password, 'F');
	END IF;
END