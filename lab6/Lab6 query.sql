4.1 �������� id �����������, ��� ��� �������� ������ �������
    
    SELECT result.id_result, student.name FROM result
    LEFT JOIN student ON result.id_student = student.id_student
    WHERE student.name = '������ �������';


4.2 �������� id �����������, ��� ��� �������� ������ �������
    
    SELECT result.id_result FROM result
    RIGHT JOIN student ON result.id_student = student.id_student
    WHERE student.name = '������ �������';
    
4.3 �������� id �����������, ��� ��� �������� ������ ������� ����������� 1997-01-01. 

    SELECT result.id_result FROM result
    LEFT JOIN student ON result.id_student = student.id_student
    WHERE student.name = '������ �������' AND student.dob = '1997-01-01';

4.4 �������� id �����������, ��� ��� �������� ������ ������� � ����� ���������� 00:01:03.

    SELECT result.id_result FROM result
    LEFT JOIN student ON result.id_student = student.id_student
    WHERE student.name = '������ �������' AND result.time = '00:01:03'
    
4.5 �������� id �����������, ��� ��� �������� ������ �������, ����� ���������� ������ ��� ����� 00:02:00 � �������� ���������� ���������.

SELECT result.id_result FROM result
    LEFT JOIN student ON result.id_student = student.id_student
LEFT JOIN exercise ON result.id_exercise = exercise.id_exercise
    WHERE student.name = '������ �������' AND result.time >= '00:02:00'
AND exercise.name = '���������'

4.6 ������� ����� ���������� ��������� ���������� ���������.

SELECT result.time FROM result
WHERE
result.id_result IN (SELECT exercise.id_exercise FROM exercise WHERE exercise.name = '���������')
    
4.7 ������� ���������� ��������������� � ������������������ ������� ��������

    SELECT * FROM exercise ORDER BY exercise.name
   
4.8 ������� ���������� ��������������� � ������������������ ������� �������� � �� id

    SELECT * FROM exercise ORDER BY exercise.name, exercise.id_exercise
