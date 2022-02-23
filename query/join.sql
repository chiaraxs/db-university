-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `degrees`.`name`, `students`.`surname`, `students`.`name`
FROM `degrees`
INNER JOIN `students`
    ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia'
ORDER BY `students`.`surname`, `students`.`name`;

-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `departments`.`name`, `degrees`.`name`
FROM `departments`
INNER JOIN `degrees`
    ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'
ORDER BY `degrees`.`name`;


-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)


-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il 
-- relativo dipartimento, in ordine alfabetico per cognome e nome --


-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti


-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)


-- 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per
-- superare ciascuno dei suoi esami