CREATE PROCEDURE `toggleAdmin` (IN v_username varchar(45))
BEGIN
	DECLARE v_isAdmin varchar(1);
    SELECT admin INTO v_isAdmin from user where username = v_username;
    
    if (v_isAdmin = 'T') THEN
		update user set admin = 'F' where username = v_username;
	else
		update user set admin = 'T' where username = v_username;
	END IF;
END