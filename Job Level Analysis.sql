SELECT
    Job_Level,
    COUNT(*) AS Headcount,

    SUM(Attrition = 'Yes') AS Employees_Left,

    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate,

    ROUND(AVG(Monthly_Salary),2) AS Avg_Salary,

    ROUND(AVG(Engagement_Score),2) AS Avg_Engagement

FROM employee_attrition
GROUP BY Job_Level
ORDER BY Attrition_Rate DESC;