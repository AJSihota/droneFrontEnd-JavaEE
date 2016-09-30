CREATE PROCEDURE `checkUser` (IN v_username varchar(45), IN v_password varchar(45))
BEGIN
	SELECT * FROM user WHERE username = v_username AND password = v_password;
END