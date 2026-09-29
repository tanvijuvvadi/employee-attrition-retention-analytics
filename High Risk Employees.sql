SELECT
    Employee_ID,
    Department,
    Job_Role,
    Job_Level,
    Tenure,
    Monthly_Salary,
    Job_Satisfaction,
    Manager_Satisfaction,
    Engagement_Score,
    Overtime,
    Years_Since_Last_Promotion,
    Attrition_Risk_Score,
    Risk_Category

FROM employee_attrition

WHERE Risk_Category IN ('High','Critical')

ORDER BY Attrition_Risk_Score DESC;