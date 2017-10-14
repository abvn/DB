﻿-- 1.查询课程教师为“张老师”的所有课程名称。
SELECT C.CNAME FROM Course C ,Teacher T WHERE C.TNO = T.TNO AND T.TNAME = '张老师'
-- 2.查询所有选修“语文”学生的学号、姓名。
SELECT T.SNO,T.SNAME FROM STUDENT T , COURSE C , SC S WHERE T.SNO = S.SNO AND C.CNO = S.CNO AND C.CNAME = '语文'
-- 3.查询平均成绩大于60分的同学的学号和平均成绩。
SELECT T.SNO,ROUND(AVG(S.SCORE),2) FROM SC S,Student T WHERE T.SNO = S.SNO GROUP BY T.SNO HAVING AVG(S.SCORE) > 60
-- 4.查询所有课程成绩小于60分的同学的学号、姓名。
SELECT T.SNO,T.SNAME FROM SC S,Student T WHERE T.SNO = S.SNO AND S.SCORE < 60
-- 5.查询课程号“001”课程比课程号“002”课程成绩高的所有学生的学号。
SELECT S1.SNO FROM SC S1 JOIN SC S2 ON S1.SNO=S2.SNO WHERE S1.SNO='001' AND S2.SNO='002' AND S1.SCORE>S2.SCORE 