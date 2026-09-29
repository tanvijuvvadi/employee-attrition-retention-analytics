SELECT
    Promotion_Status,
    COUNT(*) AS Headcount,

    SUM(Attrition = 'Yes') AS Employees_Left,

    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate,

    ROUND(AVG(Years_Since_Last_Promotion),2)
        AS Avg_Years_Since_Promotion

FROM employee_attrition

GROUP BY Promotion_Status;