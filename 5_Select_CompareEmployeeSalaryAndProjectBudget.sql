SELECT project.name 
FROM  BootcampTask.dbo.project 
WHERE max_sum_rate < (SELECT SUM(position.rate)
FROM  BootcampTask.dbo.position,  BootcampTask.dbo.employee 
WHERE position.id = employee.position_id
AND project.project_id = employee.project_id);
