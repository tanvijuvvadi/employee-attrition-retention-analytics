SELECT
    Employee_ID,
    Department,
    Job_Role,
    Job_Level,
    Attrition_Risk_Score,
    Risk_Category,

    CASE
        WHEN Risk_Category IN ('Critical','High')
             AND Attrition_Risk_Score >= 75
        THEN 'High Priority'

        WHEN Risk_Category = 'High'
        THEN 'Priority Review'

        WHEN Risk_Category = 'Medium'
        THEN 'Watch'

        ELSE 'Routine Monitoring'
    END AS Retention_Priority

FROM employee_attrition

ORDER BY Attrition_Risk_Score DESC;