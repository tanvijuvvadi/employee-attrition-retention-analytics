SELECT
    Risk_Category,
    COUNT(*) AS Employee_Count,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM employee_attrition),
        2
    ) AS Percentage

FROM employee_attrition

GROUP BY Risk_Category

ORDER BY
    CASE Risk_Category
        WHEN 'Critical' THEN 1
        WHEN 'High' THEN 2
        WHEN 'Medium' THEN 3
        WHEN 'Low' THEN 4
    END;