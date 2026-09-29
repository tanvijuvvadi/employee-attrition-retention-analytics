SELECT
    Employee_ID,
    Department,
    Job_Role,
    Job_Satisfaction,
    Engagement_Score,
    Manager_Satisfaction,
    Work_Life_Balance,
    Attrition_Risk_Score,
    Risk_Category

FROM employee_attrition

WHERE Job_Satisfaction <= 2
AND Risk_Category IN ('High','Critical')

ORDER BY Attrition_Risk_Score DESC;