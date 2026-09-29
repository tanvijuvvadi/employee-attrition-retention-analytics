SELECT
    Salary_Band,

    ROUND(AVG(Monthly_Salary),2) AS Avg_Salary,

    ROUND(AVG(Salary_Hike_Pct),2) AS Avg_Hike,

    COUNT(*) AS Headcount,

    SUM(Attrition = 'Yes') AS Employees_Left,

    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employee_attrition

GROUP BY Salary_Band

ORDER BY Attrition_Rate DESC;