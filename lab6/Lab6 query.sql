4.1 Получить id результатов, где имя студента Кирилл Никитин
    
    SELECT result.id_result, student.name FROM result
    LEFT JOIN student ON result.id_student = student.id_student
    WHERE student.name = 'Кирилл Никитин';


4.2 Получить id результатов, где имя студента Кирилл Никитин
    
    SELECT result.id_result FROM result
    RIGHT JOIN student ON result.id_student = student.id_student
    WHERE student.name = 'Кирилл Никитин';
    
4.3 Получить id результатов, где имя студента Кирилл Никитин родившегося 1997-01-01. 

    SELECT result.id_result FROM result
    LEFT JOIN student ON result.id_student = student.id_student
    WHERE student.name = 'Кирилл Никитин' AND student.dob = '1997-01-01';

4.4 Получить id результатов, где имя студента Кирилл Никитин и время выполнения 00:01:03.

    SELECT result.id_result FROM result
    LEFT JOIN student ON result.id_student = student.id_student
    WHERE student.name = 'Кирилл Никитин' AND result.time = '00:01:03'
    
4.5 Получить id результатов, где имя студента Кирилл Никитин, время выполнения больше или равно 00:02:00 и название упражнения Отжимания.

SELECT result.id_result FROM result
    LEFT JOIN student ON result.id_student = student.id_student
LEFT JOIN exercise ON result.id_exercise = exercise.id_exercise
    WHERE student.name = 'Кирилл Никитин' AND result.time >= '00:02:00'
AND exercise.name = 'Отжимания'

4.6 Вывести время выполнения студентов упражнения Отжимания.

SELECT result.time FROM result
WHERE
result.id_result IN (SELECT exercise.id_exercise FROM exercise WHERE exercise.name = 'Отжимания')
    
4.7 Вывести упражнения отсортированные в лексикографическом порядке названий

    SELECT * FROM exercise ORDER BY exercise.name
   
4.8 Вывести упражнения отсортированные в лексикографическом порядке названий и по id

    SELECT * FROM exercise ORDER BY exercise.name, exercise.id_exercise
