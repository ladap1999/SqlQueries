SELECT employee.first_name + ' ' + employee.last_name AS employee_name,project.name 
FROM BootcampTask.dbo.project,  BootcampTask.dbo.employee
WHERE max_sum_rate < (SELECT SUM(position.rate)
FROM BootcampTask.dbo.position,   BootcampTask.dbo.employee 
WHERE position.id = employee.position_id
AND project.project_id = employee.project_id)
AND  project.project_id = employee.project_id;