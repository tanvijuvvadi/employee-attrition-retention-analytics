SELECT
    Employee_ID,
    Department,
    Job_Role,
    Tenure,
    Years_Since_Last_Promotion,
    Internal_Mobility,
    Training_Hours,
    Engagement_Score,
    Attrition_Risk_Score,
    Risk_Category

FROM employee_attrition

WHERE Years_Since_Last_Promotion >= 4

ORDER BY Attrition_Risk_Score DESC;