-- �����ѯ GROUP BY

-- ��ѯEMPLOYEES����ÿ�����ŵ�ƽ��н�ʺ�ÿ�����Ŷ����ˣ����ղ��ŷ�
-- SELECT e.DEPARTMENT_ID AS "����ID",ROUND(AVG(e.SALARY),2)  AS "ƽ����н",COUNT(e.EMPLOYEE_ID) "��������",E.JOB_ID FROM EMPLOYEES e GROUP BY e.DEPARTMENT_ID,E.JOB_ID;
-- ��ѯEMPLOYEES����ÿ�����ŵ�ƽ��н�ʺ�ÿ�����Ŷ����ˣ����ո�λ��
-- SELECT ROUND(AVG(e.SALARY),2) AS "ƽ����н",COUNT(*) "��������",e.JOB_ID "��λ" FROM EMPLOYEES e GROUP BY e.JOB_ID
-- ��ѯEMPLOYEES����ÿ�����ŵ�ƽ��н�ʺ�ÿ�����Ŷ����ˣ����ո�λ�֣����н�ʸ���15000����
-- SELECT e.DEPARTMENT_ID AS "����ID",ROUND(AVG(e.SALARY),2) AS "ƽ����н",COUNT(*) "��������",e.JOB_ID "��λ",SUM(e.SALARY) "���н��" FROM EMPLOYEES e GROUP BY e.JOB_ID��e.DEPARTMENT_ID HAVING MAX(e.SALARY) > 15000

-- ��ϰ��2 PPT6
-- ��ѯÿ�����ŵĲ��ű�ţ��������ƣ�������������߹��ʣ���͹��ʣ������ܺͣ�ƽ�����ʡ�
-- SELECT d.DEPARTMENT_ID "����ID",d.DEPARTMENT_NAME "��������",COUNT(e.EMPLOYEE_ID) "��������",MAX(e.SALARY) "��߹���",MIN(e.SALARY) "��͹���",ROUND(AVG(e.SALARY),2) "ƽ������" FROM EMPLOYEES e,DEPARTMENTS d WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID  GROUP BY d.DEPARTMENT_ID,d.DEPARTMENT_NAME
-- ��ѯÿ�����ţ�ÿ����λ�Ĳ��ű�ţ��������ƣ���λ���ƣ�������������߹��ʣ���͹��ʣ������ܺͣ�ƽ������
-- SELECT d.DEPARTMENT_ID "����ID",d.DEPARTMENT_NAME "��������",e.JOB_ID "��λ����",COUNT(e.EMPLOYEE_ID) "��������",MAX(e.SALARY) "��߹���",MIN(e.SALARY) "��͹���",SUM(E.SALARY) "�����ܺ�",ROUND(AVG(e.SALARY),2) "ƽ������" FROM EMPLOYEES e,DEPARTMENTS d WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID  GROUP BY e.JOB_ID,d.DEPARTMENT_ID,d.DEPARTMENT_NAME
-- ��ѯÿ������������������������ţ�����������Ҫ�����û�о������Ա��Ϣ
-- SELECT COUNT(e.EMPLOYEE_ID) "���������",m.MANAGER_ID "������",m.FIRST_NAME "��������"  FROM EMPLOYEES e,EMPLOYEES m WHERE e.MANAGER_ID = m.EMPLOYEE_ID GROUP BY m.MANAGER_ID,m.FIRST_NAME