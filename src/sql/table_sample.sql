-- emp 테이블 생성
DROP TABLE emp;

CREATE TABLE emp
(
    empno    NUMBER(4) NOT NULL, -- 사원번호
    ENAME    VARCHAR(2),         -- 사원명
    JOB      VARCHAR2(9),        -- 직무
    MGR      NUMBER(4),          -- 직속상관
    HIREDATE DATE,               -- 입사일
    SAL      NUMBER(7, 2),       -- 급여
    COMM     NUMBER(7, 2),       -- 수당
    DEPTNO   NUMBER(2)           -- 부서번호
);
COMMIT;

-- EMP 테이블 ename 컬럼 수정
ALTER TABLE emp
    MODIFY ename VARCHAR(10);
COMMIT;

-- EMP 테이블 데이터(행) 삽입
INSERT INTO emp
VALUES (7369, 'SMITH', 'CLERK', 7902, TO_DATE('17-12-1980', 'dd-mm-yyyy'), 800, NULL, 20);

-- EMP 테이블 데이터 삽입
INSERT INTO EMP
VALUES (7369, 'SMITH', 'CLERK', 7902, TO_DATE('17-12-1980', 'DD-MM-YYYY'), 800, NULL, 20);
INSERT INTO EMP
VALUES (7499, 'ALLEN', 'SALESMAN', 7698, TO_DATE('20-2-1981', 'DD-MM-YYYY'), 1600, 300, 30);
INSERT INTO EMP
VALUES (7521, 'WARD', 'SALESMAN', 7698, TO_DATE('22-2-1981', 'DD-MM-YYYY'), 1250, 500, 30);
INSERT INTO EMP
VALUES (7566, 'JONES', 'MANAGER', 7839, TO_DATE('2-4-1981', 'DD-MM-YYYY'), 2975, NULL, 20);
INSERT INTO EMP
VALUES (7654, 'MARTIN', 'SALESMAN', 7698, TO_DATE('28-9-1981', 'DD-MM-YYYY'), 1250, 1400, 30);
INSERT INTO EMP
VALUES (7698, 'BLAKE', 'MANAGER', 7839, TO_DATE('1-5-1981', 'DD-MM-YYYY'), 2850, NULL, 30);
INSERT INTO EMP
VALUES (7782, 'CLARK', 'MANAGER', 7839, TO_DATE('9-6-1981', 'DD-MM-YYYY'), 2450, NULL, 10);
INSERT INTO EMP
VALUES (7788, 'SCOTT', 'ANALYST', 7566, TO_DATE('13-07-1987', 'DD-MM-YYYY'), 3000, NULL, 20);
INSERT INTO EMP
VALUES (7839, 'KING', 'PRESIDENT', NULL, TO_DATE('17-11-1981', 'DD-MM-YYYY'), 5000, NULL, 10);
INSERT INTO EMP
VALUES (7844, 'TURNER', 'SALESMAN', 7698, TO_DATE('8-9-1981', 'DD-MM-YYYY'), 1500, 0, 30);
INSERT INTO EMP
VALUES (7876, 'ADAMS', 'CLERK', 7788, TO_DATE('13-7-1987', 'DD-MM-YYYY'), 11000, NULL, 20);
INSERT INTO EMP
VALUES (7900, 'JAMES', 'CLERK', 7698, TO_DATE('3-12-1981', 'DD-MM-YYYY'), 950, NULL, 30);
INSERT INTO EMP
VALUES (7902, 'FORD', 'ANALYST', 7566, TO_DATE('3-12-1981', 'DD-MM-YYYY'), 3000, NULL, 20);
INSERT INTO EMP
VALUES (7934, 'MILLER', 'CLERK', 7782, TO_DATE('23-1-1982', 'DD-MM-YYYY'), 1300, NULL, 10);

-- DEPT 테이블 생성
CREATE TABLE DEPT
(
    DEPTNO NUMBER(2),   -- 부서번호
    DNAME  VARCHAR(4),  -- 부서명
    LOC    VARCHAR2(13) -- 지역
);
COMMIT;
DROP TABLE DEPT;

-- DEPT 테이블 DNAME 컬럼 변경
ALTER TABLE DEPT
    MODIFY DNAME VARCHAR2(10);
COMMIT;

-- DEPT 데이터 추가
INSERT INTO dept
VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO dept
VALUES (20, 'RESEARCH', 'NEW YORK');
INSERT INTO dept
VALUES (30, 'SELES', 'CHICAGO');
INSERT INTO dept
VALUES (40, 'OPERATIONS', 'BOSTON');

-- BONUS 테이블 생성
CREATE TABLE BONUS
(
    ENAME VARCHAR2(10),
    JOB   VARCHAR2(9),
    SAL   NUMBER,
    COMM  NUMBER
);
COMMIT;

-- SALGRADE 테이블 생성
CREATE TABLE SALGRADE
(
    GRADE NUMBER,
    LOSAL NUMBER,
    HISAL NUMBER
);
COMMIT;

-- SALGRADE 데이터 생성
INSERT INTO SALGRADE s
VALUES (1, 700, 1200);
INSERT INTO SALGRADE s
VALUES (2, 1201, 1400);
INSERT INTO SALGRADE s
VALUES (3, 1401, 2000);
INSERT INTO SALGRADE s
VALUES (4, 2001, 3000);
INSERT INTO SALGRADE s
VALUES (5, 3001, 9999);

-- DEPT_TMP 테이블 생성
CREATE TABLE DEPT_TMP AS
SELECT *
FROM DEPT D;

-- EMP 데이터 복사해서 EMP_TMP 테이블 생성
CREATE TABLE EMP_TMP AS
SELECT *
FROM EMP;

SELECT *
FROM EMP_TMP;

-- DEPT 데이터 복사해서 DEPT_TCL 테이블 생성
CREATE TABLE DEPT_TCL
AS
SELECT *
FROM DEPT;

--
CREATE TABLE DEPT_SEQ
AS
SELECT *
FROM DEPT
WHERE 1 != 1;

-- EMP_DDL 테이블 생성
CREATE TABLE EMP_DDL
(
    EMPNO    NUMBER(4),
    ENAME    VARCHAR2(10),
    JOB      VARCHAR2(9),
    MGR      NUMBER(4),
    HIREDATE DATE,
    SAL      NUMBER(7, 2),
    COMM     NUMBER(7, 2),
    DEPNO    NUMBER(2)
);

-- DEPTNO가 30인 행만 모아 EMP_DDL1 테이블 생성
CREATE TABLE EMP_DDL1
AS
SELECT *
FROM EMP
WHERE DEPTNO = 30;

-- EMP_DDL2 테이블 생성
-- WHERE 절의 조건이 "1 != 1"로 설정
-- 이 조건은 항상 거짓
-- 실제로는 "EMP_DDL2" 테이블에 어떠한 행도 복사되지 않을 것
CREATE TABLE EMP_DDL2
AS
SELECT *
FROM EMP
WHERE 1 != 1;

-- TBL_EX 테이블 생성
CREATE TABLE TBL_EX
(
    LOGIN_ID VARCHAR2(20) NOT NULL,
    LOGIN_PW VARCHAR2(20) NOT NULL,
    TEL      VARCHAR2(20)
);

-- TBL_UNIQUE 테이블 생성
CREATE TABLE TBL_UNIQUE
(
    LOGIN_ID VARCHAR2(20) UNIQUE,
    LOGIN_PW VARCHAR2(20) NOT NULL,
    TEL      VARCHAR2(20)
);

-- TBL_PRIMARY 테이블 생성
CREATE TABLE TBL_PRIMARY
(
    LOGIN_ID VARCHAR2(20) PRIMARY KEY,
    LOGIN_PW VARCHAR2(20) NOT NULL,
    TEL      VARCHAR2(20)
);

-- TBL_CHECK 테이블 생성
CREATE TABLE TBL_CHECK
(
    LOGIN_ID VARCHAR2(20)
        CONSTRAINT TBLCK_LOGINID_PK PRIMARY KEY,
    LOGIN_PW VARCHAR2(20)
        CONSTRAINT TBLCK_LOGINPW_CHECK CHECK (LENGTH(LOGIN_PW) > 3),
    TEL      VARCHAR2(20)
);
