SELECT
    CASE
        WHEN Engagement_Score >= 75 THEN 'Highly Engaged'
        WHEN Engagement_Score >= 50 THEN 'Moderately Engaged'
        ELSE 'Low Engagement'
    END AS Engagement_Category,

    COUNT(*) AS Headcount,

    SUM(Attrition = 'Yes') AS Employees_Left,

    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employee_attrition

GROUP BY
    CASE
        WHEN Engagement_Score >= 75 THEN 'Highly Engaged'
        WHEN Engagement_Score >= 50 THEN 'Moderately Engaged'
        ELSE 'Low Engagement'
    END;