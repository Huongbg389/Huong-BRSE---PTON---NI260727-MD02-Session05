USE hocdatabase;

CREATE TABLE Employees (
    Empid INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(12,2)
);

INSERT INTO Employees(Empid, FullName, Department, Salary)
VALUES
(1, 'Nguyen Van Anh', 'IT', 15000000),
(2, 'Phan Thi Binh', 'IT', 18000000),
(3, 'Nguyen Thi Xuan', 'HR', 10000000),
(4, 'Pham Thi Tam', 'IT', 12000000),
(5, 'Pham Huu Dung', 'IT', 20000000);
SELECT * FROM Employees;

-- Hiển thị số nhân viên
SELECT Department, COUNT(*) AS SoNhanVien
FROM Employees
GROUP BY Department;

-- Tính lương trung bình của từng phòng ban
SELECT Department, AVG(Salary) AS LuongTrungBinh
FROM Employees
GROUP BY Department;

-- Chỉ hiển thị phòng bạn có trên 3 nhân viên
SELECT Department, COUNT(*) AS SoNhanVien
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 3;

-- Chỉ hiển thị phòng ban có lương trung bình lớn hơn 12.000.000
SELECT Department, AVG(Salary) AS LuongTrungBinh
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 12000000;



