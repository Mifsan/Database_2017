1.1 Первый ребенок в таблице
    SELECT * FROM child LIMIT 1;
    
2.1 Дети неприписанные к поликлинике
    SELECT * FROM child WHERE id_polyclinic IS NULL;
    
2.2 Дети приписанные к поликлинике
    SELECT * FROM child WHERE id_polyclinic IS NOT NULL;
    
2.3 Дети с датой рождения между 2010-01-01 и 2013-01-01.
    SELECT * FROM child WHERE dob BETWEEN '2010-01-01' AND '2013-01-01';
    
2.4 Работники родившиеся в дату 1991-05-12 или 1994-03-11
    SELECT * FROM employee WHERE dob IN ('1991-05-12', '1994-03-11');

2.5 Дети с именем Иван Лихачев
    SELECT * FROM child WHERE name='Иван Лихачев';
    
2.6 Дети не с именем Иван Лихачев
    SELECT * FROM child WHERE name!='Иван Лихачев';

3.1 Дети отсортированные по возрастанию даты рождения
    SELECT * FROM child ORDER BY dob ASC;
    
3.2 Дети отсортированные по убыванию даты рождения
    SELECT * FROM child ORDER BY dob DESC;
    
3.3 Дети отсортированные по возрастанию даты рождения и в имен в лексикографическом порядке.
    SELECT * FROM child ORDER BY dob, name ASC;
    
3.4 Список детей с атрибутами: имя, дата рождения, идентификатор поликлиники; отсортировано в лексикографическом порядке имен.
    SELECT name, dob, id_polyclinic FROM child ORDER BY name ASC;
    
4.1 Дата рождения самого взрослого ребенка
    SELECT MIN(dob) FROM child;
    
4.2 Дата рождения самого маленького ребенка.
    SELECT MAX(dob) FROM child;
    
4.3 Средняя заработная плата работников.
    SELECT AVG(salary) FROM employee;
    
4.4 Сумма всех зарплат.
    SELECT SUM(salary) FROM employee;
    
5.1 Все уникальные имена детей
    SELECT DISTINCT name FROM child;
    
5.2 Количество детей с уникальными именами
    SELECT COUNT(DISTINCT name) FROM child;
    
6.1 Список того сколько денег тратит на зарплату каждая поликлиника
    SELECT id_polyclinic, SUM(number) FROM vaccinations_made GROUP BY id_polyclinic;
    
6.2 Список того сколько денег тратит на зарплату полклиника с идентификатором 1.
    SELECT id_polyclinic, SUM(salary) WHERE id_polyclinic = 1 FROM employee GROUP BY id_polyclinic;

6.3 Список поликлиник, которые тратят на своих рабочих больше 18000.
    SELECT id_polyclinic, SUM(salary) FROM employee GROUP BY id_polyclinic HAVING SUM(salary) > 18000;
    
