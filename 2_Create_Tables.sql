CREATE TABLE BootcampTask.dbo.project(
project_id int NOT NULL IDENTITY(1,1),
name nvarchar(50) NOT NULL,
max_sum_rate int NOT NULL,
PRIMARY KEY(project_id));

CREATE TABLE BootcampTask.dbo.position(
id int NOT NULL IDENTITY(1,1),
name nvarchar(50) NOT NULL,
rate int NOT NULL,
PRIMARY KEY(id));

CREATE TABLE BootcampTask.dbo.employee(
id int NOT NULL IDENTITY(1,1),
first_name nvarchar(50) NOT NULL,
last_name nvarchar(50) NOT NULL,
position_id int,
project_id int,
CONSTRAINT PK_employeeID PRIMARY KEY (id), 
CONSTRAINT FK_employee_position FOREIGN KEY (position_id)
REFERENCES position (id)
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT FK_employee_project FOREIGN KEY (project_id)
REFERENCES project (project_id)
ON DELETE CASCADE
ON UPDATE CASCADE);

CREATE TABLE BootcampTask.dbo.equipment(
id int NOT NULL IDENTITY(1,1),
name nvarchar(50) NOT NULL,
price int NOT NULL,
user_id int,
CONSTRAINT PK_equipmentID PRIMARY KEY (id), 
CONSTRAINT FK_equipment_employee FOREIGN KEY (user_id)
REFERENCES employee (id)
ON DELETE CASCADE
ON UPDATE CASCADE);

CREATE TABLE BootcampTask.dbo.vacancies(
id int NOT NULL IDENTITY(1,1),
position_id int,
CONSTRAINT PK_vacanciesID PRIMARY KEY (id), 
CONSTRAINT FK_vacancies_position FOREIGN KEY (position_id)
REFERENCES position (id)
ON DELETE CASCADE
ON UPDATE CASCADE);