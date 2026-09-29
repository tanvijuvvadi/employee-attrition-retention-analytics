SELECT
    Job_Satisfaction,
    COUNT(*) AS Headcount,
    SUM(Attrition = 'Yes') AS Employees_Left,

    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employee_attrition

GROUP BY Job_Satisfaction

ORDER BY Job_Satisfaction;