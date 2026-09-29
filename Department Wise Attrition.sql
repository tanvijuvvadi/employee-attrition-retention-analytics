SELECT
    Department,
    COUNT(*) AS Headcount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,

    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate,

    ROUND(AVG(Engagement_Score),2) AS Avg_Engagement,

    ROUND(AVG(Tenure),2) AS Avg_Tenure

FROM employee_attrition
GROUP BY Department
ORDER BY Attrition_Rate DESC;