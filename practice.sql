USE mydb;
CREATE TABLE STUDENT (SNO INT(3),SNAME VARCHAR(15),SMARKS INT(3));

DESCRIBE STUDENT;
INSERT INTO STUDENT VALUES(101,'SILU',98);
SELECT *FROM STUDENT;
INSERT INTO STUDENT(SNAME,SNO,SMARKS) VALUES('ATISH',102,99);
INSERT INTO STUDENT VALUES(112,'JONAS',79);
SELECT SNO ROLLNO,SNAME NAME,SMARKS+2 MARKS  FROM STUDENT;
SELECT * FROM STUDENT WHERE SMARKS is null;
SELECT * FROM STUDENT WHERE SMARKS>80 AND SNO>106 ;
SELECT * FROM STUDENT WHERE NOT SNAME='JEMS';
SELECT * FROM STUDENT WHERE SNO NOT BETWEEN 102 AND 107;
SELECT * FROM STUDENT WHERE SNO NOT IN(102,106,108);
SELECT SNAME FROM STUDENT WHERE SNAME  LIKE '___';
DESCRIBE EMPLOYEE;
DROP TABLE EMPLOYEE;
CREATE TABLE EMPLOYEE 
(ENAME VARCHAR(10),EID INT(3));
INSERT INTO EMPLOYEE VALUES('GENE',003);
SELECT * FROM EMPLOYEE;
COMMIT;
ALTER TABLE EMPLOYEE RENAME COLUMN ENAME TO EMPNAME;
SET AUTOCOMMIT=0;
SET SQL_SAFE_UPDATES=0;
DELETE FROM EMPLOYEE;
ROLLBACK;
TRUNCATE TABLE EMPLOYEE;
RENAME TABLE EMPLOYEE TO EMPLOYEEDATABASE;

USE mydb;



SELECT LOWER (SNAME) FROM STUDENT;
SELECT TRIM('Z' FROM 'ZZZORACLEZZ')FROM DUAL;
SELECT SUBSTRING('WELCEOME',2,3);
SELECT CONCAT('TESTING','TRAINING');
ALTER TABLE STUDENT ADD(TEACHER VARCHAR(5));
SELECT SUBJECT,COUNT(*) FROM STUDENT GROUP BY SUBJECT;
UPDATE STUDENT SET TEACHER='EIDDE' WHERE  SMARKS>55 AND SMARKS<70;
SELECT SUBJECT,MAX(SMARKS),MIN(SMARKS) FROM STUDENT GROUP BY SUBJECT;
SELECT SUBJECT,COUNT(*) FROM STUDENT GROUP BY SUBJECT HAVING COUNT(*)>4;
SELECT TEACHER,SUBJECT,COUNT(*) FROM STUDENT GROUP BY TEACHER, SUBJECT HAVING COUNT(*)=2 ;

SELECT SUBJECT,SUM(SMARKS)FROM STUDENT GROUP BY SUBJECT HAVING SUM(SMARKS)>350;
SELECT SUBJECT,SUM(SMARKS)FROM STUDENT GROUP BY SUBJECT;
SELECT SUBJECT,TEACHER,COUNT(*) FROM STUDENT WHERE NOT SUBJECT='ENG' GROUP BY SUBJECT,TEACHER;
SELECT * FROM STUDENT;

CREATE TABLE A(SNAME VARCHAR(5),SID INT(2));
SELECT * FROM A;
INSERT INTO A VALUES('ARAV',05);
CREATE TABLE B(SID INT(2),GRADE VARCHAR(3));
SELECT * FROM B;
INSERT INTO B VALUES(07,'F');
COMMIT;
SELECT SID FROM A UNION ALL SELECT SID FROM B;
SELECT * FROM A FULL JOIN B ON A.SID=B.SID;

SELECT * FROM STUDENT WHERE SMARKS>(SELECT SMARKS FROM STUDENT WHERE SNAME='MAK');
USE mydb;
SET SQL_SAFE_UPDATES=0;
CREATE TABLE DEPARTMENT(D_NAME VARCHAR(5) NOT NULL,D_ID INT(2) UNIQUE,EMP_NAME VARCHAR(5));
DESCRIBE DEPARTMENT;
INSERT INTO DEPARTMENT VALUES('PHY', 2,'YOW');

SELECT * FROM DEPARTMENT;
DROP TABLE DEPARTMENT;
CREATE TABLE DEPARTMENT(D_NAME VARCHAR(5),D_ID INT(2) PRIMARY KEY,EMP_NAME VARCHAR(7));
INSERT INTO DEPARTMENT VALUES('MATH', 2,'MAK');
CREATE TABLE STUDENT1(SNAME VARCHAR(5),
GRADE VARCHAR(5),
S_ID INT(3),
CLASS VARCHAR(3),
PRIMARY KEY(SNAME,S_ID));
DESCRIBE STUDENT1;

USE mydb;
CREATE TABLE SCHOOL(SNAME VARCHAR(5),SNO INT(3));
INSERT INTO SCHOOL VALUES('ARAV',104);
SELECT * FROM SCHOOL;
COMMIT;
CREATE TABLE LIBRARY
(SNO INT(3) ,FOREIGN KEY(SNO) REFERENCES SCHOOL(SNO),
BOOK_NAME VARCHAR(6));
INSERT INTO  LIBRARY VALUES(103,'C');
SELECT * FROM LIBRARY;


DESCRIBE SCHOOL;
DELETE FROM SCHOOL WHERE SNO=103;
DROP TABLE LIBRARY;
CREATE TABLE LIBRARY(SNO INT(3),BOOK_NAME VARCHAR(6),
FOREIGN KEY (SNO) REFERENCES SCHOOL(SNO) ON DELETE CASCADE);
DESCRIBE LIBRARY;
DELETE FROM SCHOOL WHERE SNO=101;
DROP TABLE SCHOOL;
CREATE TABLE SCHOOL(SNAME VARCHAR(7),SNO INT(3),MARKS INT(2) CHECK (MARKS BETWEEN 70 AND 100));
INSERT INTO SCHOOL VALUES('ARAV',102,56);
CREATE TABLE ORDERS (ORDER_NO INT(7),ORDER_DATE DATETIME DEFAULT NOW());
SELECT NOW();
INSERT  INTO ORDERS(ORDER_NO) VALUES(1234);
SELECT * FROM ORDERS;

USE mydb;
DROP TABLE STUDENT;
CREATE TABLE STUDENT(SNO INT(2) PRIMARY KEY AUTO_INCREMENT,
SNAME VARCHAR(5),SMARK INT(3));

DESCRIBE STUDENT;
INSERT INTO STUDENT(SNAME,SMARK) VALUES('SANA',68);
DELETE  FROM STUDENT WHERE SNO=2;
SELECT * FROM STUDENT;
SELECT * FROM STUDENT LIMIT 2,5;
SET SQL_SAFE_UPDATES=0;
DELETE FROM STUDENT;
ALTER TABLE STUDENT AUTO_INCREMENT=100;

CREATE VIEW STUDENT_V1 AS SELECT SNAME,SMARK FROM STUDENT;
SELECT * FROM STUDENT_V1;
CREATE INDEX IDX_STUDENT ON STUDENT(SNAME);











































