CREATE TRIGGER create_vacanciesPM
ON project
AFTER INSERT
AS
INSERT INTO vacancies
VALUES((SELECT id FROM position
WHERE name = 'PM'));