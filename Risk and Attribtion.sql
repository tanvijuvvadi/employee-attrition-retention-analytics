SELECT
    Risk_Category,
    COUNT(*) AS Employees,
    SUM(Attrition = 'Yes') AS Employees_Left,

    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate,

    ROUND(AVG(Attrition_Risk_Score),2) AS Avg_Risk_Score

FROM employee_attrition

GROUP BY Risk_Category

ORDER BY Avg_Risk_Score DESC;