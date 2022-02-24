-- 1. Contare quanti iscritti ci sono stati ogni anno -- 
SELECT COUNT(`id`) AS 'students', YEAR(`enrolment_date`) AS 'enrolment_date'
FROM `students` 
GROUP BY YEAR(`enrolment_date`);


-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio --
-- alternativa con office_number --
SELECT COUNT(`id`) AS 'Teachers x office', `office_number`
FROM `teachers` 
GROUP BY (`office_number`)
HAVING COUNT(id) > 1;

-- alternativa con office_address --
SELECT COUNT(`id`) AS 'Teachers x office', `office_address`
FROM `teachers` 
GROUP BY (`office_address`)
HAVING COUNT(id) > 1;


-- 3. Calcolare la media dei voti di ogni appello d'esame --
SELECT ROUND (AVG(`vote`))  AS 'average_vote', `exam_id`
FROM `exam_student`
GROUP BY (`exam_id`);


-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento -- 
SELECT COUNT(`id`) AS 'total_courses_x_department', `department_id`
FROM `degrees`
GROUP BY `department_id`;