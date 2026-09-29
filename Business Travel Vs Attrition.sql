SELECT
    Business_Travel,

    COUNT(*) AS Headcount,

    SUM(Attrition = 'Yes') AS Employees_Left,

    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate,

    ROUND(AVG(Work_Life_Balance),2)
        AS Avg_WLB

FROM employee_attrition

GROUP BY Business_Travel

ORDER BY Attrition_Rate DESC;