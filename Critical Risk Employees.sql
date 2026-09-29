SELECT
    Employee_ID,
    Department,
    Job_Role,
    Tenure,
    Engagement_Score,
    Job_Satisfaction,
    Manager_Satisfaction,
    Overtime,
    Years_Since_Last_Promotion,
    Attrition_Risk_Score

FROM employee_attrition

WHERE Risk_Category = 'Critical'

ORDER BY Attrition_Risk_Score DESC;