CREATE PROCEDURE `removeTask` 
(
	IN v_task_id int(30)
)
BEGIN
	DELETE from task WHERE task_id = v_task_id;
END
