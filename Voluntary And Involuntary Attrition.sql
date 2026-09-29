SELECT
    Attrition_Type,
    COUNT(*) AS Employees_Left
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY Attrition_Type;