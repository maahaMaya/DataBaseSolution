CREATE TABLE EmpRankingFunction(EId INT PRIMARY KEY, EName VARCHAR(40), EmpSalary MONEY, EmpDeptNo INT);
INSERT INTO EmpRankingFunction VALUES (10, 'ADAMS', 85000, 1), (20, 'SCOTT', 34000, 2),(30, 'JAMES', 55000, 3), (40, 'WARNER', 12000, 4), (50, 'WARNER G', 34000, 5);
SELECT * FROM EmpRankingFunction;

--RANKING FUNCTION 
--ROW_NUMBER()
SELECT EName, EmpSalary, ROW_NUMBER() OVER(ORDER BY EmpSalary DESC) AS SalaryRank FROM EmpRankingFunction;
--RANK()
SELECT EName, EmpSalary, RANK() OVER(ORDER BY EmpSalary DESC) AS SalaryRank FROM EmpRankingFunction;
--DENSE_RANK()
SELECT EName, EmpSalary, DENSE_RANK() OVER(ORDER BY EmpSalary DESC) AS SalaryRank FROM EmpRankingFunction;

--RANKING FUNCTION with partition
INSERT INTO EmpRankingFunction VALUES (60, 'ADAMS H', 85000, 1), (70, 'SCOTT H', 34000, 2),(80, 'JAMES H', 55000, 3), (90, 'WARNER H', 12000, 2), (100, 'WARNER H', 34000, 3);
SELECT * FROM EmpRankingFunction;
--ROW_NUMBER()
SELECT EName, EmpSalary, EmpDeptNo, ROW_NUMBER() OVER(PARTITION BY EmpDeptNo ORDER BY EmpSalary DESC) AS SalaryRank FROM EmpRankingFunction;
--RANK()
SELECT EName, EmpSalary, EmpDeptNo, ROW_NUMBER() OVER(PARTITION BY EmpDeptNo ORDER BY EmpSalary DESC) AS SalaryRank FROM EmpRankingFunction;
--DENSE_RANK()
SELECT EName, EmpSalary, EmpDeptNo, ROW_NUMBER() OVER(PARTITION BY EmpDeptNo ORDER BY EmpSalary DESC) AS SalaryRank FROM EmpRankingFunction;