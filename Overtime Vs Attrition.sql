SELECT
    Overtime,
    COUNT(*) AS Headcount,

    SUM(Attrition = 'Yes') AS Employees_Left,

    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate,

    ROUND(AVG(Job_Satisfaction),2) AS Avg_Satisfaction,

    ROUND(AVG(Engagement_Score),2) AS Avg_Engagement,

    ROUND(AVG(Work_Life_Balance),2) AS Avg_WLB,

    ROUND(AVG(Absence_Days),2) AS Avg_Absence

FROM employee_attrition

GROUP BY Overtime;