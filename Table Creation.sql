DROP TABLE IF EXISTS employee_attrition;

CREATE TABLE employee_attrition (

    Employee_ID VARCHAR(10) PRIMARY KEY,

    Department VARCHAR(50) NOT NULL,

    Job_Role VARCHAR(100) NOT NULL,

    Job_Level VARCHAR(10) NOT NULL,

    Location VARCHAR(50) NOT NULL,

    Age_Band VARCHAR(20),

    Tenure DECIMAL(4,1),

    Years_in_Current_Role DECIMAL(4,1),

    Years_Since_Last_Promotion DECIMAL(4,1),

    Monthly_Salary DECIMAL(10,2),

    Salary_Band VARCHAR(20),

    Salary_Hike_Pct DECIMAL(5,2),

    Performance_Rating INT,

    Job_Satisfaction INT,

    Work_Life_Balance INT,

    Manager_Satisfaction INT,

    Engagement_Score INT,

    Training_Hours INT,

    Overtime VARCHAR(5),

    Business_Travel VARCHAR(20),

    Absence_Days INT,

    Promotion_Status VARCHAR(5),

    Work_Arrangement VARCHAR(20),

    Distance_From_Office INT,

    Internal_Mobility INT,

    Recognition_Received INT,

    Attrition VARCHAR(5),

    Attrition_Type VARCHAR(20),

    Exit_Reason VARCHAR(100),

    Attrition_Risk_Score INT,

    Risk_Category VARCHAR(20)
);