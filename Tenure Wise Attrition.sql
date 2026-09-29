SELECT
    CASE
        WHEN Tenure < 1 THEN 'Less than 1 Year'
        WHEN Tenure >= 1 AND Tenure < 3 THEN '1-2 Years'
        WHEN Tenure >= 3 AND Tenure <= 5 THEN '3-5 Years'
        WHEN Tenure > 5 AND Tenure <= 10 THEN '6-10 Years'
        ELSE '10+ Years'
    END AS Tenure_Band,

    COUNT(*) AS Headcount,

    SUM(Attrition = 'Yes') AS Employees_Left,

    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employee_attrition

GROUP BY
    CASE
        WHEN Tenure < 1 THEN 'Less than 1 Year'
        WHEN Tenure >= 1 AND Tenure < 3 THEN '1-2 Years'
        WHEN Tenure >= 3 AND Tenure <= 5 THEN '3-5 Years'
        WHEN Tenure > 5 AND Tenure <= 10 THEN '6-10 Years'
        ELSE '10+ Years'
    END

ORDER BY Attrition_Rate DESC;