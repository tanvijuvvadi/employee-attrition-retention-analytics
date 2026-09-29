SELECT
    CASE
        WHEN Years_Since_Last_Promotion < 1 THEN 'Less than 1 Year'
        WHEN Years_Since_Last_Promotion < 2 THEN '1-2 Years'
        WHEN Years_Since_Last_Promotion < 4 THEN '2-4 Years'
        ELSE '4+ Years'
    END AS Promotion_Gap,

    COUNT(*) AS Headcount,

    SUM(Attrition = 'Yes') AS Employees_Left,

    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employee_attrition

GROUP BY
    CASE
        WHEN Years_Since_Last_Promotion < 1 THEN 'Less than 1 Year'
        WHEN Years_Since_Last_Promotion < 2 THEN '1-2 Years'
        WHEN Years_Since_Last_Promotion < 4 THEN '2-4 Years'
        ELSE '4+ Years'
    END;