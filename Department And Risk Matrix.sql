SELECT
    Department,

    SUM(Risk_Category = 'Critical') AS Critical,

    SUM(Risk_Category = 'High') AS High,

    SUM(Risk_Category = 'Medium') AS Medium,

    SUM(Risk_Category = 'Low') AS Low

FROM employee_attrition

GROUP BY Department

ORDER BY Department;