CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    sales_amount DECIMAL(10, 2) NOT NULL
);

INSERT INTO Employees (employee_id, employee_name, department, sales_amount)
VALUES
    (1, 'Rohan Sharma', 'Sales', 5000.00),
    (2, 'Shubham Thakur', 'Sales', 6000.00),
    (3, 'Manali Dev', 'Marketing', 5500.00),
    (4, 'Mohan Shrivastava', 'Marketing', 5200.00),
    (5, 'Om Sharma', 'Human Resources', 5800.00),
    (6, 'Ravi Singh', 'Human Resources', 6500.00);





select *,
dense_rank()over(partition by department order by sales_amount desc),
sum(sales_amount) over(partition by department )
from employees;
