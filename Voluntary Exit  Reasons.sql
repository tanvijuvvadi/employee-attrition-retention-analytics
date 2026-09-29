SELECT
    Department,
    Exit_Reason,
    COUNT(*) AS Employees_Left

FROM employee_attrition

WHERE Attrition = 'Yes'

GROUP BY
    Department,
    Exit_Reason

ORDER BY
    Department,
    Employees_Left DESC;