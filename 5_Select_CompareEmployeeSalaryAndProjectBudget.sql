SELECT project.name 
FROM project 
WHERE max_sum_rate < (SELECT SUM(position.rate)
FROM position, employee 
WHERE position.id = employee.position_id
AND project.project_id = employee.project_id);
