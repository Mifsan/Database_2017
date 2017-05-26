1.1 ������ ������� � �������
    SELECT * FROM child LIMIT 1;
    
2.1 ���� ������������� � �����������
    SELECT * FROM child WHERE id_polyclinic IS NULL;
    
2.2 ���� ����������� � �����������
    SELECT * FROM child WHERE id_polyclinic IS NOT NULL;
    
2.3 ���� � ����� �������� ����� 2010-01-01 � 2013-01-01.
    SELECT * FROM child WHERE dob BETWEEN '2010-01-01' AND '2013-01-01';
    
2.4 ��������� ���������� � ���� 1991-05-12 ��� 1994-03-11
    SELECT * FROM employee WHERE dob IN ('1991-05-12', '1994-03-11');

2.5 ���� � ������ ���� �������
    SELECT * FROM child WHERE name='���� �������';
    
2.6 ���� �� � ������ ���� �������
    SELECT * FROM child WHERE name!='���� �������';

3.1 ���� ��������������� �� ����������� ���� ��������
    SELECT * FROM child ORDER BY dob ASC;
    
3.2 ���� ��������������� �� �������� ���� ��������
    SELECT * FROM child ORDER BY dob DESC;
    
3.3 ���� ��������������� �� ����������� ���� �������� � � ���� � ������������������ �������.
    SELECT * FROM child ORDER BY dob, name ASC;
    
3.4 ������ ����� � ����������: ���, ���� ��������, ������������� �����������; ������������� � ������������������ ������� ����.
    SELECT name, dob, id_polyclinic FROM child ORDER BY name ASC;
    
4.1 ���� �������� ������ ��������� �������
    SELECT MIN(dob) FROM child;
    
4.2 ���� �������� ������ ���������� �������.
    SELECT MAX(dob) FROM child;
    
4.3 ������� ���������� ����� ����������.
    SELECT AVG(salary) FROM employee;
    
4.4 ����� ���� �������.
    SELECT SUM(salary) FROM employee;
    
5.1 ��� ���������� ����� �����
    SELECT DISTINCT name FROM child;
    
5.2 ���������� ����� � ����������� �������
    SELECT COUNT(DISTINCT name) FROM child;
    
6.1 ������ ���� ������� ����� ������ �� �������� ������ �����������
    SELECT id_polyclinic, SUM(number) FROM vaccinations_made GROUP BY id_polyclinic;
    
6.2 ������ ���� ������� ����� ������ �� �������� ���������� � ��������������� 1.
    SELECT id_polyclinic, SUM(salary) WHERE id_polyclinic = 1 FROM employee GROUP BY id_polyclinic;

6.3 ������ ����������, ������� ������ �� ����� ������� ������ 18000.
    SELECT id_polyclinic, SUM(salary) FROM employee GROUP BY id_polyclinic HAVING SUM(salary) > 18000;
    
