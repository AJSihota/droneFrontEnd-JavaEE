CREATE PROCEDURE `setTaskStatus` 
(
	IN v_task_id int(30),
    IN v_status int(1)
)
BEGIN
	UPDATE task SET status = v_status WHERE task_id = v_task_id;
END
