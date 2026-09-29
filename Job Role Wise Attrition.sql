SELECT
    Job_Role,
    COUNT(*) AS Headcount,

    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,

    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate,

    ROUND(AVG(Monthly_Salary),2) AS Avg_Salary,

    ROUND(AVG(Job_Satisfaction),2) AS Avg_Satisfaction,

    ROUND(AVG(Engagement_Score),2) AS Avg_Engagement

FROM employee_attrition
GROUP BY Job_Role
ORDER BY Attrition_Rate DESC;