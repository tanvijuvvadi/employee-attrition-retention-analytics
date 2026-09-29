SELECT
    Employee_ID,
    Department,
    Job_Role,
    Engagement_Score,
    Job_Satisfaction,
    Work_Life_Balance,
    Overtime,
    Attrition_Risk_Score,
    Risk_Category

FROM employee_attrition

WHERE Engagement_Score < 50
AND Overtime = 'Yes'

ORDER BY Attrition_Risk_Score DESC;