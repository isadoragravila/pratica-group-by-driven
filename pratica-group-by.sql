--QUESTÃO 1
SELECT COUNT("endDate") AS "currentExperiences" FROM experiences;

--QUESTÃO 2
SELECT "userId" AS id, COUNT(id) AS educations FROM educations GROUP BY "userId";

--QUESTÃO 3
SELECT u.name AS writer, COUNT(t.id) AS "testimonialCount" FROM testimonials t JOIN users u ON t."writerId" = u.id WHERE u.id = 435 GROUP BY u.name;

--QUESTÃO 4
SELECT MAX(j.salary) AS "maximumSalary", r.name FROM jobs j JOIN roles r ON j."roleId" = r.id WHERE j.active = true GROUP BY r.name ORDER BY "maximumSalary";

--QUESTÃO BÔNUS
SELECT s.name AS school, c.name AS course, COUNT(e.id) AS "studentsCount", e.status AS role FROM educations e JOIN courses c ON e."courseId" = c.id JOIN schools s ON e."schoolId" = s.id WHERE e.status = 'ongoing' OR e.status = 'finished' GROUP BY school, course, role ORDER BY "studentsCount" DESC LIMIT 3;
