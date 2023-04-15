SELECT project.name, employee.first_name + ' ' + employee.last_name  AS employee_name,
project.max_sum_rate - (position.rate + equipment.price / 12) AS monthly_difference
FROM project, employee, equipment, position  
WHERE (position.rate + equipment.price/ 12) > project.max_sum_rate
AND employee.id = equipment.user_id 
AND position.id = employee.position_id 
AND project.project_id = employee.project_id;