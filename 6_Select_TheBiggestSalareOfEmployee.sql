SELECT employee.first_name + ' ' + employee.last_name AS employee_name, project.name 
FROM  BootcampTask.dbo.employee,  BootcampTask.dbo.project,  BootcampTask.dbo.position
WHERE max_sum_rate < position.rate 
AND position.id = employee.position_id
AND project.project_id = employee.project_id;